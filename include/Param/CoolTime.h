/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/CoolTime.h

    Cool Time Parameters from CoolTimeParam.paramdef

    NOTE: These parameters only exist in Dark Souls: Remastered.

*/

#pragma once

#ifndef DS1_FILE_LIB_COOL_TIME_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_COOL_TIME_PARAM_DEF_FILE_H_


#include "Param.h"


// CoolTime parameter
typedef struct CoolTimeParameter : public Param {

    // @TODO: Description comments

    float
        limitationTime_0  = 0.0f,
        observationTime_0 = 0.0f,
        limitationTime_1  = 0.0f,
        observationTime_1 = 0.0f,
        limitationTime_2  = 0.0f,
        observationTime_2 = 0.0f,
        limitationTime_3  = 0.0f,
        observationTime_3 = 0.0f;

} CoolTimeParam;



// CoolTime parameter definitions file
class CoolTimeParamDef : public ParamDef {


public:
    static CoolTimeParamDef& get_instance()
    {
        static CoolTimeParamDef instance;
        return instance;
    }
    
    CoolTimeParam *data()
    {
        return (CoolTimeParam*)ParamDef::data();
    }

    CoolTimeParam *get(int index)
    {
        return (CoolTimeParam*)ParamDef::get(index);
    }
    
private:
    CoolTimeParamDef()
        : ParamDef(NULL, sizeof(CoolTimeParam),
                   "?? ?? ?? ?? ?? ?? 01 00 08 00 ?? ?? 43 4F 4F 4C 5F 54 49 4D 45 5F 50 41 52 41 4D 5F 53 54 00",
                   "CoolTimeParam", "CoolTime")
    {
    }
    
public:
    CoolTimeParamDef(CoolTimeParamDef const&) = delete;
    void operator=(CoolTimeParamDef const&) = delete;
};







#endif // DS1_FILE_LIB_COOL_TIME_PARAM_DEF_FILE_H_
