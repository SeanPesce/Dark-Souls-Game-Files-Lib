/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/Talk.h

    Talk Parameters from TalkParam.paramdef


    References:
        - Burton Radons' ParamDefs Sheet
          https://docs.google.com/spreadsheets/d/1KukblWL61We64-gNIyaAShga9h8RTXYmyFs98eQhY4E/

        - Kushisushi's ParamDefs Sheet
          https://docs.google.com/spreadsheets/d/1QX6i93H4_jGZ0So9mArDECnuv1lfkaJQhXOzkDuxdkE/edit#gid=2133439974

*/
#pragma once

#ifndef DS1_FILE_LIB_TALK_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_TALK_PARAM_DEF_FILE_H_


#include "Param.h"


// Talk parameters
typedef struct TalkParameter : public Param {

    int32_t
        msgId,      // Specify message -> menu
        voiceId,    // Specify Voice -> Sound
        motionId,   // Specify motion -> character
        returnPos,  // Relative position of restored conversation -> conversation
        reactionId, // Conversation designation upon return -> conversation
        eventId;    // Event ID-> Event

    uint8_t
        isMotionLoop; // Do you want a motion loop?

    uint8_t
        padding[7];

} TalkParam;



// Talk parameter data manipulation class
class TalkParamDef : public ParamDef {

public:
    static TalkParamDef& get_instance()
    {
        static TalkParamDef instance;
        return instance;
    }

    TalkParam *data()
    {
        return (TalkParam*)ParamDef::data();
    }

    TalkParam *get(int index)
    {
        return (TalkParam*)ParamDef::get(index);
    }


private:
    TalkParamDef()
        : ParamDef(NULL, sizeof(TalkParam),
                   "?? ?? ?? ?? ?? ?? 01 00 01 00 ?? ?? 54 41 4C 4B 5F 50 41 52 41 4D 5F 53 54 00",
                   "TalkParam", "Talk")
    {
    }

public:
    TalkParamDef(TalkParamDef const&) = delete;
    void operator=(TalkParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_TALK_PARAM_DEF_FILE_H_
