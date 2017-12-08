/*
	DARK SOULS OVERHAUL
	
	Contributors to this file:
		Sean Pesce	-	C++
*/

#pragma once

#ifndef _DS1_OVERHAUL_GAME_FILES_H_
	#define _DS1_OVERHAUL_GAME_FILES_H_

#include "GameData.h"
#include "Shlobj.h"
#include "SP_IO.hpp"
#include "Archive/Bhd5Archive.h"
#include "Archive/BdtArchive.h"
#include "Archive/Bnd3Archive.h"
#include "Archive/DcxArchive.h"

//#include "GameFiles/FileList.h"


/*
	Initialize static data:
*/

// If true, console messages will be printed when the game performs certain actions on the game files
bool Files::monitor_file_activity = false;

// Default file name for save file
const char *Files::DEFAULT_SAVE_FILE_NAME = "DRAKS0005"; // (char)

// Default file type for game save file
const wchar_t *Files::DEFAULT_SAVE_FILE_TYPE_W = L".sl2"; // (wide char)
const char *Files::DEFAULT_SAVE_FILE_TYPE = ".sl2"; // (char)

// Default filename for Dark Souls BDT files
const char *BdtArchive::FILE_NAME_DEFAULT = "dvdbnd";

// BDT file extension
const char    *BdtArchive::FILE_EXTENSION   =  ".bdt"; // (char)
const wchar_t *BdtArchive::FILE_EXTENSION_W = L".bdt"; // (wide char)

// Default filename for Dark Souls BHD5 files
const char *Bhd5Archive::FILE_NAME_DEFAULT = "dvdbnd";

// Default BHD5 file extension
const char    *Bhd5Archive::FILE_EXTENSION   =  ".bhd5"; // (char)
const wchar_t *Bhd5Archive::FILE_EXTENSION_W = L".bhd5"; // (wide char)

// Default DCX archive file extension
const char    *DcxArchive::FILE_EXTENSION = ".dcx"; // char
const wchar_t *DcxArchive::FILE_EXTENSION_W = L".dcx"; // wide char

// File handles for archive header files
std::vector<HANDLE> Files::bhd_handle = { NULL, NULL, NULL, NULL };

// File handles for archive files
std::vector<HANDLE> Files::bdt_handle = { NULL, NULL, NULL, NULL };

// File handle for save file
HANDLE Files::sl2_handle = NULL;

// Searchable set of filenames for files stored in .bdt archives
SpSearchStringSetA Archive::bdt_file_set;

// Flag to denote that the list of packed .bdt files has finished loading
bool Archive::bdt_file_set_loaded = false;

// Name string for GameParam.parambnd
const char *GameParamDef::game_param_bnd = "/param/GameParam/GameParam.parambnd";

// Name string for GameParam.parambnd.dcx (used for comparing hashes)
const char *GameParamDef::game_param_dcx = "/param/GameParam/GameParam.parambnd.dcx";

// Record struct for GameParam.param.dcx (from dvdbnd1.bhd5)
Bhd5Record GameParamDef::game_param_dcx_record;

// File extension for parameter definition files
const char *GameParamDef::paramdef_extension = ".paramdef";

// File extension for parameter files
const char *GameParamDef::param_extension = ".param";




// Called when the game attempts to call CreateFileW
HANDLE WINAPI Files::intercept_create_file_w(LPCWSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode,
					LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition,
					DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
{
	HANDLE return_val;
	std::wstring load_file;
	std::wstring load_file_ext;
	bool important_file = false; // If true, the current file is a game archive or save file
	HANDLE *save_handle = NULL; // For saving important file handles

	if (lpFileName != NULL)
	{
		load_file = lpFileName;
		if ((int)load_file.length() > 4)
		{
			// Get the file extension of the file being loaded
			size_t index;
			if ((index = load_file.find_last_of(L'.')) != std::wstring::npos)
				load_file_ext = load_file.substr(index);
			else
				load_file_ext = L"";

			if (load_file_ext == BdtArchive::FILE_EXTENSION_W)
			{
				important_file = true;
				switch (load_file.at(index - 1))
				{
					case L'0':
						save_handle = &bdt_handle.data()[0];
						break;
					case L'1':
						save_handle = &bdt_handle.data()[1];
						break;
					case L'2':
						save_handle = &bdt_handle.data()[2];
						break;
					case L'3':
						save_handle = &bdt_handle.data()[3];
						break;
					default:
						break;
				}

				if ((int)Mod::custom_game_archives.length() > 0)
				{
					// Intercept archive file load (.bdt)
					load_file = Mod::custom_game_archives + load_file.substr(load_file.length() - 5);
				}
			}
			else if (load_file_ext == Bhd5Archive::FILE_EXTENSION_W)
			{
				important_file = true;
				switch (load_file.at(index - 1))
				{
					case L'0':
						save_handle = &bhd_handle.data()[0];
						break;
					case L'1':
						save_handle = &bhd_handle.data()[1];
						break;
					case L'2':
						save_handle = &bhd_handle.data()[2];
						break;
					case L'3':
						save_handle = &bhd_handle.data()[3];
						break;
					default:
						break;
				}

				if ((int)Mod::custom_game_archives.length() > 0)
				{
					// Intercept archive header file load (.bhd5)
					load_file = Mod::custom_game_archives + load_file.substr(load_file.length() - 6);
				}
			}
			else if (load_file_ext == Files::DEFAULT_SAVE_FILE_TYPE_W)
			{
				important_file = true;
				save_handle = &sl2_handle;

				if ((int)Mod::custom_save_file.length() > 0)
				{
					// Intercept save file load (.sl2)
					load_file = Mod::custom_save_file;
				}
			}
		}

		// Call original function
		return_val = CreateFileW(load_file.c_str(), dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
		// Store file handle
		if (save_handle != NULL && return_val != NULL)
			*save_handle = return_val;
	}
	else
	{
		// Call original function with original arguments
		return_val = CreateFileW(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
	}

	if (lpFileName != NULL && monitor_file_activity && important_file)
	{
		std::wstring file_name = lpFileName;
		size_t index;
		if ((index = file_name.find_last_of(L'/')) != std::wstring::npos)
			file_name = file_name.substr(index + 1);
		if ((index = file_name.find_last_of(L'\\')) != std::wstring::npos)
			file_name = file_name.substr(index + 1);
		std::string original_file;
		if (string_wide_to_mb((wchar_t*)file_name.c_str(), original_file))
			return return_val; // Handle error
		
		std::string out_msg = "CreateFileW:   Handle=" + std::to_string((int)return_val) + ";    File: " + original_file;
		if (!print_console(out_msg))
			Mod::startup_messages.push_back(out_msg);
	}

	return return_val;
}


// Called when the game attempts to call GetPrivateProfileIntW
UINT WINAPI Files::intercept_get_private_profile_int_w(LPCWSTR lpAppName, LPCWSTR lpKeyName, INT nDefault, LPCWSTR lpFileName)
{
	UINT return_val;
	
	std::wstring load_file = lpFileName;
	if ((int)Mod::custom_config_file.length() > 0)
	{
		// Intercept config file load (.ini)
		load_file = Mod::custom_config_file;
	}

	// Call original function
	return_val = GetPrivateProfileIntW(lpAppName, lpKeyName, nDefault, load_file.c_str());

	return return_val;
}


// Called when the game attempts to call WritePrivateProfileSectionW
BOOL WINAPI Files::intercept_write_private_profile_section_w(LPCWSTR lpAppName, LPCWSTR lpString, LPCWSTR lpFileName)
{
	BOOL return_val;

	std::wstring load_file = lpFileName;
	if ((int)Mod::custom_config_file.length() > 0)
	{
		// Intercept config file load (.ini)
		load_file = Mod::custom_config_file;
	}

	// Call original function
	return_val = WritePrivateProfileSectionW(lpAppName, lpString, load_file.c_str());

	return return_val;
}


// Called when the game attempts to call ReadFile
BOOL WINAPI Files::intercept_read_file(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped)
{
	static Bhd5Header bhd1_header;
	BOOL return_val;

	// Call original function
	return_val = ReadFile(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);

	if (hFile == sl2_handle
		|| std::find(bdt_handle.begin(), bdt_handle.end(), hFile) != bdt_handle.end()
		|| std::find(bhd_handle.begin(), bhd_handle.end(), hFile) != bhd_handle.end())
	{
		if (monitor_file_activity)
		{
			std::string file;
			Files::filename_from_handle(hFile, file);
			std::stringstream hex_stream;
			hex_stream << std::hex << (int)lpBuffer;
			std::string out_msg = "ReadFile:      File=" + file + " (Handle=" + std::to_string((int)hFile) + ");    BytesRead=" + std::to_string((*lpNumberOfBytesRead)) + " / " + std::to_string(nNumberOfBytesToRead) + ";    BufferAddress=" + std::to_string((int)lpBuffer) + " (0x" + hex_stream.str() + ");    Return=" + std::to_string((int)return_val);
			//if (!print_console(out_msg))
			//	Mod::startup_messages.push_back(out_msg);
		}


		// Testing:
		if (hFile != NULL && hFile == bhd_handle.at(1) && nNumberOfBytesToRead == 24)
		{
			bhd1_header.bin_count = (*(Bhd5Header*)lpBuffer).bin_count;
			bhd1_header.file_size = (*(Bhd5Header*)lpBuffer).file_size;
		}
		else if (hFile != NULL && hFile == bhd_handle.at(1) && nNumberOfBytesToRead > 24)
		{
			// Get starting address of GameParam.parambnd.dcx in the buffer
			/*Bhd5Archive bhd1 = Bhd5ArchiveFile(&bhd1_header, ((uint8_t*)lpBuffer));

			Bhd5Record *temp_record = bhd1.get_record_by_filename(GameParamDef::game_param_dcx);

			GameParamDef::game_param_dcx_record.offset = temp_record->offset;
			GameParamDef::game_param_dcx_record.size = temp_record->size;
			GameParamDef::game_param_dcx_record.hash = temp_record->hash;

			std::string msg = "GameParam.parambnd.dcx:    size=" + std::to_string(temp_record->size) + " bytes;     Offset=" + std::to_string(temp_record->offset);

			if (!print_console(msg))
				Mod::startup_messages.push_back(msg);*/
		}
	}

	return return_val;
}

// Called when the game attempted to call SetFilePointer
DWORD WINAPI Files::intercept_set_file_pointer(HANDLE hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod)
{
	DWORD return_val;

	/*static bool copied_game_param_dcx;
	if (GameParamDef::game_param_dcx_record.offset > 0 && hFile == bdt_handle[1] && !copied_game_param_dcx)
	{
		return_val = SetFilePointer(hFile, GameParamDef::game_param_dcx_record.offset, NULL, FILE_BEGIN);
		void *dcx_buff = CoTaskMemAlloc(GameParamDef::game_param_dcx_record.size);
		static uint32_t bytes_read;

		if (!ReadFile(hFile, dcx_buff, GameParamDef::game_param_dcx_record.size, (DWORD*)(&bytes_read), NULL))
			; // Read failed

		print_console(std::to_string(bytes_read) + " bytes from " + std::string(GameParamDef::game_param_dcx).substr(std::string(GameParamDef::game_param_dcx).find_last_of('/') + 1) + " were stored in memory");
		
		// Get GameParam.parambnd.dcx as an object
		DcxFile *df = new DcxFile(dcx_buff, true);
		char compression_alg[5];
		df->compression_algorithm_string(compression_alg);
		print_console("   File info:    CompressionAlgorithm=" + std::string(compression_alg) + ";    CompressedSize=" + std::to_string(df->size_compressed()) + ";    FullSize=" + std::to_string(df->size_decompressed()));
		print_console("   Size of header: " + std::to_string(sizeof(DcxHeader)) + " (Subheader: " + std::to_string(df->subheader_size()) + ")");
		print_console("   CompressionHeader size: " + std::to_string(df->compression_header_size()) + "       CompressionAlgU32=" + std::to_string(df->compression_algorithm()));
		
		int err1 = df->dump_compressed_data("test/GameParam.parambnd.dcx");
		int err2 = df->extract_and_dump("test/GameParam.parambnd", false);
		print_console("   Extracted parambnd to memory at " + std::to_string((int)df->saved_extract_data) + "   (Errors: " + std::to_string(err1) + "; " + std::to_string(err2) + ") and dumped data to files");
		
		// Get GameParam.parambnd as an object
		Bnd3Archive gpBnd = Bnd3ArchiveFile(df->saved_extract_data);
		print_console("   Parambnd info:  sizeof(Bnd3Header)="+std::to_string(sizeof(Bnd3Header))+"  HeaderSize=" + std::to_string(gpBnd.header_size()) + "   RecordCount=" + std::to_string(gpBnd.record_count()) + "\n\n   Dumping files...");
		print_console("   DumpAll result: " + std::to_string(gpBnd.dump_all_packed_files("test")));

		print_console("   ");
		delete df;
		CoTaskMemFree(dcx_buff);
		dcx_buff = NULL;
		copied_game_param_dcx = true;
	}*/

	// Call original function
	return_val = SetFilePointer(hFile, lDistanceToMove, lpDistanceToMoveHigh, dwMoveMethod);

	if (monitor_file_activity)
	{
		// Print func call info
		std::string file;
		Files::filename_from_handle(hFile, file);
		std::string out_msg = "SetFilePointer: File=" + file + " (Handle=" + std::to_string((int)hFile) + ");    NewOffset=" + std::to_string((int)return_val);
		//if (!print_console(out_msg))
		//	Mod::startup_messages.push_back(out_msg);
	}

	return return_val;
}

// Called when the game attempts to call CloseHandle
BOOL WINAPI Files::intercept_close_handle(HANDLE hObject)
{
	BOOL return_val;

	// Call original function
	return_val = CloseHandle(hObject);

	std::string file;
	Files::filename_from_handle(hObject, file);

	if (return_val)
	{
		// If a stored handle was closed, set it to NULL
		std::vector<HANDLE>::iterator h;
		if (hObject == Files::sl2_handle)
			Files::sl2_handle = NULL;
		else if ((h = std::find(bdt_handle.begin(), bdt_handle.end(), hObject)) != bdt_handle.end())
			(*h) = NULL;
		else if ((h = std::find(bhd_handle.begin(), bhd_handle.end(), hObject)) != bhd_handle.end())
			(*h) = NULL;
	}

	if (monitor_file_activity)
	{
		std::string out_msg = "CloseHandle:   File=" + file + " (Handle=" + std::to_string((int)hObject) + ");    Return=" + std::to_string((int)return_val);
		if (!print_console(out_msg))
			Mod::startup_messages.push_back(out_msg);
	}

	return return_val;
}


// Patches game calls to various shared library functions, redirecting them to Game::intercept_create_file()
void Files::apply_function_intercepts()
{
	// CreateFileW
	static uint32_t intercept_func_create_file_w = (uint32_t)&Files::intercept_create_file_w;
	static uint32_t *intercept_func_create_file_w_ptr = &intercept_func_create_file_w;
	uint8_t *intercept_func_create_file_w_b = (uint8_t *)&intercept_func_create_file_w_ptr;
	uint8_t patch_w[4] = { intercept_func_create_file_w_b[0], intercept_func_create_file_w_b[1], intercept_func_create_file_w_b[2], intercept_func_create_file_w_b[3] };
	
	void *write_address = (uint8_t*)Game::ds1_base + 0x2B7D04; // Opens game archive files (.bhd5 and .bdt) and save file (.sl2)
	apply_byte_patch(write_address, patch_w, 4);

	write_address = (uint8_t*)Game::ds1_base + 0x2B7FEE; // Opens save file (.sl2) and directory of config file (.ini)
	apply_byte_patch(write_address, patch_w, 4);


	// GetPrivateProfileIntW
	static uint32_t intercept_gppi_func_w = (uint32_t)&Files::intercept_get_private_profile_int_w;
	static uint32_t *intercept_gppi_w_ptr = &intercept_gppi_func_w;
	uint8_t *intercept_gppi_w_b = (uint8_t *)&intercept_gppi_w_ptr;
	uint8_t patch_gppi_w[4] = { intercept_gppi_w_b[0], intercept_gppi_w_b[1], intercept_gppi_w_b[2], intercept_gppi_w_b[3] };

	write_address = (uint8_t*)Game::ds1_base + 0xB70B17;
	apply_byte_patch(write_address, patch_gppi_w, 4);

	write_address = (uint8_t*)Game::ds1_base + 0xB70B2F;
	apply_byte_patch(write_address, patch_gppi_w, 4);

	// This seems to be the only call to GetPrivateProfileIntW that actually gets executed:
	write_address = (uint8_t*)Game::ds1_base + 0xB70B79; // Reads game configuration file (.ini)
	apply_byte_patch(write_address, patch_gppi_w, 4);


	// WritePrivateProfileIntW
	static uint32_t intercept_wpps_func_w = (uint32_t)&Files::intercept_write_private_profile_section_w;
	static uint32_t *intercept_wpps_w_ptr = &intercept_wpps_func_w;
	uint8_t *intercept_wpps_w_b = (uint8_t *)&intercept_wpps_w_ptr;
	uint8_t patch_wpps_w[4] = { intercept_wpps_w_b[0], intercept_wpps_w_b[1], intercept_wpps_w_b[2], intercept_wpps_w_b[3] };

	write_address = (uint8_t*)Game::ds1_base + 0xB70C99; // Writes game configuration file (.ini)
	apply_byte_patch(write_address, patch_wpps_w, 4);


	// ReadFile
	static uint32_t intercept_func_read_file = (uint32_t)&Files::intercept_read_file;
	static uint32_t *intercept_func_read_file_ptr = &intercept_func_read_file;
	uint8_t *intercept_func_read_file_b = (uint8_t *)&intercept_func_read_file_ptr;
	uint8_t patch_read_file[4] = { intercept_func_read_file_b[0], intercept_func_read_file_b[1], intercept_func_read_file_b[2], intercept_func_read_file_b[3] };

	// Direct calls to ReadFile:

	// Load ReadFile address into register for call:
	write_address = (uint8_t*)Game::ds1_base + 0x2B7E66; // Reads game archive files (.bhd5 and .bdt) and save file (.sl2)
	apply_byte_patch(write_address, patch_read_file, 4);


	// SetFilePointer
	static uint32_t intercept_func_set_fp = (uint32_t)&Files::intercept_set_file_pointer;
	static uint32_t *intercept_func_set_fp_ptr = &intercept_func_set_fp;
	uint8_t *intercept_func_set_fp_b = (uint8_t *)&intercept_func_set_fp_ptr;
	uint8_t patch_set_fp[4] = { intercept_func_set_fp_b[0], intercept_func_set_fp_b[1], intercept_func_set_fp_b[2], intercept_func_set_fp_b[3] };

	write_address = (uint8_t*)Game::ds1_base + 0x2AC9A3;
	apply_byte_patch(write_address, patch_set_fp, 4);

	write_address = (uint8_t*)Game::ds1_base + 0x2B69EE; // Sets read offset in game archive header files (.bdt) and save file (.sl2)
	apply_byte_patch(write_address, patch_set_fp, 4);

	write_address = (uint8_t*)Game::ds1_base + 0x2B7DA7;
	apply_byte_patch(write_address, patch_set_fp, 4);

	write_address = (uint8_t*)Game::ds1_base + 0x6DCED2;
	apply_byte_patch(write_address, patch_set_fp, 4);

	write_address = (uint8_t*)Game::ds1_base + 0x6E1C5E;
	apply_byte_patch(write_address, patch_set_fp, 4);


	// CloseHandle
	static uint32_t intercept_func_close_handle = (uint32_t)&Files::intercept_close_handle;
	static uint32_t *intercept_func_close_handle_ptr = &intercept_func_close_handle;
	uint8_t *intercept_func_close_handle_b = (uint8_t *)&intercept_func_close_handle_ptr;
	uint8_t patch_close_handle[4] = { intercept_func_close_handle_b[0], intercept_func_close_handle_b[1], intercept_func_close_handle_b[2], intercept_func_close_handle_b[3] };

	// Direct calls to CloseHandle:

	write_address = (uint8_t*)Game::ds1_base + 0x2B7535; // Closes game archive header files (.bhd5) and save file (.sl2)
	apply_byte_patch(write_address, patch_close_handle, 4);

}


// Checks if custom archive files (.bdt/.bhd5) exist. If one or more are missing, custom archives are not loaded, and default game files are loaded instead.
void Files::check_custom_archive_files()
{
	if ((int)Mod::custom_game_archives.length() == 0)
		return;

	Mod::startup_messages.push_back(std::string(Mod::output_prefix + "Checking if custom game archive files exist..."));

	// Get char* strings for printing console messages
	errno_t conversion_return;
	std::string archive_name_ch = "";
	if(conversion_return = string_wide_to_mb((wchar_t*)Mod::custom_game_archives.c_str(), archive_name_ch))
	{
		// Error converting from wide char to char
		Mod::startup_messages.push_back(std::string(Mod::output_prefix + "ERROR: Unable to parse custom archive file name (Error code ").append(std::to_string(conversion_return)).append("). Using default archive files instead."));
		Mod::custom_game_archives = L"";
		return;
	}


	// Check that custom game archive files exist
	for (int i = 0; i < (int)BdtArchive::FILE_COUNT_DEFAULT; i++)
	{
		std::ifstream check_file(std::wstring(Mod::custom_game_archives).append(std::to_wstring(i)).append(BdtArchive::FILE_EXTENSION_W).c_str());
		if (!check_file.good())
		{
			// Custom .bdt file doesn't exist
			Mod::startup_messages.push_back(std::string(Mod::output_prefix + "ERROR: The file \"").append(archive_name_ch).append(std::to_string(i)).append(BdtArchive::FILE_EXTENSION).append("\" could not be found. Using default archive files instead."));
			check_file.close();
			Mod::custom_game_archives = L"";
			return;
		}
		else
			Mod::startup_messages.push_back(std::string("    Found ").append(archive_name_ch).append(std::to_string(i)).append(BdtArchive::FILE_EXTENSION));
		check_file.close();
		std::ifstream check_file2(std::wstring(Mod::custom_game_archives).append(std::to_wstring(i)).append(Bhd5Archive::FILE_EXTENSION_W).c_str());
		if (!check_file2.good())
		{
			// Custom .bhd5 file doesn't exist
			Mod::startup_messages.push_back(std::string(Mod::output_prefix + "ERROR: The file \"").append(archive_name_ch).append(std::to_string(i)).append(Bhd5Archive::FILE_EXTENSION).append("\" could not be found. Using default archive files."));
			check_file2.close();
			Mod::custom_game_archives = L"";
			return;
		}
		else
			Mod::startup_messages.push_back(std::string("    Found ").append(archive_name_ch).append(std::to_string(i)).append(Bhd5Archive::FILE_EXTENSION));
		check_file2.close();
	}
	
	Mod::startup_messages.push_back(std::string(Mod::output_prefix + "SUCCESS: Custom game archive files will be loaded (\"").append(archive_name_ch).append("\")."));
}


// Checks if custom save file (.sl2) exists
void Files::check_custom_save_file()
{
	if ((int)Mod::custom_save_file.length() == 0)
		return;

	Mod::startup_messages.push_back(std::string(Mod::output_prefix + "Checking if custom save file exists..."));

	errno_t conversion_return;
	std::string filename_ch;
	if (conversion_return = string_wide_to_mb((wchar_t*)Mod::custom_save_file.c_str(), filename_ch))
	{
		// Error converting from wide char to char
		return;
	}

	if (Files::file_exists(Mod::custom_save_file.c_str()))
	{
		Mod::startup_messages.push_back(std::string(Mod::output_prefix + "SUCCESS: Custom save file will be loaded (\"").append(filename_ch).append("\")."));
	}
	else
	{
		// Custom save file doesn't exist
		Mod::startup_messages.push_back(std::string(Mod::output_prefix + "WARNING: Custom save file was not found (\"").append(filename_ch).append("\"). No characters will be available to load."));
	}
}


// Checks if custom game config file (.ini) exists
void Files::check_custom_game_config_file()
{
	if ((int)Mod::custom_config_file.length() == 0)
		return;

	Mod::startup_messages.push_back(std::string(Mod::output_prefix + "Checking if custom game config file exists..."));
	
	// Get char* strings for printing console messages
	errno_t conversion_return;
	std::string filename_ch;
	if (conversion_return = string_wide_to_mb((wchar_t*)Mod::custom_config_file.c_str(), filename_ch))
	{
		// Error converting from wide char to char
		return;
	}
	
	if (Files::file_exists(Mod::custom_config_file.c_str()))
	{
		Mod::startup_messages.push_back(std::string(Mod::output_prefix + "SUCCESS: Custom game config file will be loaded (\"").append(filename_ch).append("\")."));
	}
	else
	{
		// Custom config file doesn't exist
		Mod::startup_messages.push_back(std::string(Mod::output_prefix + "WARNING: Custom config file was not found (\"").append(filename_ch).append("\"). Default configuration file will be automatically generated."));
	}
}


// Checks if the specified file exists (char* string)
bool Files::file_exists(const char* file)
{
	std::ifstream check_file(file);
	bool exists = check_file.good();
	check_file.close();
	return exists;
}

// Checks if the specified file exists (wchar_t* string)
bool Files::file_exists(const wchar_t* file)
{
	std::ifstream check_file(file);
	bool exists = check_file.good();
	check_file.close();
	return exists;
}

// Obtains the size of the specified file (in bytes)
size_t Files::file_size(const wchar_t* file) // (wide char* string)
{
	if (file == NULL)
	{
		SetLastError(ERROR_INVALID_PARAMETER);
		return 0;
	}

	std::string f;
	int err;
	if (err = string_wide_to_mb((wchar_t*)file, f))
	{
		SetLastError(err);
		return 0;
	}

	struct stat stat_buffer;
	int return_val = stat(f.c_str(), &stat_buffer);
	if (return_val == 0)
	{
		SetLastError(ERROR_SUCCESS);
		return stat_buffer.st_size;
	}
	else
	{
		switch (errno)
		{
		case EACCES:
			SetLastError(ERROR_ACCESS_DENIED);
			break;
		case EBADF:
			SetLastError(ERROR_BAD_FILE_TYPE);
			break;
		case EOVERFLOW:
			SetLastError(ERROR_BUFFER_OVERFLOW);
			break;
		case ENOTDIR:
			SetLastError(ERROR_PATH_NOT_FOUND);
			break;
		case ENOMEM:
			SetLastError(ERROR_OUTOFMEMORY);
			break;
		case ENOENT:
			SetLastError(ERROR_INVALID_NAME);
			break;
		case ENAMETOOLONG:
			SetLastError(ERROR_FILENAME_EXCED_RANGE);
			break;
		case ELOOP:
			SetLastError(ERROR_TOO_MANY_LINKS);
			break;
		case EFAULT:
		default:
			SetLastError(ERROR_INVALID_ADDRESS);
			break;
		}
		return 0;
	}
}

// Obtains the size of the specified file (in bytes), or 0 (with error code set) if error occurred
size_t Files::file_size(const char* file) // (char* string)
{
	if (file == NULL)
	{
		SetLastError(ERROR_INVALID_PARAMETER);
		return 0;
	}

	struct stat stat_buffer;
	int return_val = stat(file, &stat_buffer);
	if (return_val == 0)
	{
		SetLastError(ERROR_SUCCESS);
		return stat_buffer.st_size;
	}
	else
	{
		switch (errno)
		{
			case EACCES:
				SetLastError(ERROR_ACCESS_DENIED);
				break;
			case EBADF:
				SetLastError(ERROR_BAD_FILE_TYPE);
				break;
			case EOVERFLOW:
				SetLastError(ERROR_BUFFER_OVERFLOW);
				break;
			case ENOTDIR:
				SetLastError(ERROR_PATH_NOT_FOUND);
				break;
			case ENOMEM:
				SetLastError(ERROR_OUTOFMEMORY);
				break;
			case ENOENT:
				SetLastError(ERROR_INVALID_NAME);
				break;
			case ENAMETOOLONG:
				SetLastError(ERROR_FILENAME_EXCED_RANGE);
				break;
			case ELOOP:
				SetLastError(ERROR_TOO_MANY_LINKS);
				break;
			case EFAULT:
			default:
				SetLastError(ERROR_INVALID_ADDRESS);
				break;
		}
		return 0;
	}
}

// Reads the given number of bytes from the specified offset of a file and stores the data in the supplied buffer
// If buffer is not NULL, it is assumed that the buffer size is at least num_bytes. If buffer is NULL, and allow_alloc
// is true, memory is dynamically allocated for the data, and must be manually freed with CoTaskMemFree.
void *Files::read_from_offset(const char* file, unsigned long offset, size_t num_bytes, void *buffer, bool allow_alloc)
{
	if (file == NULL || (!allow_alloc && (buffer == NULL)))
	{
		SetLastError(ERROR_INVALID_ADDRESS);
		return NULL;
	}
	bool manual_allocation = false;

	// Manually allocate memory for the data, if necessary
	if (buffer == NULL)
	{
		manual_allocation = true;
		if ((buffer = CoTaskMemAlloc(num_bytes)) == NULL)
		{
			// Unable to allocate memory
			SetLastError(ERROR_OUTOFMEMORY);
			return NULL;
		}
	}

	// Open file
	std::ifstream in_stream(file, std::ios::in | std::ios::binary);
	if (!in_stream.good())
	{
		// File doesn't exist
		in_stream.close();
		if(manual_allocation)
			CoTaskMemFree(buffer);
		SetLastError(ERROR_FILE_NOT_FOUND);
		return NULL;
	}

	// Move file pointer to offset
	in_stream.seekg(offset);
	// Read file contents into buffer
	in_stream.read((char*)buffer, num_bytes);

	// Check for read error
	if (in_stream.fail())
	{
		// Error occured when reading file
		in_stream.close();
		if (manual_allocation)
			CoTaskMemFree(buffer);
		SetLastError(ERROR_INVALID_DATA);
		return NULL;
	}

	in_stream.close();
	return buffer;
}


// Writes a block of memory to a file
int Files::dump_file(void *source, size_t size, const char *new_file, bool overwrite)
{
	if (source == NULL || new_file == NULL)
		return ERROR_INVALID_ADDRESS;

	std::string file = new_file;

	// Replace slashes with backslashes
	for (int c = 0; c < (int)file.length(); c++)
		if (file[c] == '/')
			file[c] = '\\';

	// Trim whitespace
	extern void trim(std::string *, const char *);
	trim(&file, " \r\n\t");

	// Remove leading slashes
	while(file[0] == '\\')
		file = file.substr(1);

	if (!overwrite)
	{
		// Check if file already exists
		std::ifstream check_file(file);
		bool exists = check_file.good();
		check_file.close();

		if (exists)
		{
			return ERROR_FILE_EXISTS;
		}
	}

	// Create directory, if it doesn't exist
	int i = 0;
	std::string tmp;
	while (file.find('\\', i) != std::string::npos)
	{
		tmp = file.substr(0, file.find('\\', i));
		int ret = CreateDirectory(tmp.c_str(), NULL);
		if (!ret)
		{
			ret = GetLastError();
			if (ret != ERROR_ALREADY_EXISTS)
				return ret;
		}
		i++;
	}

	std::ofstream out_stream(file, std::ios::out | std::ios::binary);
	out_stream.write((const char*)source, size);
	out_stream.close();

	return ERROR_SUCCESS;
}


// Returns the name of the file that the specified file handle corresponds to
void Files::filename_from_handle(HANDLE handle, std::string& filename)
{
	filename.clear();
	std::vector<HANDLE>::iterator h;
	if (handle == Files::sl2_handle)
	{
		filename = Files::DEFAULT_SAVE_FILE_NAME;
		filename += Files::DEFAULT_SAVE_FILE_TYPE;
	}
	else if ((h = std::find(bdt_handle.begin(), bdt_handle.end(), handle)) != bdt_handle.end())
	{
		filename = BdtArchive::FILE_NAME_DEFAULT;

		for (int i = 0; i < 4; i++)
			if ((*h) == bdt_handle[i])
				filename += std::to_string(i);

		filename += BdtArchive::FILE_EXTENSION;
	}
	else if ((h = std::find(bhd_handle.begin(), bhd_handle.end(), handle)) != bhd_handle.end())
	{
		filename = Bhd5Archive::FILE_NAME_DEFAULT;

		for (int i = 0; i < 4; i++)
			if ((*h) == bhd_handle[i])
				filename += std::to_string(i);

		filename += Bhd5Archive::FILE_EXTENSION;
	}
	else
	{
		filename = "UNKNOWN_FILE";
	}
}


/*
	Calculates the .bhd5 record hash value for a filename

	Algorithm source:
		https://sites.google.com/site/fileformats/engines/dark-souls/archive-files

	Hashing algorithm reversed by Burton Radons. GitHub:
		https://github.com/Burton-Radons

	@return 32-bit hash of the given filename, or zero (with error set) if an
	        error occurs. NOTE: Hash can be zero without encountering an error,
			in which case GetLastError will return ERROR_SUCCESS. You only need
			to check the error code if the func returns zero.
*/
uint32_t Files::get_filename_hash(const char *filename)
{
	if (filename == NULL)
	{
		SetLastError(ERROR_INVALID_PARAMETER);
		return 0;
	}

	uint32_t hash = 0;

	// Convert filename to lowercase
	std::string filename_lower = filename;
	Files::to_lowercase((char*)filename_lower.c_str());

	// Get first char
	char *c = (char*)filename_lower.c_str();

	// Apply hashing algorithm
	while ((*c) != '\0')
	{
		hash *= 37;
		hash += (uint8_t)(*c);
		c++;
	}

	SetLastError(ERROR_SUCCESS);
	return hash;
}


// Converts a char array to lowercase
int Files::to_lowercase(char *string)
{
	if (string == NULL)
	{
		// Invalid argument
		return ERROR_INVALID_PARAMETER;
	}

	unsigned int index = 0;
	while (string[index] != '\0')
	{
		if (string[index] >= 'A' && string[index] <= 'Z')
		{
			string[index] -= ('A' - 'a');
		}
		index++;
	}

	return 0;
}


/*
	Reverses the byte order of the given unsigned 32-bit integer.

	If from_endian_int is an unsigned 32-bit Big Endian integer, return value is an unsigned 32-bit Little Endian integer.
	If from_endian_int is an unsigned 32-bit Litte Endian integer, return value is an unsigned 32-bit Big Endian integer.
*/
uint32_t Files::reverse_endian(uint32_t from_endian_int)
{
	uint8_t bytes[4] = { ((uint8_t*)&from_endian_int)[3], ((uint8_t*)&from_endian_int)[2], ((uint8_t*)&from_endian_int)[1], ((uint8_t*)&from_endian_int)[0] };
	return *(uint32_t*)bytes;
}


#endif // _DS1_OVERHAUL_GAME_FILES_H_