/*
	DARK SOULS OVERHAUL

	Contributors to this file:
		Sean Pesce	-	C++


	GameFiles/ParamDef.h

	ParamDef namespace header, used to reference ParamDef classes
	more intuitively.

*/

#pragma once

#ifndef _DS1_OVERHAUL_PARAM_DEF_NAMESPACE_H_
	#define _DS1_OVERHAUL_PARAM_DEF_NAMESPACE_H_



#include "ParamDef/ArmorParamDef.h"
#include "ParamDef/AIStandardInfoParamDef.h"
#include "ParamDef/BehaviorNPCParamDef.h"
#include "ParamDef/BehaviorPCParamDef.h"
#include "ParamDef/BulletParamDef.h"
#include "ParamDef/CharInitParamDef.h"
#include "ParamDef/ItemLotParamDef.h"
#include "ParamDef/ItemParamDef.h"
#include "ParamDef/LockCamParamDef.h"
#include "ParamDef/MagicParamDef.h"
#include "ParamDef/MaterialSetParamDef.h"
#include "ParamDef/MenuColorTableParamDef.h"
#include "ParamDef/MoveParamDef.h"
#include "ParamDef/NPCParamDef.h"
#include "ParamDef/NPCThinkParamDef.h"
#include "ParamDef/ShopLineupParamDef.h"
#include "ParamDef/SpecialEffectParamDef.h"
#include "ParamDef/SpecialEffectVFXParamDef.h"
#include "ParamDef/ThrowParamDef.h"
#include "ParamDef/WeaponParamDef.h"



namespace ParamDef {

	// Draw types for human NPCs (doesn't affect players)
	enum DS1_NPC_PLAYER_DRAW_TYPE {
		NPC_PLAYER_DRAW_TYPE_HUMAN = 0,
		NPC_PLAYER_DRAW_TYPE_WHITE_PHANTOM = 1,
		NPC_PLAYER_DRAW_TYPE_RED_PHANTOM = 2,
		NPC_PLAYER_DRAW_TYPE_RED_PHANTOM_2 = 3,
		NPC_PLAYER_DRAW_TYPE_HOLLOW = 4
	};

	// Draw types for enemy NPCs
	enum DS1_NPC_DRAW_TYPE {
		NPC_DRAW_TYPE_NORMAL = 0,
		NPC_DRAW_TYPE_WHITE_PHANTOM = 1,
		NPC_DRAW_TYPE_RED_PHANTOM = 2,
		NPC_DRAW_TYPE_RED_PHANTOM_2 = 3,
		NPC_DRAW_TYPE_HOLLOW = 4
	};


	// Default AI parameters
	static AiStandardInfoParamDef& AiStandardInfo() { return AiStandardInfoParamDef::get_instance(); }

	// Armor parameters
	static ArmorParamDef& Armor() { return ArmorParamDef::get_instance(); }
	//static ArmorParamDef& Protector() { return ArmorParamDef::get_instance(); } // Alias for armor params
	//static ArmorParamDef& EquipProtector() { return ArmorParamDef::get_instance(); } // Alias for Armor params

	// NPC Behavior parameters
	static BehaviorNpcParamDef& BehaviorNpc() { return BehaviorNpcParamDef::get_instance(); }

	// PC (Player character) Behavior parameters
	static BehaviorPcParamDef& BehaviorPc() { return BehaviorPcParamDef::get_instance(); }

	// Bullet (projectile) parameters
	static BulletParamDef& Bullet() { return BulletParamDef::get_instance(); }
	//static BulletParamDef& Projectile() { return BulletParamDef::get_instance(); } // Alias for Bullet

	// Camera lock paramters
	static LockCamParamDef& LockCam() { return LockCamParamDef::get_instance(); }
	static LockCamParamDef& CamLock() { return LockCamParamDef::get_instance(); } // Alias for LockCam

	// Character initializer parameters (Human NPCs)
	static CharInitParamDef& CharInit() { return CharInitParamDef::get_instance(); }
	//static CharInitParamDef& NpcChar() { return CharInitParamDef::get_instance(); } // Alias for CharInit

	// Item parameters
	static ItemParamDef& Item() { return ItemParamDef::get_instance(); }
	static ItemParamDef& Goods() { return ItemParamDef::get_instance(); } // Alias for Item params

	// Item Lot parameters
	static ItemLotParamDef& ItemLot() { return ItemLotParamDef::get_instance(); }

	// Magic parameters
	static MagicParamDef& Magic() { return MagicParamDef::get_instance(); }

	// Material set parameters
	static MaterialSetParamDef& MaterialSet() { return MaterialSetParamDef::get_instance(); }

	// Menu color parameters
	static MenuColorParamDef& MenuColor() { return MenuColorParamDef::get_instance(); }

	// Movement parameters
	static MoveParamDef& Move() { return MoveParamDef::get_instance(); }

	// NPC parameters
	static NpcParamDef& Npc() { return NpcParamDef::get_instance(); }
	//static NpcParamDef& Enemy() { return NpcParamDef::get_instance(); } // Alias for Npc params

	// NPC Thought parameters
	static NpcThinkParamDef& NpcThink() { return NpcThinkParamDef::get_instance(); }

	// Shop lineup parameters
	static ShopLineupParamDef& ShopLineup() { return ShopLineupParamDef::get_instance(); }

	// Special effect parameters
	static SpEffectParamDef& SpEffect() { return SpEffectParamDef::get_instance(); }

	// Special effect visual effects parameters
	static SpEffectVfxParamDef& SpEffectVfx() { return SpEffectVfxParamDef::get_instance(); }

	// Throw parameters
	static ThrowParamDef& Throw() { return ThrowParamDef::get_instance(); }

	// Weapon parameters
	static WeaponParamDef& Weapon() { return WeaponParamDef::get_instance(); }

}



#endif _DS1_OVERHAUL_PARAM_DEF_NAMESPACE_H_