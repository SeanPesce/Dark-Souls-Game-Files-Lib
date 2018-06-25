/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce    -  C++

*/


#include "Param/Param.h"



// File extension for parameter definition files
const char    *ParamDef::FILE_EXT = ".paramdef"; // char
const wchar_t *ParamDef::FILE_EXT_W = L".paramdef"; // wide char

// File extension for parameter data files
const char    *Param::FILE_EXT = ".param"; // char
const wchar_t *Param::FILE_EXT_W = L".param"; // wide char

// Name string for GameParam.parambnd
const char *ParamDef::game_param_bnd = "/param/GameParam/GameParam.parambnd";

// Name string for GameParam.parambnd.dcx (used for comparing hashes)
const char *ParamDef::game_param_dcx = "/param/GameParam/GameParam.parambnd.dcx";

