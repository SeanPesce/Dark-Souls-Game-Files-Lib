/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/Draw/LensFlareExBank.h

    Lens Flare Ex Bank Parameters as defined in LensFlareExBank.paramdef

*/
#pragma once

#ifndef DS1_FILE_LIB_LENS_FLARE_EX_BANK_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_LENS_FLARE_EX_BANK_PARAM_DEF_FILE_H_


#include "Param/Param.h"


// LensFlareExBank parameters
typedef struct LensFlareExBankParameter : public Param {

    int16_t
        lightDegRotX = -90,  // X angle of light source
        lightDegRotY = -180, // Y angle of light source
        colR         =  0,   // Lens flare multiplication color (Red)
        colG         =  0,   // Lens flare multiplication color (Green)
        colB         =  0,   // Lens flare multiplication color (Blue)
        colA         =  0;   // Lens flare multiplication color (Alpha/opacity)

    float
        lightDist    =  0.0f; // Light source distance

} LensFlareExBankParam;



// LensFlareExBank parameter data manipulation class
class LensFlareExBankParamDef : public ParamDef {

public:
    static LensFlareExBankParamDef& get_instance()
    {
        static LensFlareExBankParamDef instance;
        return instance;
    }

    LensFlareExBankParam *data()
    {
        return (LensFlareExBankParam*)ParamDef::data();
    }

    LensFlareExBankParam *get(int index)
    {
        return (LensFlareExBankParam*)ParamDef::get(index);
    }

private:
    LensFlareExBankParamDef()
        : ParamDef(NULL, sizeof(LensFlareExBankParam),
                   "@TODO",
                   "LensFlareExBankParam", "Lens Flare Ex Bank")
    {
    }

public:
    LensFlareExBankParamDef(LensFlareExBankParamDef const&) = delete;
    void operator=(LensFlareExBankParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_LENS_FLARE_EX_BANK_PARAM_DEF_FILE_H_
