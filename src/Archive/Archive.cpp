/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
    Sean Pesce    -  C++

*/



#ifdef _MSC_VER
	#pragma warning( push )
	#pragma warning( disable : 4521 4800 4244 4996 4503) // Disable "multiple copy constructors", "data loss", and "name truncated" warnings from SeQan library
#endif // _MSC_VER
    #include "Archive/Archive.h"
#ifdef _MSC_VER
	#pragma warning( pop )
#endif // _MSC_VER


// Flag to denote that the list of packed .bdt files has finished loading
bool Archive::bdt_file_name_set_loaded = false;

// Searchable set of filenames for files stored in .bdt archives
SpSearchStringSetA Archive::bdt_file_name_set;