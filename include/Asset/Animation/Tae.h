/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce     -   C++
        nyxojaele      -   010 Editor template for TAE files (GitHub: https://github.com/nyxojaele )
        RavagerChris   -   Reverse-engineering Dark Souls Time-Action-Event (TAE) files (GitHub: https://github.com/christopherfavo )


    Asset/Animation/Tae.h

    References:
        https://github.com/christopherfavo/time-action-event-editor/blob/master/DS-TAE%20Editor/DS-TAE%20Editor/TAE.cs
        https://www.youtube.com/watch?v=ZjWAG71t1R8

    nyxojaele's 010 Editor templates:
        https://dl.dropboxusercontent.com/content_link/wd8jBOsCqMIaO2ibj1ICwHjyIZY72AQjkSK7YFLSTXFIlxckp1I1or3w9oYj5zDz/file?dl=1

*/
#pragma once

#ifndef DS1_FILE_LIB_TAE_ANIMATION_FILE_H_
    #define DS1_FILE_LIB_TAE_ANIMATION_FILE_H_


#include "Windows.h"
#include "FileUtil.h"
#include <map>
#include <vector>
#include <fstream>
#include "Archive/Header.h"
#include "sp/memory/aob_scan.h"



// ??
enum TaeAnimFileStructType {
    TAEAFST_NAMED = 0,
    TAEAFST_UNNAMED = 1
};



// For reading and manipulating TAE animation data files (*.tae)
typedef class TimeActionEventFile {
private:
    // Maps animation IDs to animation data indices
    std::map<uint32_t, int> id_to_index = std::map<uint32_t, int>();
    bool initialized = false;

public:

    const uint32_t magic32_0_const = 0x20454154;  // "TAE "
    const uint32_t magic32_1_const = 0x00000000;
    const uint32_t magic32_2_const = 0x0001000B;
    const uint32_t const32b_0_const[16] = { // Constant 64 bytes
        0x00000040, 0x00000001, 0x00000050, 0x00000070,
        0x00010002, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x02010001, 0x01010002, 0x00000001, 0x00000000 };
    const uint32_t const32b_1_const = 0x00000040;
    const uint32_t const32b_2_const [10] = { // Constant 40 bytes
        0x00000000, 0x00000001, 0x00000010, 0x00000000, 0x00000000,
        0x000007D0, 0x000007D0, 0xFFFFFFD0, 0x00000000, 0x00000000 };

    // Main header structure of TAE animation metadata file (.tae)
    struct Header {
        uint32_t magic32_0;
        uint32_t magic32_1;
        uint32_t magic32_2;
        uint32_t file_size = 0; // Total size of the TAE file (in bytes)
        uint32_t const32b_0[16]; // Constant 64 bytes
        uint32_t file_id = 0; // Unique ID (NOTE: Not the character ID or animation ID)
        uint32_t anim_id_count = 0; // Length of animation ID array
        uint32_t anim_ids_offset = 0; // Offset of AnimID array. Relative to this address - 8. &anim_ids_offset + anim_ids_offset - 8
        uint32_t groups_section_offset = 0; // Offset (from start of file) of AnimationGroupHeader section. Relative to this address - 12. &groups_section_offset + groups_section_offset - 12
        uint32_t const32b_1;
        uint32_t anim_data_count = 0; // Length of animation data array
        uint32_t anim_data_offset = 0; // Offset of animation data array. List of AnimationData::Headers. Relative to this address - 104. &anim_data_offset + anim_data_offset - 104. 
        uint32_t const32b_2[10]; // Constant 40 bytes
        uint32_t filename_offset = 0; //This references where the skeleton_name_offset and the sib_name_offset can be found. It should always be 0 since they should be right below it.
        uint32_t skeleton_name_offset = 0; //Seemingly invalid? Think it's +0x38 relative to this address.
        uint32_t sib_name_offset = 0; //Seemingly invalid? Think it's +0x54 relative to this address.
    };

    // Animation ID structure
    typedef struct AnimationId {
        uint32_t id = 0; // Unique animation ID
        uint32_t offset = 0; // Offset of the AnimData struct corresponding to this animation ID. This is relative to this address - 4. &offset + offset - 4.
    } AnimId;

    typedef struct AnimationGroupHeader {
        uint32_t anim_group_count = 0;
        uint32_t anim_groups_offset = 0; //Offset of the AnimGroup struct for this animation group. Relative to this address - 4. &anim_groups_offset + anim_groups_offset - 4.
    } AnimGroupHeader;


    // Animation group structure
    typedef struct AnimationGroup {
        uint32_t first_id = 0; // ID of first animation in this group
        uint32_t last_id = 0; // ID of last animation in this group (can be equivalent to first_id for groups with only 1 animation)
        uint32_t first_id_offset = 0; // Offset of the AnimId corresponding to first_id. Unused? //TODO
        // (Note: Resolved address of first_id is lower in memory than this AnimGroup structure)
    } AnimGroup;

    // Animation event structure
    typedef struct AnimationEvent {
        struct Header {
            float start_time = 0;
            float end_time = 0;
            uint32_t body_offset = 0; // Note: Event body is not contiguous with EventHeader. Relative to itself -8. &body_offset + body_offset - 8.
        };

        struct Body {
            uint32_t type;
            uint32_t params_offset; //Relative to itself -4. &params_offset + params_offset - 4.
        };

        float start_time = 0.0f;
        float end_time = 0.0f;
        Header header;
        Body body;
        std::vector<uint32_t> params;
    } Event;


    // Animation file structure
    typedef struct AnimationFile {
        struct Header {
            uint32_t type = 0; //Untested with type != 0 (reference animations).
            void* name; //This is a variable length string that is the name of this file. NOT a pointer, the string starts at &name.
        };

        Header header;
        uint32_t name_offset;
        wchar_t  *name;
        uint32_t next_file_offset;
        uint32_t linked_anim_id;
    } AnimFile;


    // Animation data structure
    typedef struct AnimationData {
        struct Header {
            uint32_t event_count = 0; // Number of events in this animation. Subtract 0x1020000 from this
            uint32_t event_headers_offset = 0; //Relative to itself -4. &event_headers_offset + event_headers_offset - 4.
            uint32_t event_group_count = 0;
            uint32_t event_group_offset = 0; //NULL if group_count is 0. Only used for taes inside of remobnds in the remo folder. //TODO
            uint32_t time_constant_count = 0; // Number of time constants in this animation (a time constant is a 32-bit value; events_offset = time_constants_offset + (time_constants_count * 4) )
            uint32_t time_constants_offset = 0; // Offset (from start of file) of the TaeTimeConstant array for this animation. Unused? //TODO
            uint32_t anim_file_offset = 0; // Offset (from start of file) of the AnimFile::Header for this animation. //Relative to itself -4. &anim_file_offset + anim_file_offset - 4.
            // Note: Events and File are not contiguous with Header
        };

        Header header;
        std::vector<TimeActionEventFile::Event> events;
        TimeActionEventFile::AnimFile anim_file;
        std::vector<float> time_constants;
    } AnimData;



    Header    *header;
    wchar_t   *skeleton_name;
    wchar_t   *sib_name;
    AnimId    *ids; // Animation ID array
    uint32_t  group_count;
    uint32_t  *groups_offset; // Offset of animation group array
    AnimGroup *groups;        // Animation group array
    AnimData::Header *data;


    // Constructor (reading from game memory)
    TimeActionEventFile(void *new_header_start)
    {
        init_from_memory((Header*)new_header_start);
    }

    // Empty constructor (object is not initialized)
    TimeActionEventFile()
    {
    }

    // Destructor
    ~TimeActionEventFile()
    {
    }


    Header* init_from_memory(Header *new_header_start) {
        if (new_header_start != NULL)
        {
            id_to_index.clear();
            header = (Header*)new_header_start;

            //check this is a valid TAE file
            if (header->magic32_0 != magic32_0_const ||
                header->magic32_1 != magic32_1_const ||
                header->magic32_2 != magic32_2_const ||
                memcmp(header->const32b_0, const32b_0_const, sizeof(const32b_0_const)) != 0 ||
                header->const32b_1 != const32b_1_const ||
                memcmp(header->const32b_2, const32b_2_const, sizeof(const32b_2_const)) != 0)
            {
                SetLastError(ERROR_CANNOT_MAKE);
                return NULL;
            }

            skeleton_name = (wchar_t*)(((uint64_t)&header->skeleton_name_offset) + 0x38);
            sib_name = (wchar_t*)(((uint64_t)&header->sib_name_offset) + 0x54);
            ids = (AnimId*)(((uint64_t)&header->anim_ids_offset) + (uint64_t)header->anim_ids_offset - 8);
            group_count = ((AnimationGroupHeader*)(((uint64_t)&header->groups_section_offset) + (uint64_t)header->groups_section_offset - 12))->anim_group_count;
            groups_offset = &((AnimationGroupHeader*)(((uint64_t)&header->groups_section_offset) + (uint64_t)header->groups_section_offset - 12))->anim_groups_offset;
            groups = (AnimGroup*)(((uint64_t)groups_offset) + (uint64_t)*groups_offset - 4);
            data = (AnimData::Header*)(((uint64_t)&header->anim_data_offset) + (uint64_t)header->anim_data_offset - 104);

            // Map animation IDs to indices
            for (int i = 0; i < (int)header->anim_id_count; i++) {
                id_to_index.insert(std::make_pair(ids[i].id, i));
            }
            initialized = true;
            return header;
        }
        else
        {
            header = NULL;
            skeleton_name = NULL;
            sib_name = NULL;
            ids = NULL;
            group_count = NULL;
            groups_offset = NULL;
            groups = NULL;
            SetLastError(ERROR_CANNOT_MAKE);
            return NULL;
        }
    }

    /*
        Initializes (or re-initializes) a TAE instance using data from a TAE file in memory that starts with the given unique byte pattern.

        If from_file is true or the byte pattern is not found, the function fails and the Tae object is not modified.

        Returns the address of the header structure on success, or NULL on failure.
    */
    Header* init_from_aob_scan(char *scan_pattern) {
        if (scan_pattern == NULL) {
            SetLastError(ERROR_INVALID_PARAMETER);
            return NULL;
        }

        std::vector<uint8_t*> results;
        Header *new_header_start = (Header*)sp::mem::aob_scan(scan_pattern, NULL, &results);
        if (new_header_start) {
            for (uint8_t* start : results) {
                Header* head = init_from_memory((Header*)start);
                if (head != NULL) {
                    return head;
                }
            }
        }
        // Byte pattern was not found
        SetLastError(ERROR_FILE_NOT_FOUND);
        return NULL;
    }

    bool is_initialized() {
        return initialized;
    }

    // Header data getters
    uint32_t file_id() {
        return header == NULL ? NULL : header->file_id;
    }

    uint32_t file_size() {
        return header == NULL ? NULL : header->file_size;
    }

    uint32_t anim_id_count() {
        return header == NULL ? NULL : header->anim_id_count;
    }

    uint32_t anim_data_count() {
        return header == NULL ? NULL : header->anim_data_count;
    }

    // Returns animation ID at index i
    inline int32_t get_id(int unsigned i) {
        if (i < anim_id_count())
            return ids[i].id;
        else
            return -1;
    }

    // Returns the index of the animation with the specified ID
    inline int get_index(uint32_t id) {
        try {
            return id_to_index.at(id);
        }
        catch (const std::out_of_range&) {
            return -1;
        }
    }

    // Returns pointer to animation ID structure at index i
    inline AnimId* get_id_struct(int unsigned i) {
        if (i < anim_id_count())
            return &ids[i];
        else
            return NULL;
    }

    // Returns pointer to animation ID structure with the specified animation ID
    inline AnimId* get_id_struct_by_id(uint32_t id) {
        try {
            return &ids[id_to_index.at(id)];
        }
        catch (const std::out_of_range&) {
            return NULL;
        }
    }

    // Returns pointer to animation data structure at index i
    inline AnimData::Header* get_data(int unsigned i) {
        if (i < anim_id_count())
            //return (AnimData::Header*)(ids[i].offset + offset_base);
            return &data[i];
        else
            return NULL;
    }

    // Returns pointer to animation data structure with the specified animation ID
    inline AnimData::Header* get_data_by_id(uint32_t id) {
        try {
            return get_data(id_to_index.at(id));
        }
        catch (const std::out_of_range&) {
            return NULL;
        }
    }

    // Returns event count for animation at index i
    inline int get_event_count(int unsigned i) {
        return get_data(i) == NULL ? -1 : (get_data(i)->event_count - 0x1020000);
    }

    // Returns event count for animation with the specified animation ID
    inline int get_event_count_by_id(uint32_t id) {
        return get_data_by_id(id) == NULL ? -1 : (get_data_by_id(id)->event_count - 0x1020000);
    }

    // Returns time constant count for animation at index i
    inline int get_time_constant_count(int unsigned i) {
        return get_data(i) == NULL ? -1 : get_data(i)->time_constant_count;
    }

    // Returns time constant value at index tci of the time constant array for animation at index i
#if 0
    inline float get_time_constant(int unsigned i, int unsigned tci) {
        float* constants = get_data(i) == NULL ? NULL : (float*)(offset_base + get_data(i)->time_constants_offset);
        if (constants != NULL && (int)tci < get_time_constant_count(i)) {
            return constants[tci];
        }
        return -1.0f;
    }
#endif

    // Returns time constant value at index tci of the time constant array for animation with the specified animation ID
    inline int get_time_constant_count_by_id(uint32_t id) {
        return get_data_by_id(id) == NULL ? -1 : get_data_by_id(id)->time_constant_count;
    }

    // Returns time constant value at index tci of the time constant array for animation with the specified ID
#if 0
    inline float get_time_constant_by_id(uint32_t id, int unsigned tci) {
        float* constants = get_data_by_id(id) == NULL ? NULL : (float*)(offset_base + get_data_by_id(id)->time_constants_offset);
        if (constants != NULL && (int)tci < get_time_constant_count_by_id(id)) {
            return constants[tci];
        }
        return -1.0f;
    }
#endif

    // Returns pointer to animation file structure for animation at index i
    inline AnimFile::Header* get_anim_file_header(int unsigned i) {
        return get_data(i) == NULL ? NULL : (AnimFile::Header*)(((uint64_t)&get_data(i)->anim_file_offset) + (uint64_t)get_data(i)->anim_file_offset - 4);
    }

    // Returns pointer to animation file structure for animation with the specified animation ID
    inline AnimFile::Header* get_anim_file_header_by_id(uint32_t id) {
        return get_data_by_id(id) == NULL ? NULL : (AnimFile::Header*)(((uint64_t)&get_data_by_id(id)->anim_file_offset) + (uint64_t)get_data_by_id(id)->anim_file_offset - 4);
    }

    // Returns animation type for animation at index i
    inline int get_anim_file_type(int unsigned i) {
        AnimFile::Header* fsh = get_anim_file_header(i);
        return fsh == NULL ? -1 : fsh->type;
    }

    // Returns animation type for animation with the specified animation ID
    inline int get_anim_file_type_by_id(uint32_t id) {
        AnimFile::Header* fsh = get_anim_file_header_by_id(id);
        return fsh == NULL ? -1 : fsh->type;
    }

    // Returns animation file name for animation at index i
    inline wchar_t* get_anim_file_name(int unsigned i) {
        AnimFile::Header* fsh = get_anim_file_header(i);
        if (fsh != NULL) {
            return (wchar_t*)(&fsh->name);
        }
        return NULL;
    }

    // Returns animation file name for animation with the specified animation ID
    inline wchar_t* get_anim_file_name_by_id(uint32_t id) {
        AnimFile::Header* fsh = get_anim_file_header_by_id(id);
        if (fsh != NULL) {
            return (wchar_t*)(&fsh->name);
        }
        return NULL;
    }

    // Returns animation event header with index ei in event header array for animation at index i
    inline Event::Header* get_event_header(int unsigned i, int unsigned ei) {
        AnimData::Header* d = get_data(i);
        if (d != NULL && ei < (d->event_count - 0x1020000)) {
            return &((Event::Header*)(((uint64_t)&d->event_headers_offset) + (uint64_t)d->event_headers_offset - 4))[ei];
        }
        return NULL;
    }

    // Returns animation event header with index ei in event header array for animation with the specified ID
    inline Event::Header* get_event_header_by_id(uint32_t id, int unsigned ei) {
        AnimData::Header* d = get_data_by_id(id);
        if (d != NULL && ei < (d->event_count - 0x1020000)) {
            return &((Event::Header*)(((uint64_t)&d->event_headers_offset) + (uint64_t)d->event_headers_offset - 4))[ei];
        }
        return NULL;
    }

    // Returns animation start time of event with index ei in event header array for animation at index i
    inline float get_event_start(int unsigned i, int unsigned ei) {
        Event::Header* evnt_head = get_event_header(i, ei);
        if (evnt_head != NULL) {
            return evnt_head->start_time;
        }
        return -1.0f;
    }

    // Returns animation start time of event with index ei in event header array for animation with the specified ID
    inline float get_event_start_by_id(uint32_t id, int unsigned ei) {
        Event::Header* evnt_head = get_event_header_by_id(id, ei);
        if (evnt_head != NULL) {
            return evnt_head->start_time;
        }
        return -1.0f;
    }

    // Sets animation start time of event with index ei in event header array for animation with the specified ID
    void set_event_start_by_id(uint32_t id, int unsigned ei, float new_start) {
        Event::Header* evnt_head = get_event_header_by_id(id, ei);
        if (evnt_head != NULL) {
            evnt_head->start_time = new_start;
        }
    }

    // Returns animation end time of event with index ei in event header array for animation at index i
    inline float get_event_end(int unsigned i, int unsigned ei) {
        Event::Header* evnt_head = get_event_header(i, ei);
        if (evnt_head != NULL) {
            return evnt_head->end_time;
        }
        return -1.0f;
    }

    // Returns animation end time of event with index ei in event header array for animation with the specified ID
    inline float get_event_end_by_id(uint32_t id, int unsigned ei) {
        Event::Header* evnt_head = get_event_header_by_id(id, ei);
        if (evnt_head != NULL) {
            return evnt_head->end_time;
        }
        return -1.0f;
    }

    // Sets animation end time of event with index ei in event header array for animation with the specified ID
    void set_event_end_by_id(uint32_t id, int unsigned ei, float new_end) {
        Event::Header* evnt_head = get_event_header_by_id(id, ei);
        if (evnt_head != NULL) {
            evnt_head->end_time = new_end;
        }
    }

    inline Event::Body* get_event_body(int unsigned i, int unsigned ei) {
        Event::Header* evnt_head = get_event_header(i, ei);
        if (evnt_head != NULL) {
            Event::Body* evnt_body = (Event::Body*)(((uint64_t)&evnt_head->body_offset) + (uint64_t)evnt_head->body_offset - 8);
            return evnt_body;
        }
        return NULL;
    }

    inline Event::Body* get_event_body_by_id(uint32_t id, int unsigned ei) {
        Event::Header* evnt_head = get_event_header_by_id(id, ei);
        if (evnt_head != NULL) {
            Event::Body* evnt_body = (Event::Body*)(((uint64_t)&evnt_head->body_offset) + (uint64_t)evnt_head->body_offset - 8);
            return evnt_body;
        }
        return NULL;
    }

    // Returns animation type for event with index ei in event header array for animation at index i
    inline int get_event_type(int unsigned i, int unsigned ei) {
        Event::Body* evnt_body = get_event_body(i, ei);
        if (evnt_body != NULL) {
            return evnt_body->type;
        }
        return -1;
    }

    // Returns animation type for event with index ei in event header array for animation with the specified ID
    inline int get_event_type_by_id(uint32_t id, int unsigned ei) {
        Event::Body* evnt_body = get_event_body_by_id(id, ei);
        if (evnt_body != NULL) {
            return evnt_body->type;
        }
        return -1;
    }

    // Returns address of parameter array for event with index ei in event header array for animation at index i
    inline uint32_t* get_event_params(int unsigned i, int unsigned ei) {
        Event::Body* evnt_body = get_event_body(i, ei);
        if (evnt_body != NULL) {
            return (uint32_t*)(((uint64_t)&evnt_body->params_offset) + (uint64_t)evnt_body->params_offset - 4);
        }
        return NULL;
    }

    // Returns address of parameter array for event with index ei in event header array for animation with the specified ID
    inline uint32_t* get_event_params_by_id(uint32_t id, int unsigned ei) {
        Event::Body* evnt_body = get_event_body_by_id(id, ei);
        if (evnt_body != NULL) {
            return (uint32_t*)(((uint64_t)&evnt_body->params_offset) + (uint64_t)evnt_body->params_offset - 4);
        }
        return NULL;
    }

    // Returns animation parameter count for event with index ei in event header array for animation at index i
    inline int get_event_param_count(int unsigned i, int unsigned ei) {
        return TimeActionEventFile::event_param_count_from_type(get_event_type(i, ei));
    }

    // Returns animation parameter count for event with index ei in event header array for animation with the specified ID
    inline int get_event_param_count_by_id(uint32_t id, int unsigned ei) {
        return TimeActionEventFile::event_param_count_from_type(get_event_type_by_id(id, ei));
    }

    // Returns animation parameter value at index pi for event with index ei in event header array for animation at index i (or INT_MIN on failure)
    inline int32_t get_event_param(int unsigned i, int unsigned ei, int unsigned pi) {
        int count = TimeActionEventFile::event_param_count_from_type(get_event_type(i, ei));
        if (count > -1 && (int)pi < count) {
            return get_event_params(i, ei)[pi];
        }
        return INT_MIN;
    }

    // Returns animation parameter value at index pi for event with index ei in event header array for animation with the specified ID (or INT_MIN on failure)
    inline int32_t get_event_param_by_id(uint32_t id, int unsigned ei, int unsigned pi) {
        int count = TimeActionEventFile::event_param_count_from_type(get_event_type_by_id(id, ei));
        if (count > -1 && (int)pi < count) {
            return get_event_params_by_id(id, ei)[pi];
        }
        return INT_MIN;
    }

    // Returns the number of parameters for the specified event type
    static int event_param_count_from_type(int type) {
        // Shout-out to RavagerChris for doing all the work for these values
        switch (type) {
            case 32:
            case 33:
            case 65:
            case 66:
            case 67:
            case 101:
            case 110:
            case 145:
            case 224:
            case 225:
            case 226:
            case 229:
            case 231:
            case 232:
            case 301:
            case 302:
            case 308:
            case 401:
                return 1;
                break;

            case 5:
            case 64:
            case 112:
            case 121:
            case 128:
            case 193:
            case 233:
            case 304:
                return 2;
                break;

            case 0:
            case 1:
            case 96:
            case 100:
            case 104:
            case 109:
            case 114:
            case 115:
            case 116:
            case 118:
            case 144:
            case 228:
            case 236:
            case 307:
                return 3;
                break;

            case 2:
            case 16:
            case 24:
            case 130:
            case 300:
                return 4;
                break;

            case 120:
                return 6;
                break;

            case 8:
                return 12;
                break;

            default:
                return -1;
        }
    }
} Tae;




#endif // DS1_FILE_LIB_TAE_ANIMATION_FILE_H_
