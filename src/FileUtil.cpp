/*
    DARK SOULS GAME FILE C++ LIBRARY

    Contributors to this file:
        Sean Pesce    -    C++
*/


#include <sstream>
#include "Shlobj.h"
#include "sp/file.h"
#include "FileUtil.h"
#include "FileList.h"
#include <Wincrypt.h>


// Checks if the specified file exists (char* string)
bool FileUtil::file_exists(const char* file)
{
    std::ifstream check_file(file);
    bool exists = check_file.good();
    check_file.close();
    return exists;
}

// Checks if the specified file exists (wchar_t* string)
bool FileUtil::file_exists(const wchar_t* file)
{
    std::ifstream check_file(file);
    bool exists = check_file.good();
    check_file.close();
    return exists;
}

static int string_wide_to_mb(wchar_t* in_string, std::string &out_string) {
    size_t len = std::wstring(in_string).length();
    if (len == 0)
        return 0;

    char *buffer = (char*)malloc(sizeof(char) * (len + 1));

    errno_t ret_val = 0;
    if (ret_val = wcstombs_s(NULL, buffer, len + 1, in_string, sizeof(wchar_t)*(len + 1)))
    {
        // Error converting from wide char to char
        free(buffer);
        return 1;
    }

    out_string.append(buffer);

    free(buffer);
    return 0;
}

// Obtains the size of the specified file (in bytes)
size_t FileUtil::file_size(const wchar_t* file) // (wide char* string)
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
size_t FileUtil::file_size(const char* file) // (char* string)
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

/*
    Reads the given number of bytes from the specified offset of a file and stores the data in the supplied buffer
    If buffer is not NULL, it is assumed that the buffer size is at least num_bytes. If buffer is NULL, and allow_alloc
    is true, memory is dynamically allocated for the data, and must be manually freed with CoTaskMemFree.
*/
void *FileUtil::read_from_offset(const char* file, unsigned long offset, size_t num_bytes, void *buffer, bool allow_alloc)
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
        if (manual_allocation)
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
int FileUtil::dump_file(void *source, size_t size, const char *new_file, bool overwrite)
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
    while (file[0] == '\\')
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
uint32_t FileUtil::get_filename_hash(const char *filename)
{
    if (filename == NULL)
    {
        SetLastError(ERROR_INVALID_PARAMETER);
        return 0;
    }

    uint32_t hash = 0;

    // Convert filename to lowercase
    std::string filename_lower = filename;
    FileUtil::to_lowercase((char*)filename_lower.c_str());

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
int FileUtil::to_lowercase(char *string)
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
uint32_t FileUtil::reverse_endian(uint32_t from_endian_int)
{
    uint8_t bytes[4] = { ((uint8_t*)&from_endian_int)[3], ((uint8_t*)&from_endian_int)[2], ((uint8_t*)&from_endian_int)[1], ((uint8_t*)&from_endian_int)[0] };
    return *(uint32_t*)bytes;
}


/*
    Converts the given integer value to hexadecimal string representation
    and stores it in the supplied output string.
*/
const char *FileUtil::to_hex_string(int number, std::string &out_string, bool hex_prefix, bool full_bytes)
{
    out_string.clear();
    std::stringstream hex_stream;
    hex_stream << std::hex << number;
    if (hex_prefix) {
        out_string += "0x";
    }
    if (full_bytes && number < 16 && number > -16) {
        out_string += '0';
    }
    out_string.append(hex_stream.str());
    return out_string.c_str();
}


/*
    Calculates the MD5 hash for the data in a given block of memory
*/
uint32_t FileUtil::calculate_md5_hash(uint8_t *data, uint32_t size, uint32_t hash_length, std::vector<uint8_t> &output)
{
    uint8_t *buffer = NULL;
    uint32_t err;
    HCRYPTPROV hash_provider = 0;
    HCRYPTHASH hash = 0;
    output.clear();

    if (data == NULL)
    {
        SetLastError(ERROR_INVALID_ADDRESS);
        return ERROR_INVALID_ADDRESS;
    }

    if ((buffer = (uint8_t*)CoTaskMemAlloc(hash_length)) == NULL)
    {
        // Unable to allocate memory
        SetLastError(ERROR_OUTOFMEMORY);
        return ERROR_OUTOFMEMORY;
    }

    // Get handle to crypto provider
    if (!CryptAcquireContext(&hash_provider, NULL, NULL,
                             PROV_RSA_FULL, CRYPT_VERIFYCONTEXT))
    {
        err = GetLastError();
        CoTaskMemFree(buffer);
        SetLastError(err);
        return err;
    }

    // Initialize hashing stream
    if (!CryptCreateHash(hash_provider, CALG_MD5, 0, 0, &hash))
    {
        err = GetLastError();
        CryptReleaseContext(hash_provider, 0);
        CoTaskMemFree(buffer);
        SetLastError(err);
        return err;
    }

    // Calculate hash
    if (!CryptHashData(hash, data, size, 0))
    {
        err = GetLastError();
        CryptReleaseContext(hash_provider, 0);
        CryptDestroyHash(hash);
        CoTaskMemFree(buffer);
        SetLastError(err);
        return err;
    }

    // Get final hash value
    if (CryptGetHashParam(hash, HP_HASHVAL, buffer, (DWORD*)&hash_length, 0))
    {
        err = ERROR_SUCCESS;
        for (int i = 0; i < (int)hash_length; i++) {
            output.push_back(buffer[i]);
        }
    }
    else
    {
        err = GetLastError();
    }

    CryptDestroyHash(hash);
    CryptReleaseContext(hash_provider, 0);
    CoTaskMemFree(buffer);
    SetLastError(err);
    return err;
}

