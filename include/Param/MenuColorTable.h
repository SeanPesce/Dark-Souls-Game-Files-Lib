/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce    -    C++


    Param/MenuColor.h

    Menu Color Parameters from MenuColorParam.paramdef


    References:
        - Burton Radons' ParamDefs Sheet
          https://docs.google.com/spreadsheets/d/1KukblWL61We64-gNIyaAShga9h8RTXYmyFs98eQhY4E/

        - Kushisushi's ParamDefs Sheet
          https://docs.google.com/spreadsheets/d/1QX6i93H4_jGZ0So9mArDECnuv1lfkaJQhXOzkDuxdkE/edit#gid=2133439974

*/
#pragma once

#ifndef DS1_FILE_LIB_MENU_COLOR_TABLE_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_MENU_COLOR_TABLE_PARAM_DEF_FILE_H_


#include "Param.h"


// MenuColor parameters
typedef struct MenuColorParameter : public Param {

    uint8_t
        R = 0, // Red
        G = 0, // Green
        B = 0, // Blue
        A = 0; // Alpha

} MenuColorParam;



// MenuColor parameter data manipulation class
class MenuColorParamDef : public ParamDef {

public:
    static MenuColorParamDef& get_instance()
    {
        static MenuColorParamDef instance;
        return instance;
    }

    MenuColorParam *data()
    {
        return (MenuColorParam*)ParamDef::data();
    }

    MenuColorParam *get(int index)
    {
        return (MenuColorParam*)ParamDef::get(index);
    }


private:
    MenuColorParamDef()
        : ParamDef(NULL, /*0x3FC, 81,*/ sizeof(MenuColorParam),
                   //"40 05 00 00 ?? ?? 01 00 01 00 ?? ?? 4D 45 4E 55",
                   "?? ?? ?? ?? ?? ?? 01 00 01 00 ?? ?? 4D 45 4E 55 5F 50 41 52 41 4D 5F 43 4F 4C 4F 52 5F 54 41 42 4C 45 5F 53 54 00",
                   "MenuColorTableParam", "Menu Color")
    {
    }

public:
    MenuColorParamDef(MenuColorParamDef const&) = delete;
    void operator=(MenuColorParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_MENU_COLOR_TABLE_PARAM_DEF_FILE_H_
