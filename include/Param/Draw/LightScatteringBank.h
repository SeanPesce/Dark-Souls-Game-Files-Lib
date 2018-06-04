/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/Draw/LightScatteringBank.h

    Light Scattering Bank Parameters as defined in LightScatteringBank.paramdef

*/
#pragma once

#ifndef DS1_FILE_LIB_LIGHT_SCATTERING_BANK_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_LIGHT_SCATTERING_BANK_PARAM_DEF_FILE_H_


#include "Param/Param.h"


// LightScatteringBank parameters
typedef struct LightScatteringBankParameter : public Param {

    int16_t
        sunRotX     = -90,  // Light source
        sunRotY     = -180, // Light source
        distanceMul =  0,   // Distance magnification [%] (0 to 1000)
        sunR        =  0,   // Light source
        sunG        =  0,   // Light source
        sunB        =  0,   // Light source
        sunA        =  0;   // Light source

    uint8_t
        pad_0[2] = { 0, 0 }; // Padding

    float
        lsHGg     = -0.99f, // Scattering direction coefficient (-1: backward 1: forward)
        lsBetaRay =  0.0f,  // Rayleigh scattering coefficient (molecule of air)
        lsBetaMie =  0.0f;  // Mie scattering coefficient (fine particle)

    int16_t
        blendCoef    = 0, // Scattering engagement (maximum at 100)
        reflectanceR = 0, // Diffuse reflection light color on the ground
        reflectanceG = 0, // Diffuse reflection light color on the ground
        reflectanceB = 0, // Diffuse reflection light color on the ground
        reflectanceA = 0; // Diffuse reflection light color on the ground

    uint8_t
        pad_1[2] = { 0, 0 }; // Padding

} LightScatteringBankParam;



// LightScatteringBank parameter data manipulation class
class LightScatteringBankParamDef : public ParamDef {

public:
    static LightScatteringBankParamDef& get_instance()
    {
        static LightScatteringBankParamDef instance;
        return instance;
    }

    LightScatteringBankParam *data()
    {
        return (LightScatteringBankParam*)ParamDef::data();
    }

    LightScatteringBankParam *get(int index)
    {
        return (LightScatteringBankParam*)ParamDef::get(index);
    }

private:
    LightScatteringBankParamDef()
        : ParamDef(NULL, sizeof(LightScatteringBankParam),
                   "@TODO",
                   "LightScatteringBankParam", "Light Scattering Bank")
    {
    }

public:
    LightScatteringBankParamDef(LightScatteringBankParamDef const&) = delete;
    void operator=(LightScatteringBankParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_LIGHT_SCATTERING_BANK_PARAM_DEF_FILE_H_
