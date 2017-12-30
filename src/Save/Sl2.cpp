/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce    -  C++

*/


#include "Save/Sl2.h"

// Default slot title prefix
const char    *SaveFile::SLOT_TITLE_PREFIX_DEFAULT   =  "USER_DATA"; // (char)
const wchar_t *SaveFile::SLOT_TITLE_PREFIX_DEFAULT_W = L"USER_DATA"; // (wide char)

// Default file name for save file
const char    *SaveFile::FILE_NAME_DEFAULT = "DRAKS0005"; // (char)
const wchar_t *SaveFile::FILE_NAME_DEFAULT_W = L"DRAKS0005"; // (wide char)

// Default file extension for save file
const char    *SaveFile::FILE_EXT = ".sl2"; // (char)
const wchar_t *SaveFile::FILE_EXT_W = L".sl2"; // (wide char)

// MD5 hash value of the header checksum of all usable save slots when all save slots are empty
const uint8_t SaveFile::CHECKSUM_HEADER_DEFAULT[16] = { 0x95, 0x6A, 0x34, 0xF3, 0x87, 0x95, 0x85, 0x4B, 0x1E, 0x1E, 0x1E, 0x70, 0xA2, 0xB2, 0x82, 0xF5 };
// MD5 hash value of the header checksum of the last (unusable) save slot when all save slots are empty
const uint8_t SaveFile::CHECKSUM_FOOTER_DEFAULT[16] = { 0x83, 0xD1, 0xE9, 0xD1, 0x5C, 0x23, 0x8E, 0xCA, 0x8B, 0x1D, 0x94, 0xB3, 0x20, 0x3B, 0x30, 0x23 };