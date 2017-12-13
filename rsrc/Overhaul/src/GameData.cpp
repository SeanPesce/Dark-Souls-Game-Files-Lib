/*

    Legacy code from Dark Souls Overhaul project
        (NOTE: Some of this code is still in the Overhaul)

    Dark Souls Overhaul repository can be found here:
        https://github.com/metal-crow/Dark-Souls-1-Overhaul

    DARK SOULS OVERHAUL

    Contributors to this file:
        Ashley                      -  Reverse engineering, Low FPS Disconnect patch technique
        jellybaby34                 -  Game version number patch technique
        Metal-Crow                  -  Reverse engineering, Phantom Limit patch, C++
        Sean Pesce                  -  C++, automataed Bonfire Input Fix (FPSFix+)
        Youri "NullBy7e" de Mooij   -  Original Bonfire Input Fix technique (FPSFix)
        Zullie The Witch            -  Toggle armor sounds, Dim Lava Effects (C++ conversions by Sean)

*/

#include "DllMain.h"
#include "GameFiles/Files.h"



/*
    Initialize static variables:
*/

// Base address of Dark Souls game process
void *Game::ds1_base = NULL;


// Performs tasks that were deferred until a character was loaded
void Game::on_first_character_loaded()
{

    // Get param files
    print_console(Mod::output_prefix + "Searching memory for loaded param files...");
    ParamDef::AiStandardInfo().init(true);
    ParamDef::Armor().init(true);
    ParamDef::BehaviorNpc().init(true);
    ParamDef::BehaviorPc().init(true);
    ParamDef::Bullet().init(true);
    ParamDef::LockCam().init(true);
    ParamDef::CharInit().init(true);
    ParamDef::Item().init(true);
    ParamDef::ItemLot().init(true);
    ParamDef::Magic().init(true);
    ParamDef::MaterialSet().init(true);
    ParamDef::MenuColor().init(true);
    ParamDef::Move().init(true);
    ParamDef::Npc().init(true);
    ParamDef::NpcThink().init(true);
    ParamDef::ShopLineup().init(true);
    ParamDef::SpEffect().init(true);
    ParamDef::SpEffectVfx().init(true);
    ParamDef::Throw().init(true);
    ParamDef::Weapon().init(true);

    // Disable armor sounds if it was specified in the config file
    if (Mod::disable_armor_sfx_pref)
        Game::enable_armor_sfx(false);
}



// Checks if armor sound effects are enabled
bool Game::armor_sfx_enabled()
{
    if (ParamDef::Armor().base == NULL)
    {
        print_console("ERROR: Waiting for Armor params to load");
        return true;
    }

    ArmorParam *first_param = ParamDef::Armor().data();

    return (first_param->defenseMaterial == 59 && first_param->defenseMaterial_Weak == 29);
}


// Toggles armor sound effecs
void Game::enable_armor_sfx(bool enable)
{
    if (ParamDef::Armor().base == NULL)
    {
        print_console("ERROR: Waiting for Armor params to load");
        return;
    }

    // Static variable persists between function calls
    static std::vector<std::vector<uint8_t>> default_armor_sfx_values;

    // Check if default armor sound effects have been stored yet
    bool backup_defaults = default_armor_sfx_values.empty();


    for (int i = 0; i < (int)ParamDef::Armor().param_count; i++)
    {
        // First time, store default armor sound effects
        if (backup_defaults)
            default_armor_sfx_values.push_back({
                        ParamDef::Armor().get(i)->defenseMaterial,
                        ParamDef::Armor().get(i)->defenseMaterial_Weak });

        if (enable)
        {
            ParamDef::Armor().get(i)->defenseMaterial = default_armor_sfx_values.at(i).at(0);
            ParamDef::Armor().get(i)->defenseMaterial_Weak = default_armor_sfx_values.at(i).at(1);
        }
        else
        {
            ParamDef::Armor().get(i)->defenseMaterial = 0;
            ParamDef::Armor().get(i)->defenseMaterial_Weak = 0;
        }
    }
}


