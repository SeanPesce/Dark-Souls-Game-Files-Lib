/*
	DARK SOULS OVERHAUL

	Contributors to this file:
		Sean Pesce	-	C++


	GameFiles/ParamDef/LockCamParamDef.h

	LockCam Parameters from LockCamParam.paramdef


	References:
		- (Author?) ParamDefs Sheet
		  https://docs.google.com/spreadsheets/d/1KukblWL61We64-gNIyaAShga9h8RTXYmyFs98eQhY4E/

		- Kushisushi's ParamDefs Sheet
		  https://docs.google.com/spreadsheets/d/1QX6i93H4_jGZ0So9mArDECnuv1lfkaJQhXOzkDuxdkE/edit#gid=2133439974

*/

#pragma once

#ifndef _DS1_OVERHAUL_LOCK_CAM_PARAM_DEF_FILE_H_
	#define _DS1_OVERHAUL_LOCK_CAM_PARAM_DEF_FILE_H_


#include "GameParamDef.h"


// LockCam parameter
typedef struct LockCamParameter : public Param {
	float camDistTarget = 4.0f;           // For camera
	float rotRangeMinX = -40.0f;          // For camera
	float lockRotXShiftRatio = 0.6f;      // For camera
	float chrOrgOffset_Y = 1.42f;         // For camera
	float chrLockRangeMaxRadius = 15.0f;  // For lock
	float camFovY = 43.0f;                // For camera
	uint8_t pad[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
} LockCamParam;



// LockCam parameter definitions file
class LockCamParamDef : public GameParamDef {


public:
	static LockCamParamDef& get_instance()
	{
		static LockCamParamDef instance;
		return instance;
	}
	
	LockCamParam *data()
	{
		return (LockCamParam*)GameParamDef::data();
	}

	LockCamParam *get(int index)
	{
		return (LockCamParam*)GameParamDef::get(index);
	}


	// @TODO: Member data specific to this class
	
private:
	LockCamParamDef()
		: GameParamDef(NULL, /*0x1F8, 38,*/ sizeof(LockCamParam),
			"C0 06 00 00 ?? ?? 00 00 01 00 ?? ?? 4C 4F 43 4B",
			"LockCam", "Camera lock")
	{
	}
	
public:
	LockCamParamDef(LockCamParamDef const&) = delete;
	void operator=(LockCamParamDef const&) = delete;
};







#endif // _DS1_OVERHAUL_LOCK_CAM_PARAM_DEF_FILE_H_
