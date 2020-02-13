#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libCombine-static" for configuration "Debug"
set_property(TARGET libCombine-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libCombine-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libCombine-static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS libCombine-static )
list(APPEND _IMPORT_CHECK_FILES_FOR_libCombine-static "${_IMPORT_PREFIX}/lib/libCombine-static.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
