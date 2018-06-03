/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/LevelSync.h

    Level Synchronization Parameters from LevelSyncParam.paramdef

    NOTE: These parameters only exist in Dark Souls: Remastered.

*/

#pragma once

#ifndef DS1_FILE_LIB_LEVEL_SYNC_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_LEVEL_SYNC_PARAM_DEF_FILE_H_


#include "Param.h"


// LevelSync parameter
typedef struct LevelSyncParameter : public Param {

    // @TODO: Description comments

    int16_t
        SCLUA  = 0,
        SDCLUR = 0,
        SDCWLM = 0;

    uint8_t
        MLWSUR   = 0,
        MLWSUA   = 0,
        MLRSUR   = 0,
        MLRSUA   = 0,
        MWLUWS0  = 0,
        MWLUWS1  = 0,
        MWLUWS2  = 0,
        MWLUWS3  = 0,
        MWLUWS4  = 0,
        MWLUWS5  = 0,
        MWLUWS6  = 0,
        MWLUWS7  = 0,
        MWLUWS8  = 0,
        MWLUWS9  = 0,
        MWLUWS10 = 0,
        MWLURS0  = 0,
        MWLURS1  = 0,
        MWLURS2  = 0,
        MWLURS3  = 0,
        MWLURS4  = 0,
        MWLURS5  = 0,
        MWLURS6  = 0,
        MWLURS7  = 0,
        MWLURS8  = 0,
        MWLURS9  = 0,
        MWLURS10 = 0,
        MWLUA0   = 0,
        MWLUA1   = 0,
        MWLUA2   = 0,
        MWLUA3   = 0,
        MWLUA4   = 0,
        MWLUA5   = 0,
        MWLUA6   = 0,
        MWLUA7   = 0,
        MWLUA8   = 0,
        MWLUA9   = 0,
        MWLUA10  = 0,
        MLASUR   = 0,
        MLASUA   = 0;

    uint8_t
        Pad[3] = { 0, 0, 0 }; // Padding

    float
        summonTimeoutTime    = 0.0f,
        singGetMax           = 0.0f,
        signDownloadSpan     = 0.0f,
        nitoSignDownloadSpan = 0.0f,
        signUpdateSpan       = 0.0f;

    uint32_t
        maxBreakInTargetListCount = 0;

    float
        breakInRequestIntervalTimeSec = 0.0f,
        breakInRequestTimeOutSec      = 0.0f;

    uint32_t
        reloadSignTotalCount_0 = 0;

    float
        reloadSignIntervalTime_0 = 0.0f,
        reloadSignIntervalTime_1 = 0.0f;

    uint32_t
        reloadSignTotalCount_1 = 0,
        reloadSignCellCount    = 0;

    float reloadSignIntervalTime_2 = 0.0f;

    uint32_t
        reloadGhostTotalCount = 0,
        reloadGhostCellCount  = 0,
        maxGhostTotalCount    = 0;

    float
        updateWanderGhostIntervalTime = 0.0f,
        minReplayIntervalTime         = 0.0f,
        maxReplayIntervalTime         = 0.0f,
        reloadGhostIntervalTime       = 0.0f,
        replayBonfireModeRange        = 0.0f,
        wanderGhostIntervalLifeTime   = 0.0f,
        summonMessageInterval         = 0.0f,
        hostRegisterUpdateTime        = 0.0f;

    uint32_t
        requestSearchQuickMatchLimit = 0;

    float
        myTeamInviteTimeoutTime = 0.0f;

    uint32_t
        VisitorListMax = 0;

    float
        VisitorTimeOutTime           = 0.0f,
        DownloadSpan                 = 0.0f,
        bonfireLowerBoundCoolTime    = 0.0f,
        bonfireUpperBoundCoolTime    = 0.0f,
        resonanceMagicDbDistInterval = 0.0f,
        inputTimeoutSec      = 0.0f,
        generalPurposeParam1 = 0.0f,
        generalPurposeParam2 = 0.0f,
        generalPurposeParam3 = 0.0f,
        generalPurposeParam4 = 0.0f,
        generalPurposeParam5 = 0.0f;

    uint8_t
        MWLUWS_11 = 0,
        MWLUWS_12 = 0,
        MWLUWS_13 = 0,
        MWLUWS_14 = 0,
        MWLUWS_15 = 0,
        MWLURS_11 = 0,
        MWLURS_12 = 0,
        MWLURS_13 = 0,
        MWLURS_14 = 0,
        MWLURS_15 = 0,
        MWLUAR_11 = 0,
        MWLUAR_12 = 0,
        MWLUAR_13 = 0,
        MWLUAR_14 = 0,
        MWLUAR_15 = 0,
        generalPurposeParam6 = 0;

} LevelSyncParam;



// LevelSync parameter definitions file
class LevelSyncParamDef : public ParamDef {


public:
    static LevelSyncParamDef& get_instance()
    {
        static LevelSyncParamDef instance;
        return instance;
    }
    
    LevelSyncParam *data()
    {
        return (LevelSyncParam*)ParamDef::data();
    }

    LevelSyncParam *get(int index)
    {
        return (LevelSyncParam*)ParamDef::get(index);
    }
    
private:
    LevelSyncParamDef()
        : ParamDef(NULL, sizeof(LevelSyncParam),
                   "?? ?? ?? ?? ?? ?? 01 00 62 00 ?? ?? 4C 45 56 45 4C 53 59 4E 43 5F 50 41 52 41 4D 5F 53 54 00",
                   "LevelSyncParam", "LevelSync")
    {
    }
    
public:
    LevelSyncParamDef(LevelSyncParamDef const&) = delete;
    void operator=(LevelSyncParamDef const&) = delete;
};







#endif // DS1_FILE_LIB_LEVEL_SYNC_PARAM_DEF_FILE_H_
