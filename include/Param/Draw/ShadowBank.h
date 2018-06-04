/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/Draw/ShadowBank.h

    Shadow Bank Parameters as defined in ShadowBank.paramdef

*/
#pragma once

#ifndef DS1_FILE_LIB_SHADOW_BANK_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_SHADOW_BANK_PARAM_DEF_FILE_H_


#include "Param/Param.h"


// ShadowBank parameters
typedef struct ShadowBankParameter : public Param {

    int16_t
        lightDegRotX = -90,  // X angle of the light source that casts a shadow on the map
        lightDegRotY = -180, // Y angle of the light source that casts a shadow on the map
        densityRatio =  0,   // It becomes the darkest at 100%
        colR         =  0,   // Red (0-255)
        colG         =  0,   // Green (0-255)
        colB         =  0;   // Blue (0-255)

    float
        beginDist         =  0.0f, // If you leave it to 0, use the camera's near clip
        endDist           =  0.0f, // End distance (meters)
        calibulateFar     =  0.0f, // Shorten the end distance by the specified distance when facing the light source direction
        fadeBeginDist     =  0.0f, // Fade start distance (meters)
        fadeDist          = -1.0f, // Fade distance (meters)
        persedDepthOffset = -1.0f, // As Z offset (meters) (-) is set, it becomes difficult for self shadow to appear (for PSM)
        radFactor         = -3.0f, // Decreases the parsing of the shadow map
        shadowVolumeDepth =  1.0f; // Increase the value if you want to lower the shadow of high objects such as buildings

} ShadowBankParam;



// ShadowBank parameter data manipulation class
class ShadowBankParamDef : public ParamDef {

public:
    static ShadowBankParamDef& get_instance()
    {
        static ShadowBankParamDef instance;
        return instance;
    }

    ShadowBankParam *data()
    {
        return (ShadowBankParam*)ParamDef::data();
    }

    ShadowBankParam *get(int index)
    {
        return (ShadowBankParam*)ParamDef::get(index);
    }

private:
    ShadowBankParamDef()
        : ParamDef(NULL, sizeof(ShadowBankParam),
                   "@TODO",
                   "ShadowBankParam", "Shadow Bank")
    {
    }

public:
    ShadowBankParamDef(ShadowBankParamDef const&) = delete;
    void operator=(ShadowBankParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_SHADOW_BANK_PARAM_DEF_FILE_H_
