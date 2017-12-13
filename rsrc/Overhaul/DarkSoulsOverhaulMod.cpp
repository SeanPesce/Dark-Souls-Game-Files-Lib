/*

    Legacy code from Dark Souls Overhaul project
        (NOTE: Some of this code is still in the Overhaul)

    Dark Souls Overhaul repository can be found here:
        https://github.com/metal-crow/Dark-Souls-1-Overhaul

    DARK SOULS OVERHAUL

    Contributors to this file:
        Sean Pesce  -  C++
        Metal-Crow  -  C++

*/

#include "DllMain.h"
#include "GameFiles/Archive/Bhd5Archive.h"



/*
    Called from DllMain when the plugin DLL is first loaded into memory (PROCESS_ATTACH case).
    NOTE: This function runs in the same thread as DllMain, so code implemented here will halt
    game loading. Code in this function should be limited to tasks that absolutely MUST be
    executed before the game loads. For less delicate startup tasks, use on_process_attach_async()
    or initialize_plugin().
*/
void on_process_attach()
{

    // Set .bdt file list formatting
    Archive::init_bdt_file_set_format();

    // Change game version number
    Files::apply_function_intercepts();

    // Check for existence of non-default game files
    Files::check_custom_archive_files();
    Files::check_custom_save_file();
    Files::check_custom_game_config_file();
}



/*
    Called from DllMain when the plugin DLL is first loaded into memory (PROCESS_ATTACH case).
    This function runs in a separate thread from DllMain, so code implemented here does NOT
    pause game loading. Code that must be executed before the game loads should be implemented
    in on_process_attach() instead of this function.
*/
DWORD WINAPI on_process_attach_async(LPVOID lpParam)
{
    // Get the list of files that are packed into the game's .bdt archives
    Archive::load_bdt_file_list(NULL, NULL, false);

    return 0;
}





//////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////// Exported functions ///////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
/*
    The functions below are exported from this DLL and imported
    by the DirectX9 overlay when loading this DLL as a plugin.

    These functions are called during important events throughout
    the execution of the program, allowing the developer(s) to run
    code that takes advantage of these processes (such as rendering
    DirectX elements and reading player input).
*/



/*
    Called exactly once after DirectX9 overlay is initialized.
*/
__declspec(dllexport) void __stdcall initialize_plugin()
{
    // Register console commands
    Mod::register_console_commands();

    // Initialize pointers
    Game::init_pointers();

    // Start thread for deferred tasks
    if (!CreateThread(NULL, 0, deferred_tasks, NULL, 0, NULL))
        ; // Error creating new thread

    Mod::initialized = true; // Should be the last statement in this function
}
