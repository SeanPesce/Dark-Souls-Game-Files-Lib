/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce    -    C++


    Param/Draw/LodBank.h

    Level of Detail Bank Parameters as defined in LodBank.paramdef

*/
#pragma once

#ifndef DS1_FILE_LIB_LOD_BANK_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_LOD_BANK_PARAM_DEF_FILE_H_


#include "Param/Param.h"


// LoD Bank parameters
typedef struct LodBankParameter : public Param {

    float
        lv01_BorderDist = 0.0f, // Switching center
        lv01_PlayDist   = 0.0f, // +/- play at the boundary center
        lv12_BorderDist = 0.0f, // Switching center
        lv12_PlayDist   = 0.0f; // +/- play at the boundary center

} LodBankParam;


// LodBank parameter data manipulation class
class LodBankParamDef : public ParamDef {

public:
    static LodBankParamDef& get_instance()
    {
        static LodBankParamDef instance;
        return instance;
    }

    LodBankParam *data()
    {
        return (LodBankParam*)ParamDef::data();
    }

    LodBankParam *get(int index)
    {
        return (LodBankParam*)ParamDef::get(index);
    }

private:
    LodBankParamDef()
        : ParamDef(NULL, sizeof(LodBankParam),
            "@TODO",
            "LodBankParam", "Level of Detail Bank")
    {
    }

public:
    LodBankParamDef(LodBankParamDef const&) = delete;
    void operator=(LodBankParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_LOD_BANK_PARAM_DEF_FILE_H_
