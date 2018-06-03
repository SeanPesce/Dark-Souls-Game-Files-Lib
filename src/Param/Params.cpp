/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce    -  C++

*/


#include "Param/Params.h"



namespace Params {

// Array containing starting addresses for each param file
uint32_t *files_buff[TOTAL_PARAM_COUNT + 13]; // Leave extra buffer room for m99 Draw params even though it doesn't get loaded in retail version
uint32_t *files_buff_ptr = (uint32_t*)(&files_buff[0]);
unsigned long loaded_count = 0;
uint32_t *loaded_count_ptr = (uint32_t*)(&loaded_count);

// Checks if all param files have been loaded into memory
bool all_loaded()
{
    return loaded_count >= TOTAL_PARAM_COUNT;
}

// Injected function that saves the location of each param file loaded by the game
static uint32_t param_load_asm_return = 0;
void __declspec(naked) __stdcall asm_param_load_check() {
    __asm
    {
        push ebx
        push ecx
        push edx
        push esi

        mov ebx, 0 // Index
        mov esi, 0 // Offset
        mov ecx, files_buff_ptr
        mov edx, loaded_count_ptr
        mov edx, [edx]
        cmp edx, ebx
        je loop_end

        loop_start: // Loop until first unused array element is found
        inc ebx
        add esi, 4
        cmp edx, ebx
        jne loop_start

        loop_end:
        // esi now holds offset to write in buffer
        add ecx, esi
        mov [ecx], eax // Store starting address of current param file

        // Increment loaded param file count
        mov ecx, loaded_count_ptr
        mov ebx, dword ptr[ecx]
        add ebx, 1
        mov dword ptr[ecx], ebx

        pop esi
        pop edx
        pop ecx
        pop ebx

        // Original code:
        mov ecx, [esi + 0x20]
        add esp, 0x0C

        jmp param_load_asm_return;
    }
}

// Injects code to capture starting address of each parameter file as it is loaded by the game
void patch()
{
    memset(files_buff, 0, sizeof(files_buff));
    void *injection_address = (void*)(0xD21120); // Alt: DARKSOULS.exe+0x921120 // AoB: 8B 4E 20 83 C4 0C 8D 54 24 10
    set_mem_protection(injection_address, 6, MEM_PROTECT_RWX);
    inject_jmp_5b((uint8_t*)injection_address, &param_load_asm_return, 1, asm_param_load_check);
}

// Restores original code that was patched to capture starting addresses of all param files.
//   (Call this after all params have been loaded)
void unpatch()
{
    void *write_address = (void*)(0xD21120); // Alt: DARKSOULS.exe+0x921120
    uint8_t original_bytes[6] = { 0x8B, 0x4E, 0x20, 0x83, 0xC4, 0x0C };
    set_mem_protection(write_address, 6, MEM_PROTECT_RWX);
    memcpy_s(write_address, 6, original_bytes, 6);
}

// Initializes all param file instances
void init(bool print_output)
{
    SetLastError(ERROR_SUCCESS);
    if (!all_loaded()) {
        // Not all param files loaded
        SetLastError(ERROR_BAD_ENVIRONMENT);
        return;
    }

    // @TODO: Default draw params
    //Params::_().init(files_buff[DOF_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[FOG_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[LOD_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_DEFAULT], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_DEFAULT], print_output);

    Params::Weapon().init(files_buff[EQUIP_PARAM_WEAPON_ST], print_output);
    Params::Armor().init(files_buff[EQUIP_PARAM_PROTECTOR_ST], print_output);
    Params::Accessory().init(files_buff[EQUIP_PARAM_ACCESSORY_ST], print_output);
    Params::Item().init(files_buff[EQUIP_PARAM_GOODS_ST], print_output);
    Params::WeaponReinforce().init(files_buff[REINFORCE_PARAM_WEAPON_ST], print_output);
    Params::ArmorReinforce().init(files_buff[REINFORCE_PARAM_PROTECTOR_ST], print_output);
    Params::MaterialSet().init(files_buff[EQUIP_MTRL_SET_PARAM_ST], print_output);
    Params::EnemyStandardInfo().init(files_buff[ENEMY_STANDARD_INFO_BANK], print_output);
    Params::AiStandardInfo().init(files_buff[AI_STANDARD_INFO_BANK], print_output);
    Params::Throw().init(files_buff[THROW_INFO_BANK], print_output);
    Params::BehaviorNpc().init(files_buff[BEHAVIOR_PARAM_NPC_ST], print_output);
    Params::BehaviorPc().init(files_buff[BEHAVIOR_PARAM_PC_ST], print_output);
    Params::Npc().init(files_buff[NPC_PARAM_ST], print_output);
    Params::AttackPc().init(files_buff[ATK_PARAM_PC_ST], print_output);
    Params::AttackNpc().init(files_buff[ATK_PARAM_NPC_ST], print_output);
    Params::Magic().init(files_buff[MAGIC_PARAM_ST], print_output);
    Params::NpcThink().init(files_buff[NPC_THINK_PARAM_ST], print_output);
    Params::Object().init(files_buff[OBJECT_PARAM_ST], print_output);
    Params::Bullet().init(files_buff[BULLET_PARAM_ST], print_output);
    Params::SpEffect().init(files_buff[SP_EFFECT_PARAM_ST], print_output);
    Params::SpEffectVfx().init(files_buff[SP_EFFECT_VFX_PARAM_ST], print_output);
    Params::Talk().init(files_buff[TALK_PARAM_ST], print_output);
    Params::MenuColor().init(files_buff[MENU_PARAM_COLOR_TABLE_ST], print_output);
    Params::ItemLot().init(files_buff[ITEMLOT_PARAM_ST], print_output);
    Params::Move().init(files_buff[MOVE_PARAM_ST], print_output);
    Params::CharInit().init(files_buff[CHARACTER_INIT_PARAM], print_output);
    Params::FaceGen().init(files_buff[FACE_PARAM_ST], print_output);
    Params::Ragdoll().init(files_buff[RAGDOLL_PARAM_ST], print_output);
    Params::ShopLineup().init(files_buff[SHOP_LINEUP_PARAM], print_output);
    Params::QwcChange().init(files_buff[QWC_CHANGE_PARAM_ST], print_output);
    Params::QwcJudge().init(files_buff[QWC_JUDGE_PARAM_ST], print_output);
    Params::GameArea().init(files_buff[GAME_AREA_PARAM_ST], print_output);
    Params::Skeleton().init(files_buff[SKELETON_PARAM_ST], print_output);
    Params::CalcCorrect().init(files_buff[CALC_CORRECT_GRAPH_ST], print_output);
    Params::LockCam().init(files_buff[LOCK_CAM_PARAM_ST], print_output);
    Params::ObjectAction().init(files_buff[OBJ_ACT_PARAM_ST], print_output);
    Params::HitMaterial().init(files_buff[HIT_MTRL_PARAM_ST], print_output);
    Params::KnockBack().init(files_buff[KNOCKBACK_PARAM_ST], print_output);

    // Remaster params (not properly enumerated) // @TODO: Figure out correct enumeration
    //Params::CoolTime().init(files_buff[COOLTIME_PARAM_ST], print_output);
    //Params::WhiteCoolTime().init(files_buff[WHITECOOLTIME_PARAM_ST], print_output);
    //Params::LevelSync().init(files_buff[LEVELSYNC_PARAM_ST], print_output);

    // @TODO: Non-default draw params
    //Params::_().init(files_buff[DOF_BANK_M10], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M10], print_output);
    //Params::_().init(files_buff[FOG_BANK_M10], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M10], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M10], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M10], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M10], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M10], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M10], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M10], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M10], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S10], print_output);
    //Params::_().init(files_buff[DOF_BANK_M11], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M11], print_output);
    //Params::_().init(files_buff[FOG_BANK_M11], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M11], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M11], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M11], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M11], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M11], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M11], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M11], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M11], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S11], print_output);
    //Params::_().init(files_buff[DOF_BANK_M12], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M12], print_output);
    //Params::_().init(files_buff[FOG_BANK_M12], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M12], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M12], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M12], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M12], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M12], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M12], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M12], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M12], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S12], print_output);
    //Params::_().init(files_buff[DOF_BANK_M13], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M13], print_output);
    //Params::_().init(files_buff[FOG_BANK_M13], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M13], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M13], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M13], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M13], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M13], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M13], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M13], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M13], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S13], print_output);
    //Params::_().init(files_buff[DOF_BANK_M14], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M14], print_output);
    //Params::_().init(files_buff[FOG_BANK_M14], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M14], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M14], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M14], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M14], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M14], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M14], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M14], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M14], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S14], print_output);
    //Params::_().init(files_buff[DOF_BANK_M15_1], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M15_1], print_output);
    //Params::_().init(files_buff[FOG_BANK_M15_1], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M15_1], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M15_1], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M15_1], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M15_1], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M15_1], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M15_1], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M15_1], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M15_1], print_output);
    //Params::_().init(files_buff[DOF_BANK_M15], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M15], print_output);
    //Params::_().init(files_buff[FOG_BANK_M15], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M15], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M15], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M15], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M15], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M15], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M15], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M15], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M15], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S15_1], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S15], print_output);
    //Params::_().init(files_buff[DOF_BANK_M16], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M16], print_output);
    //Params::_().init(files_buff[FOG_BANK_M16], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M16], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M16], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M16], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M16], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M16], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M16], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M16], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M16], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S16], print_output);
    //Params::_().init(files_buff[DOF_BANK_M17], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M17], print_output);
    //Params::_().init(files_buff[FOG_BANK_M17], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M17], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M17], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M17], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M17], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M17], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M17], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M17], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M17], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S17], print_output);
    //Params::_().init(files_buff[DOF_BANK_M18], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M18], print_output);
    //Params::_().init(files_buff[FOG_BANK_M18], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M18], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M18], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M18], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M18], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M18], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M18], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M18], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M18], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S18], print_output);

    
    //Params::_().init(files_buff[DOF_BANK_M99], print_output);
    //Params::_().init(files_buff[ENV_LIGHT_TEX_BANK_M99], print_output);
    //Params::_().init(files_buff[FOG_BANK_M99], print_output);
    //Params::_().init(files_buff[LENS_FLARE_BANK_M99], print_output);
    //Params::_().init(files_buff[LENS_FLARE_EX_BANK_M99], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_M99], print_output);
    //Params::_().init(files_buff[LIGHT_SCATTERING_BANK_M99], print_output);
    //Params::_().init(files_buff[POINT_LIGHT_BANK_M99], print_output);
    //Params::_().init(files_buff[SHADOW_BANK_M99], print_output);
    //Params::_().init(files_buff[TONE_CORRECT_BANK_M99], print_output);
    //Params::_().init(files_buff[TONE_MAP_BANK_M99], print_output);
    //Params::_().init(files_buff[LIGHT_BANK_S99], print_output);
    
    // Restore original instructions
    unpatch();
}

} // namespace Params

