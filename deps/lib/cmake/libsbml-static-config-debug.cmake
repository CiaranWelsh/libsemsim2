#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libsbml-static" for configuration "Debug"
set_property(TARGET libsbml-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libsbml-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsbml-static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS libsbml-static )
list(APPEND _IMPORT_CHECK_FILES_FOR_libsbml-static "${_IMPORT_PREFIX}/lib/libsbml-static.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
