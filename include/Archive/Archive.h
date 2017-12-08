/*
	DARK SOULS OVERHAUL

	Contributors to this file:
		Sean Pesce	-	C++


	GameFiles/Archive/Archive.h

	

*/

#pragma once

#ifndef _DS1_OVERHAUL_GAME_ARCHIVE_FILE_H_
	#define _DS1_OVERHAUL_GAME_ARCHIVE_FILE_H_

#define CURL_STATICLIB

#include "Windows.h"
#include "GameData.h"
#include <map>
#include <fstream>
#include <curl/curl.h>
#include "SpSearchStringSet.h"



typedef enum ARCHIVE_FILE_TYPE {
	BDT  = 0,
	BHD5 = 1,
	BND3 = 2,
	DCX  = 3
} ARCHIVE_TYPE;


// Each type of archive file has at least 12 magic identifier bytes

// Magic bytes from 0x0 to 0x3
typedef enum class ARCHIVE_FILE_HEADER_MAGIC_0 : uint32_t {
	BDT  = 0x33464442,
	BHD5 = 0x35444842,
	BND3 = 0x33444E42,
	DCX  = 0x00584344
} ARCHIVE_FILE_HEADER_MAGIC;
typedef ARCHIVE_FILE_HEADER_MAGIC_0 ARCHIVE_MAGIC_0;
typedef ARCHIVE_FILE_HEADER_MAGIC_0 ARCHIVE_MAGIC;

// Magic bytes from 0x4 to 0x7
typedef enum class ARCHIVE_FILE_HEADER_MAGIC_1 : uint32_t {
	BDT  = 0x37443730,
	BHD5 = 0x000000FF,
	BND3 = BDT,
	DCX  = 0x00000100
} ARCHIVE_MAGIC_1;

// Magic bytes from 0x8 to 0xB
typedef enum class ARCHIVE_FILE_HEADER_MAGIC_2 : uint32_t {
	BDT  = 0x00003652,
	BHD5 = 0x00000001,
	BND3 = BDT,
	DCX  = 0x18000000
} ARCHIVE_MAGIC_2;



// Ancestor structure type for all Dark Souls archive files
typedef struct ArchiveFileHeader {
	ARCHIVE_MAGIC_0 magic32_0; // First 4 identifier bytes (0x0-0x3)
	ARCHIVE_MAGIC_1 magic32_1; // Identifier bytes 0x4-0x7
	ARCHIVE_MAGIC_2 magic32_2; // Identifier bytes 0x8-0xB
} ArchiveHeader;

/*
// Header structure of BND3 game archive files (.*bnd)
typedef struct Bnd3ArchiveHeader : ArchiveFileHeader {
	uint32_t version = 0x74; // BND file version
	uint32_t record_count = 0;
	uint32_t header_size = 0; // Size of header section + record structs section + file name section
	const uint32_t const32b_0 = 0x00000000;
	const uint32_t const32b_1 = 0x00000000;
} Bnd3Header;


// Header structure of a .dcx archive file
typedef struct DcxArchiveHeader : ArchiveFileHeader {
	const uint32_t magic32_3 = 0x24000000;
	const uint32_t magic32_4 = 0x24000000;
	uint32_t subheader_size_big_endian = 0; // Size (in bytes) of the DCX file subheader (WARNING: Big Endian)
	const uint32_t const32b_0 = 0x00534344; // "DCS\0"
	uint32_t size_decompressed_big_endian = 0; // WARNING: Big Endian
	uint32_t size_compressed_big_endian = 0;   // WARNING: Big Endian
	const uint32_t const32b_1 = 0x00504344; // "DCP\0"
	DCX_COMPRESSION_ALGORITHM compression = DEFLATE; // Compression method (WARNING: Not null-terminated); Options are "DFLT" (DEFLATE algorithm) or "EDGE"
	const uint32_t const32b_2 = 0x20000000;
	const uint32_t const32b_3 = 0x00000009;
	const uint32_t is_dark_souls_2_low = 0x0; // In Dark Souls 2 .dcx files, this would be 0x100
	const uint32_t padding[2] = { 0x0, 0x0 };
	const uint32_t is_dark_souls_2_high = 0x10100; // In Dark Souls 2 .dcx files, this would be 0x11000
	const uint32_t const32b_4 = 0x00414344; // "DCA\0"
	uint32_t compression_header_size_big_endian = 0; // WARNING: Big Endian
} DcxHeader;
*/







// Ancestor class for all Dark Souls archive file classes
typedef class ArchiveFile {
public:

	// Storage object for the names of files in the game's .bdt containers
	static SpSearchStringSetA bdt_file_set;

	// Flag to denote that the list of packed .bdt files is finished loading
	static bool bdt_file_set_loaded;

	// Initialize string formatting for .bdt files list
	static void ArchiveFile::init_bdt_file_set_format()
	{
		// Strings are automatically formatted as they are added to the SearchStringSet object

		// Remove tabs, new lines, and return carriage characters
		Archive::bdt_file_set.invalid_chars.value = "\t\r\n";
		Archive::bdt_file_set.invalid_chars.act   = SSS_CONFORM;

		// Make searches case-insensitive
		Archive::bdt_file_set.case_distinction = SSS_CASE_INSENSITIVE;

		// Replace backslashes with forward slashes
		Archive::bdt_file_set.replacements.push_back(std::make_pair("\\", "/"));
	}

	// Obtains the list of filenames for files that can be extracted from .bdt files
	static int ArchiveFile::load_bdt_file_list(const char *source, const char *list_file, bool local_file)
	{
		static const char *default_url = "https://raw.githubusercontent.com/metal-crow/Dark-Souls-1-Overhaul/master/OverhaulDLL/rsrc/bdt_files.txt";
		static const char *default_file = "bdt_files.txt";
		static const char *error_curl = "    CURL ERROR: ";
		static const char *error_opening_file_write =  "    WRITE ERROR: Failed to create or open ";
		static const char *error_closing_file[2] = { "    WRITE ERROR: Problem when attempting to close ", " after writing data"  };
		static const char *error_opening_file_read = "    READ ERROR: Failed to open ";
		static const char *error_empty_list = "    ERROR: List was empty";
		static const char *success_message[3] = { "SUCCESS: ", " file names were loaded from ", "\n    File names will now be indexed for faster searches (Note: This might take a while)" };
		static const char *finished_indexing = " Finished indexing the list of archived .bdt files.";

		// Holds the error code returned by this function
		int error_code = ERROR_SUCCESS;

		// For storing extended CURL error messages:
		char error_msg_buffer[CURL_ERROR_SIZE];
		error_msg_buffer[0] = '\0';
		error_msg_buffer[CURL_ERROR_SIZE - 1] = '\0';

		// Use default URL if one was not specified
		if (source == NULL || std::string(source).length() == 0)
			source = default_url;
		// Use default output file if one was not specified
		if (list_file == NULL || std::string(list_file).length() == 0)
			list_file = default_file;

		// Build output string
		std::string info_message = Mod::output_prefix + "Loading list of archived .bdt files...\n    Source: ";
		if (!local_file && (!Files::file_exists(list_file) || Files::file_size(list_file) == 0))
			info_message += source + std::string("\n    Saving to: ") + list_file;
		else
			info_message += list_file;

		if (!print_console(info_message))
			Mod::startup_messages.push_back(info_message);


		if (!local_file) // File list will be obtained from a remote source using CURL (default source is the Overhaul repository)
		{
			// Initialize file handle for the file that the web data will be written to
			FILE *out_file;
			if (fopen_s(&out_file, list_file, "w+") || out_file == NULL)
			{
				error_code = ERROR_WRITE_FAULT; // Unable to open file for writing
				if (!print_console(std::string(error_opening_file_write) + list_file))
					Mod::startup_messages.push_back(std::string(error_opening_file_write) + list_file);
			}

			// Initialize CURL
			CURL* curl;
			CURLcode result;
			curl = curl_easy_init();
			curl_easy_setopt(curl, CURLOPT_URL, source);
			curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void*)out_file);
			curl_easy_setopt(curl, CURLOPT_ERRORBUFFER, error_msg_buffer);
			curl_easy_setopt(curl, CURLOPT_USERAGENT, "DS-Overhaul/1.0");

			// Attempt to get the data from the web
			if ((result = curl_easy_perform(curl)) != CURLE_OK)
			{
				// Encountered a network error
				error_code = ERROR_UNEXP_NET_ERR;
				if (std::string(error_msg_buffer).length() > 0)
				{
					if(!print_console(std::string(error_curl) + error_msg_buffer))
						Mod::startup_messages.push_back(std::string(error_curl) + error_msg_buffer);
				}
				else if (std::string(curl_easy_strerror(result)).length() > 0)
				{
					if(!print_console(std::string(error_curl) + curl_easy_strerror(result)))
						Mod::startup_messages.push_back(std::string(error_curl) + curl_easy_strerror(result));
				}
			}
			curl_easy_cleanup(curl); // CURL cleanup

			// Close the file handle that the data was written with
			if (fclose(out_file) && error_code != ERROR_WRITE_FAULT)
			{
				// Error closing file handle
				if (!print_console(std::string(error_closing_file[0]) + list_file + error_closing_file[1])) 
					Mod::startup_messages.push_back(std::string(error_closing_file[0]) + list_file + error_closing_file[1]);
				if (error_code == ERROR_SUCCESS)
					error_code = ERROR_WRITE_FAULT;
			}
		}

		bdt_file_set_loaded = false; // Set "loaded" flag

		// Read list from local file
		if (error_code == ERROR_SUCCESS)
		{
			std::ifstream input_stream(list_file);

			if (!input_stream.good()) // Error opening file for reading
			{
				error_code = ERROR_READ_FAULT;
				if (!print_console(std::string(error_opening_file_read) + list_file))
					Mod::startup_messages.push_back(std::string(error_opening_file_read) + list_file);
				return error_code;
			}

			// Read file line by line
			std::string line;
			while (std::getline(input_stream, line))
			{
				ArchiveFile::bdt_file_set.append(line, false);
			}
			input_stream.close();
		}

		if (error_code == ERROR_SUCCESS && ArchiveFile::bdt_file_set.size() > 0) // Successfully loaded filename list
		{
			if (!print_console(Mod::output_prefix + success_message[0] + std::to_string(ArchiveFile::bdt_file_set.size()) + success_message[1] + list_file + success_message[2]))
				Mod::startup_messages.push_back(Mod::output_prefix + success_message[0] + std::to_string(ArchiveFile::bdt_file_set.size()) + success_message[1] + list_file + success_message[2]);
			
			// Build search index
			ArchiveFile::bdt_file_set.build_index();

			// Notify user that indexing is complete
			if (!print_console(Mod::output_prefix + finished_indexing))
				Mod::startup_messages.push_back(Mod::output_prefix + finished_indexing);

			bdt_file_set_loaded = true;
		}
		else if (error_code == ERROR_SUCCESS)
		{
			// Filename list was empty, but no error was detected
			if (!print_console(error_empty_list))
				Mod::startup_messages.push_back(error_empty_list);
			error_code = ERROR_SOURCE_ELEMENT_EMPTY;
		}
		return error_code;
	}

} Archive;

















/*
// Header structure of a .*bnd game archive file (BND3)
typedef struct Bnd3FileHeader {
	const char const_magic_data[12] = { 0x42, 0x4E, 0x44, 0x33, 0x30, 0x37, 0x44, 0x37, 0x52, 0x36, 0x00, 0x00 }; // "BND307D7R6\0\0"
	uint32_t version = 0x74; // BND3 file version
	uint32_t record_count = 0;
	uint32_t header_size = 0; // Size of header section + record structs section + file name section
	uint32_t padding[2] = { 0, 0 };
} Bnd3Header;


// BND3 record data structure
typedef struct Bnd3FileRecord {
	// BND3 record structs are stored in the file header
	const uint32_t const_magic_data = 0x40;
	uint32_t size = 0; // Size of packed file
	uint32_t offset = 0; // Offset of packed file data (relative to start of BND3 file)
	uint32_t id = 0;
	uint32_t name_offset = 0; // Offset of ASCII file name string (relative to start of BND3 file)
	uint32_t size2 = size;    // Always the same as size
} Bnd3Record;



// For reading and manipulating BND3 archive files (*.parambnd, etc)
typedef class Bnd3ArchiveFile {
public:

	// Maps filename to record index
	std::map<std::string, uint32_t> filename_to_index;

	// Maps unique ID to record index
	std::map<uint32_t, uint32_t> id_to_index;

	// BND3 file header
	Bnd3Header *header;

	// BND3 file record structs array start
	Bnd3Record *records;

	// Start of the string array that holds filenames of packed files
	void *filenames;

	// Constructor
	Bnd3ArchiveFile(void *file_start) : header((Bnd3Header*)file_start), records((Bnd3Record*)(((uint8_t*)file_start) + sizeof(Bnd3Header)))
	{
		if (file_start != NULL && header->record_count > 0)
		{
			filenames = ((uint8_t*)header) + records[0].name_offset; // Start of filename strings array

			// Map file names to indices
			char *current_filename = (char*)filenames;
			for(int i = 0; i < (int)header->record_count; i++)
			{
				std::string cfn = current_filename;

				// Remove directory prefix
				if (cfn.find(Bnd3ArchiveFile::packed_file_dir) == 0)
					cfn = cfn.substr(Bnd3ArchiveFile::packed_file_dir.length());

				// Replace backslashes
				for (int c = 0; c < (int)cfn.length(); c++)
					if (cfn[c] == '\\')
						cfn[c] = '/';

				filename_to_index.insert(std::make_pair(cfn, i));
				current_filename += (std::string(current_filename).length() + 1);

				id_to_index.insert(std::make_pair(records[i].id, i));
			}
		}
		else if (file_start != NULL)
		{
			// No records
			records = NULL;
		}
		else
		{
			records = NULL;
			SetLastError(ERROR_INVALID_ADDRESS);
		}
	}


	// Returns pointer to the record at the given index
	Bnd3Record *get_record(uint32_t index)
	{
		if (header == NULL || records == NULL || index >= header->record_count)
			return NULL;
		return &(records[index]);
	}

	// Returns pointer to the record with the given filename
	Bnd3Record *get_record(const char *filename)
	{
		if (header == NULL || records == NULL)
			return NULL;

		try {
			return get_record(filename_to_index.at(filename));
		}
		catch (const std::out_of_range&) {
			return NULL;
		}
		return NULL;
	}

	// Returns pointer to the record with the given ID
	Bnd3Record *get_record_by_id(uint32_t id)
	{
		if (header == NULL || records == NULL)
			return NULL;

		try {
			return get_record(id_to_index.at(id));
		}
		catch (const std::out_of_range&) {
			return NULL;
		}
		return NULL;
	}

	// Returns pointer to compressed file at the given index
	void *get_packed_file(uint32_t index)
	{
		if (header == NULL || records == NULL || index >= header->record_count)
			return NULL;
		return (((uint8_t*)header) + records[index].offset);
	}

	// Returns pointer to compressed file with the given filename
	void *get_packed_file(const char *filename)
	{
		if (header == NULL || records == NULL)
			return NULL;

		try {
			return get_packed_file(filename_to_index.at(filename));
		}
		catch (const std::out_of_range&) {
			return NULL;
		}
		return NULL;
	}

	// Returns file name of the packed file at the given index
	int get_packed_filename(uint32_t index, std::string& out)
	{
		if (header == NULL || records == NULL)
			return ERROR_INVALID_ADDRESS;
		if (index >= header->record_count)
			return ERROR_BUFFER_OVERFLOW;

		out.clear();

		for (auto pair : filename_to_index)
		{
			if (pair.second == index)
			{
				out.append(pair.first);
				return ERROR_SUCCESS;
			}
		}
		return ERROR_SUCCESS;
	}

	// Returns file name of the packed file, found using the given ID
	int get_packed_filename_by_id(uint32_t id, std::string& out)
	{
		if (header == NULL || records == NULL)
			return ERROR_INVALID_ADDRESS;

		try {
			return get_packed_filename(id_to_index.at(id), out);
		}
		catch (const std::out_of_range&) {
			return ERROR_FILE_NOT_FOUND;
		}
		return ERROR_SUCCESS;
	}

	// Extracts packed file data to an external file
	int dump_packed_file(uint32_t index, const char *new_directory, bool overwrite = true)
	{
		if (header == NULL || records == NULL)
			return ERROR_INVALID_DATA;

		if (new_directory == NULL)
			return ERROR_INVALID_ADDRESS;

		
		// Build output path string
		std::string file = new_directory;
		if (file[file.length() - 1] == '/' || file[file.length() - 1] == '\\')
			file = file.substr(0, file.length() - 1);
		
		std::string tmp;
		if (get_packed_filename(index, tmp)) // Get file name
			return ERROR_INVALID_PARAMETER;
		file += tmp;

		// Write file
		return Files::dump_file(((uint8_t*)header + get_record(index)->offset), get_record(index)->size, file.c_str(), overwrite);
	}


	// Extracts all packed file data to a external files
	int dump_all_packed_files(const char *new_directory, bool overwrite = true)
	{
		if (header == NULL || records == NULL)
			return ERROR_INVALID_DATA;

		if (new_directory == NULL)
			return ERROR_INVALID_ADDRESS;


		// Build output path string
		std::string file = new_directory;
		if (file[file.length() - 1] == '/' || file[file.length() - 1] == '\\')
			file = file.substr(0, file.length() - 1);

		// Replace slashes with backslashes
		for (int c = 0; c < (int)file.length(); c++)
			if (file[c] == '/')
				file[c] = '\\';

		// Dump every packed file in the archive
		for (int i = 0; i < (int)record_count(); i++)
		{
			std::string tmp_file = file,
						tmp_fn;
			if (get_packed_filename(i, tmp_fn)) // Get file name
				return ERROR_INVALID_PARAMETER;
			tmp_file += tmp_fn;
			print_console("Dumping \"" + tmp_file + "\", size=" + std::to_string(get_record(i)->size) + ";  start=" + std::to_string((int)((uint8_t*)get_record(i) + get_record(i)->offset)) + ";  end=" + std::to_string(((int)((uint8_t*)get_record(i) + get_record(i)->offset)) + get_record(i)->size));
			// Write file
			int ret;
			if (ret = Files::dump_file(((uint8_t*)header + get_record(i)->offset), get_record(i)->size, tmp_file.c_str(), overwrite))
				return ret;
		}

		return ERROR_SUCCESS;
	}


	// Get-info methods:
	uint32_t record_count(){ if(header == NULL){ return 0; } return header->record_count; }
	uint32_t  header_size(){ if(header == NULL){ return 0; } return header->header_size;  }


	// Packed filename prefix
	const std::string packed_file_dir = "N:\\FRPG\\data\\INTERROOT_win32";
} Bnd3File;
*/


#endif // _DS1_OVERHAUL_GAME_ARCHIVE_FILE_H_