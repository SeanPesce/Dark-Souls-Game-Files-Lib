/*
    DARK SOULS OVERHAUL

    Contributors to this file:
        Sean Pesce  -  C++
        Metal-Crow  -  C++
*/

#pragma once

#ifndef _DS1_OVERHAUL_GAME_DATA_H_
    #define _DS1_OVERHAUL_GAME_DATA_H_



#include "SpPointer.h"



enum DS1_GAME_VERSION_ENUM {
    DS1_VERSION_DEBUG = 0x2C,		// 44
    DS1_VERSION_STEAM_BETA = 0x2D,	// 45
    DS1_VERSION_RELEASE = 0x2E,		// 46
    DS1_VERSION_OVERHAUL = 0x3C		// 60
};

enum DS1_PLAYER_STATUS_ENUM {
    DS1_PLAYER_STATUS_LOADING = -1,
    DS1_PLAYER_STATUS_HUMAN = 0,
    DS1_PLAYER_STATUS_COOP = 1,
    DS1_PLAYER_STATUS_INVADER = 2,
    DS1_PLAYER_STATUS_HOLLOW = 8
};




class Game
{
public:

    ////////////////////////////////////////
    ////////////// GAME DATA ///////////////
    ////////////////////////////////////////

// Base address of Dark Souls game process
    static void *ds1_base;

    // Base address for player character data
    static void *player_char_base;

    // Player character status (loading, human, co-op, invader, hollow)
    static SpPointer player_char_status;

    // Flag to determine if any characters have been loaded since the game was launched (useful if player had a character loaded but returned to main menu)
    static bool characters_loaded;

    // Address of lava brightness effect (used for dimming lava)
    static uint8_t *lava_luminosity;

    // Game saving on/off
    static SpPointer saves_enabled;

    // Multiplayer node count
    static int node_count;

    // Size of the pool of memory the game allocates for itself
    static uint32_t memory_limit;



    /////////////////////////////////////////
    /////////////// FUNCTIONS ///////////////
    /////////////////////////////////////////

// Initializes pointers that depend on the game's base address
    static void init_pointers();

    // Runs tasks that were deferred until a character was loaded
    static void on_first_character_loaded();

    // Obtains the current game version number
    static uint8_t get_game_version();

    // Changes the game version number to avoid compatibility issues with different game builds
    static void set_game_version(uint8_t version_number);

    // Checks if the player is stuck at the bonfire, and if so, automatically applies the bonfire input fix
    static void check_bonfire_input_bug();

    // Fixes input bug that causes players to be stuck at a bonfire (usually after turning human with framerate unlocked)
    static int fix_bonfire_input(bool print_to_text_feed = false, bool print_to_console = false);

    // Check if dim lava mod is currently active
    static bool dim_lava_enabled();

    // Dim lava effects or restore default lava visuals
    static void enable_dim_lava(bool dim);

    // Returns multiplayer node count as an int (or -1 if player is not online)
    static int get_node_count();

    // Checks if armor sound effects are enabled
    static bool armor_sfx_enabled();

    // Toggles armor sound effecs
    static void enable_armor_sfx(bool enable);

    // Enables/Disables automatic game disconnection when low framerate is detected
    static void enable_low_fps_disconnect(bool enable);



    /////////////////////////////////////////
    //////////////// PATCHES ////////////////
    /////////////////////////////////////////

// Set available pool of memory that Dark Souls allocates for itself
    static void set_memory_limit(uint32_t mem_limit);

    // Two-part patch to increase the multiplayer phantom limit:
    static void increase_phantom_limit1(); // Called from on_process_attach()
    static void increase_phantom_limit2(); // Called from initialize_plugin()





                                    /////////////////////////////////////////
                                    ////////////// FILE-RELATED /////////////
                                    /////////////////////////////////////////
    class Files {
    public:

        /*
            Might want to use this stuff in the future, but leave it out for now
            because it increases DLL file size by ~200KB:


        //////// Funcs & variables related to extracting data from game files ////////

        // Number of filename strings in the filename list used by hashing functions
        #define FILENAME_LIST_SIZE 6128

        // List of game files that are packed into the Dark Souls game archives
        static const char* const FILENAMES[FILENAME_LIST_SIZE];

        // Stores hashed filenames
        static uint32_t FILENAME_HASHES[FILENAME_LIST_SIZE];

        // Calculates and stores hashes for all default game filenames
        static int hash_default_filenames();

        */

        // Default file type for game save file 
        static const char *DEFAULT_SAVE_FILE_TYPE; // (char)
        static const wchar_t *DEFAULT_SAVE_FILE_TYPE_W; // (wide char)

        // If true, console messages will be printed when the game performs certain actions on the game files
        static bool monitor_file_activity;

        // File handles for archive header files
        static std::vector<HANDLE> bhd_handle;

        // File handles for archive files
        static std::vector<HANDLE> bdt_handle;

        // Default file name for save file
        static const char *DEFAULT_SAVE_FILE_NAME; // (char)

        // File handle for save file
        static HANDLE sl2_handle;



        // Called when the game attempts to call CreateFileW
        static HANDLE WINAPI intercept_create_file_w(LPCWSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode,
                                                     LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition,
                                                     DWORD dwFlagsAndAttributes, HANDLE hTemplateFile);

        // Called when the game attempts to call GetPrivateProfileIntW
        static UINT WINAPI intercept_get_private_profile_int_w(LPCWSTR lpAppName, LPCWSTR lpKeyName, INT nDefault, LPCWSTR lpFileName);

        // Called when the game attempts to call WritePrivatePrivateProfileW
        static BOOL WINAPI intercept_write_private_profile_section_w(LPCWSTR lpAppName, LPCWSTR lpString, LPCWSTR lpFileName);

        // Called when the game attempts to call ReadFile
        static BOOL WINAPI intercept_read_file(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped);

        // Called when the game attempted to call SetFilePointer
        static DWORD WINAPI intercept_set_file_pointer(HANDLE hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod);

        // Called when the game attempts to call CloseHandle
        static BOOL WINAPI intercept_close_handle(HANDLE hObject);


        // Patches game calls to CreateFileW, redirecting them to Game::intercept_create_file()
        static void apply_function_intercepts();

        // Checks if custom archive files exist (.bdt/.bhd5)
        static void check_custom_archive_files();

        // Checks if custom save file exists (.sl2)
        static void check_custom_save_file();

        // Checks if custom game config file exists (.ini)
        static void check_custom_game_config_file();

        // Checks if the specified file exists
        static bool file_exists(const char* file);    // char
        static bool file_exists(const wchar_t* file); // wchar_t

        // Obtains the size of the specified file (in bytes), or 0 (with error code set) if error occurred
        static size_t file_size(const wchar_t* file);
        static size_t file_size(const char* file);

        // Reads the given number of bytes from the specified offset of a file and stores the data in the supplied buffer
        static void *read_from_offset(const char* file, unsigned long offset, size_t num_bytes, void *buffer, bool allow_alloc = true);

        // Writes a block of memory to a file
        static int dump_file(void *source, size_t size, const char *new_file, bool overwrite = true);

        // Returns the name of the game file that the specified file handle corresponds to
        static void filename_from_handle(HANDLE handle, std::string& filename);

        // Calculates the .bhd5 hash value for a filename (credit to Burton Radons for reversing this)
        static uint32_t get_filename_hash(const char *filename);

        // Converts a char array to lowercase
        static int to_lowercase(char *string);

        /*
            Reverses the byte order of the given unsigned 32-bit integer.

            If from_endian_int is an unsigned 32-bit Big Endian integer, return value is an unsigned 32-bit Little Endian integer.
            If from_endian_int is an unsigned 32-bit Litte Endian integer, return value is an unsigned 32-bit Big Endian integer.
        */
        static uint32_t reverse_endian(uint32_t from_endian_int);

    };
};
typedef Game::Files Files;



#endif // _DS1_OVERHAUL_GAME_DATA_H_