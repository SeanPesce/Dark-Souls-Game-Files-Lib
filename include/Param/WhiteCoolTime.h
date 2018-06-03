/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/WhiteCoolTime.h

    White Cool Time Parameters from WhiteCoolTimeParam.paramdef

    NOTE: These parameters only exist in Dark Souls: Remastered.

*/

#pragma once

#ifndef DS1_FILE_LIB_WHITE_COOL_TIME_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_WHITE_COOL_TIME_PARAM_DEF_FILE_H_


#include "Param.h"


// WhiteCoolTime parameter
typedef struct WhiteCoolTimeParameter : public Param {

    // @TODO: Description comments

    float
        timeLimit0 = 0.0f,
        timeLimit1 = 0.0f,
        timeLimit2 = 0.0f,
        timeLimit3 = 0.0f;

} WhiteCoolTimeParam;



// WhiteCoolTime parameter definitions file
class WhiteCoolTimeParamDef : public ParamDef {


public:
    static WhiteCoolTimeParamDef& get_instance()
    {
        static WhiteCoolTimeParamDef instance;
        return instance;
    }
    
    WhiteCoolTimeParam *data()
    {
        return (WhiteCoolTimeParam*)ParamDef::data();
    }

    WhiteCoolTimeParam *get(int index)
    {
        return (WhiteCoolTimeParam*)ParamDef::get(index);
    }
    
private:
    WhiteCoolTimeParamDef()
        : ParamDef(NULL, sizeof(WhiteCoolTimeParam),
                   "?? ?? ?? ?? ?? ?? 01 00 04 00 ?? ?? 57 48 49 54 45 5F 43 4F 4F 4C 5F 54 49 4D 45 5F 50 41 52 41 4D 5F 53 54 00", 
                   "WhiteCoolTimeParam", "WhiteCoolTime")
    {
    }
    
public:
    WhiteCoolTimeParamDef(WhiteCoolTimeParamDef const&) = delete;
    void operator=(WhiteCoolTimeParamDef const&) = delete;
};







#endif // DS1_FILE_LIB_WHITE_COOL_TIME_PARAM_DEF_FILE_H_
