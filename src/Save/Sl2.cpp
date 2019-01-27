/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce    -  C++

*/

#include "Save/Sl2.h"

const unsigned char SaveFile::SAVE_KEY[AES_KEYLEN] = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xAB, 0xCD, 0xEF, 0xFE, 0xDC, 0xBA, 0x98, 0x76, 0x54, 0x32, 0x10 };

// Default slot title prefix
const char    *SaveFile::SLOT_TITLE_PREFIX_DEFAULT   =  "USER_DATA"; // (char)
const wchar_t *SaveFile::SLOT_TITLE_PREFIX_DEFAULT_W = L"USER_DATA"; // (wide char)

// Default file name for save file
const char    *SaveFile::FILE_NAME_DEFAULT = "DRAKS0005"; // (char)
const wchar_t *SaveFile::FILE_NAME_DEFAULT_W = L"DRAKS0005"; // (wide char)

// Default file extension for save file
const char    *SaveFile::FILE_EXT = ".sl2"; // (char)
const wchar_t *SaveFile::FILE_EXT_W = L".sl2"; // (wide char)

const uint8_t SaveFile::IV_HEADER_DEFAULT[16] = { 0x0D, 0xD4, 0xA2, 0x95, 0x35, 0x42, 0x71, 0x69, 0x26, 0xE6, 0xEC, 0xEC, 0x4D, 0xAF, 0x34, 0xF6 };
// MD5 hash value of the header checksum of all usable save slots when all save slots are empty
const uint8_t SaveFile::CHECKSUM_HEADER_DEFAULT[16] = { 0x49, 0x5C, 0xA5, 0x2B, 0xA2, 0x48, 0xBB, 0xDE, 0x0B, 0xB4, 0xB5, 0x17, 0x3F, 0x6E, 0x2E, 0x1D };
// Padding used at the end of each save slot
const uint8_t SaveFile::SAVESLOT_FOOTER_DEFAULT[16] = { 0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C };
