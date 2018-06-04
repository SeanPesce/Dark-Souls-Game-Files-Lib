/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce    -    C++


    Param/ArmorReinforcement.h

    Armor Reinforcement Parameters from ReinforceParamProtector.paramdef


    References:
        - Burton Radons' ParamDefs Sheet
          https://docs.google.com/spreadsheets/d/1KukblWL61We64-gNIyaAShga9h8RTXYmyFs98eQhY4E/

        - Kushisushi's ParamDefs Sheet
          https://docs.google.com/spreadsheets/d/1QX6i93H4_jGZ0So9mArDECnuv1lfkaJQhXOzkDuxdkE/edit#gid=2133439974

*/
#pragma once

#ifndef DS1_FILE_LIB_ARMOR_REINFORCEMENT_PARAM_DEF_FILE_H_
    #define DS1_FILE_LIB_ARMOR_REINFORCEMENT_PARAM_DEF_FILE_H_


#include "Param.h"


// ArmorReinforce parameters
typedef struct ArmorReinforceParameter : public Param {

    float
        physicsDefRate = 1, // Physical defense correction value
        magicDefRate = 1, // Magic defense correction value
        fireDefRate = 1, // Flame defense correction value
        thunderDefRate = 1, // Electric shock defense correction value
        slashDefRate = 1, // Correction value of slashing defense force
        blowDefRate = 1, // Corrected value of batting defense force
        thrustDefRate = 1, // Corrective puncture defense correction value
        resistPoisonRate = 1, // Correction value of poison resistance
        resistDiseaseRate = 1, // Corrected value of plague tolerance
        resistBloodRate = 1, // Correction value of bleeding tolerance
        resistCurseRate = 1; // Curse resistance correction value

    uint8_t
        residentSpEffectId1 = 0, // Addition correction value of resident special effect ID 1
        residentSpEffectId2 = 0, // Additive correction value of resident special effect ID 2
        residentSpEffectId3 = 0, // Addition correction value of resident special effect ID 3
        materialSetId = 0; // Addition correction value of material parameter ID

} ArmorReinforceParam;



// ArmorReinforce parameter data manipulation class
class ArmorReinforceParamDef : public ParamDef {

public:
    static ArmorReinforceParamDef& get_instance()
    {
        static ArmorReinforceParamDef instance;
        return instance;
    }

    ArmorReinforceParam *data()
    {
        return (ArmorReinforceParam*)ParamDef::data();
    }

    ArmorReinforceParam *get(int index)
    {
        return (ArmorReinforceParam*)ParamDef::get(index);
    }


private:
    ArmorReinforceParamDef()
        : ParamDef(NULL, sizeof(ArmorReinforceParam),
                   //"30 04 00 00 ?? ?? 00 00 01 00 ?? ?? 52 45 49 4E",
                   "?? ?? ?? ?? ?? ?? 00 00 01 00 ?? ?? 52 45 49 4E 46 4F 52 43 45 5F 50 41 52 41 4D 5F 50 52 4F 54 45 43 54 4F 52 5F 53 54 00",
                   "ReinforceParamProtector", "Armor Reinforcement")
    {
    }

public:
    ArmorReinforceParamDef(ArmorReinforceParamDef const&) = delete;
    void operator=(ArmorReinforceParamDef const&) = delete;
};

#endif // DS1_FILE_LIB_ARMOR_REINFORCEMENT_PARAM_DEF_FILE_H_
