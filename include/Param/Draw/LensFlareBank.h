/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/Draw/LensFlareBank.h

    Lens Flare Bank Parameters as defined in LensFlareBank.paramdef

*/
#pragma once

#ifndef DS1_FILE_LIB_LENS_FLARE_BANK_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_LENS_FLARE_BANK_PARAM_DEF_FILE_H_


#include "Param/Param.h"


// LensFlareBank parameters
typedef struct LensFlareBankParameter : public Param {

    int8_t
        texId = -1; // Texture (lensflare_ ??)

    uint8_t
        isFlare     = 0, // 0: Ghost, 1: Flare
        enableRoll  = 0, // 0: Invalid, 1: Valid
        enableScale = 0; // 0: Invalid, 1: Valid

    float
        locateDistRate = -10.0f, // 0.0: Light source position ~ 1.0: Center of the screen
        texScale       =   0.0f; // Scale of texture

    int16_t
        colR = 0, // Texture multiply color (Red)
        colG = 0, // Texture multiply color (Green)
        colB = 0, // Texture multiply color (Blue)
        colA = 0; // Texture multiply color (Alpha/opacity)

} LensFlareBankParam;



// LensFlareBank parameter data manipulation class
class LensFlareBankParamDef : public ParamDef {

public:
    static LensFlareBankParamDef& get_instance()
    {
        static LensFlareBankParamDef instance;
        return instance;
    }

    LensFlareBankParam *data()
    {
        return (LensFlareBankParam*)ParamDef::data();
    }

    LensFlareBankParam *get(int index)
    {
        return (LensFlareBankParam*)ParamDef::get(index);
    }

private:
    LensFlareBankParamDef()
        : ParamDef(NULL, sizeof(LensFlareBankParam),
                   "@TODO",
                   "LensFlareBankParam", "Lens Flare Bank")
    {
    }

public:
    LensFlareBankParamDef(LensFlareBankParamDef const&) = delete;
    void operator=(LensFlareBankParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_LENS_FLARE_BANK_PARAM_DEF_FILE_H_
