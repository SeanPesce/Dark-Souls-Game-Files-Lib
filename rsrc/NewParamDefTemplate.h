/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce  -  C++


    Param/New.h

    New Parameters as defined in NewParam.paramdef

*/
#pragma once

#ifndef DS1_FILE_LIB_NEW_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_NEW_PARAM_DEF_FILE_H_


#include "Param.h"


// New parameters
typedef struct NewParameter : public Param {
    @TODO
} NewParam;



// New parameter data manipulation class
class NewParamDef : public ParamDef {

public:
    static NewParamDef& get_instance()
    {
        static NewParamDef instance;
        return instance;
    }

    NewParam *data()
    {
        return (NewParam*)ParamDef::data();
    }

    NewParam *get(int index)
    {
        return (NewParam*)ParamDef::get(index);
    }

private:
    NewParamDef()
        : ParamDef(/* @TODO: NULL, sizeof(NewParam),
                   "scan_pattern",
                   "NewParam", "title" */)
    {
    }

public:
    NewParamDef(NewParamDef const&) = delete;
    void operator=(NewParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_NEW_PARAM_DEF_FILE_H_
