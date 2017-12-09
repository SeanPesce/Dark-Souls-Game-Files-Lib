/*
	Legacy console command functions from Dark Souls Overhaul project

		Dark Souls Overhaul repository can be found here:
			https://github.com/metal-crow/Dark-Souls-1-Overhaul

	This file defines custom console commands that will
	be registered with the in-game console at runtime.
*/

#include "DllMain.h"
#include "Plugin/ConsoleCommands.h"
#include "GameFiles/Archive/BdtArchive.h"


///////////////////////////////////////////////////////////
//////////////// Console command functions ////////////////
///////////////////////////////////////////////////////////




// Enables/disables armor sound effects
int cc_armor_sfx(std::vector<std::string> args, std::string *output)
{
	int ret_val = CONSOLE_COMMAND_SUCCESS;
	if (args.size() > 0)
	{
		switch (parse_toggle_arg(args.at(0).c_str()))
		{
			case 0:
				Game::enable_armor_sfx(false);
				break;
			case 1:
				Game::enable_armor_sfx(true);
				break;
			default:
				output->append(ERROR_INVALID_BOOL_ARGUMENT + "\n");
				ret_val = ERROR_INVALID_PARAMETER;
				break;
		}
	}

	if (Game::armor_sfx_enabled())
	{
		output->append("Armor sfx = enabled");
	}
	else
	{
		output->append("Armor sfx = disabled");
	}
	return ret_val;
}



// Searches the list of packed BDT files for the given filename
int cc_search_bdt(std::vector<std::string> args, std::string *output)
{
	if (!Archive::bdt_file_set_loaded)
	{
		output->append("ERROR: No file list loaded");
		return ERROR_BAD_ENVIRONMENT;
	}

	if (args.size() < 1)
	{
		output->append(ERROR_NOT_ENOUGH_ARGUMENTS);
		return ERROR_BAD_ARGUMENTS;
	}

	std::vector<std::string> results;
	std::string query;
	unsigned int max_results = 0;

	if (args.size() > 1)
	{
		std::stringstream str_to_int;
		str_to_int.str(args.at(0));
		int temp_int = 0;
		str_to_int >> temp_int;
		if (temp_int < 1)
			output->append("WARNING: Invalid search result limit (" + std::to_string(temp_int) + "); using default setting instead (no limit).\n");
		else
			max_results = temp_int;

		query = args.at(1);
	}
	else
	{
		// 1 argument was passed (search query)
		query = args.at(0);
	}

	Archive::bdt_file_set.search(query, results, max_results, SSS_SUPER_STRING);
	output->append("Results:");

	// Print list of search results
	for (std::string res : results)
	{
		output->append("\n    " + res);
	}

	if (results.size() < 1)
	{
		output->append("\nNo matches found for \"");
	}
	else if (results.size() == 1)
	{
		output->append("\nFound 1 match for \"");
	}
	else
	{
		output->append("\nFound " + std::to_string(results.size()) + " matches for \"");
	}

	output->append(query + "\"");
	return ERROR_SUCCESS;
}

// Attempts to extract the specified file from the BDT files
int cc_bdt_extract(std::vector<std::string> args, std::string *output)
{
	if (args.size() < 1)
	{
		output->append(ERROR_NOT_ENOUGH_ARGUMENTS);
		return ERROR_BAD_ARGUMENTS;
	}

	std::string base_archive_name;
	if (Mod::custom_game_archives.length() > 0)
	{ // Using custom archive file names
		if (string_wide_to_mb((wchar_t*)Mod::custom_game_archives.c_str(), base_archive_name))
		{
			// Failed to convert wide char string; use default game file
			base_archive_name = BdtArchive::FILE_NAME_DEFAULT;
		}
	}
	else
		base_archive_name = BdtArchive::FILE_NAME_DEFAULT;
	
	std::string bdt;
	std::string bhd;
	std::string out_file;
	bool success = false;

	if (args.size() > 1)
	{
		// Second argument is output file
		out_file = args.at(1);
	}
	else
	{
		// No output file specified; use the packed file's original name
		out_file = args.at(0);
	}

	for (int i = 0; i < (int)BdtArchive::FILE_COUNT_DEFAULT; i++)
	{
		bdt = base_archive_name + std::to_string(i) + BdtArchive::FILE_EXTENSION;
		bhd = base_archive_name + std::to_string(i) + Bhd5Archive::FILE_EXTENSION;
		output->append("Trying " + bdt + " & " + bhd + "...\n");

		int ret;
		if (!(ret = Bhd5Archive::extract_from_bdt_by_filename(bdt.c_str(), bhd.c_str(), args.at(0).c_str(), out_file.c_str())))
		{
			// Found and successfully extracted file from BDT
			success = true;
			break;
		}
		else
		{
			output->append("    Failed with error code " + std::to_string(ret) + "\n");
		}
	}

	if (success)
		output->append("SUCCESS: " + args.at(0) + " was extracted from " + bdt + " and saved as " + out_file);
	else
		output->append("FAILED: Unable to find " + args.at(0) + " within game archives.");

	return ERROR_SUCCESS;
}




/*
	Called once at startup; registers all the above commands
	for use with the in-game console.
*/
void Mod::register_console_commands()
{
	register_console_command(ccn_armor_sfx, cc_armor_sfx, chm_armor_sfx);
	register_console_alias(cca_armor_sounds, ccn_armor_sfx);
	register_console_command(ccn_search_bdt, cc_search_bdt, chm_search_bdt);
	register_console_command(ccn_bdt_extract, cc_bdt_extract, chm_bdt_extract);
}