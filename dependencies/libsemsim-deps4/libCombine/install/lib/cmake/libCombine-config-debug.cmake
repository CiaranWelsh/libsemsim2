#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libCombine" for configuration "Debug"
set_property(TARGET libCombine APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libCombine PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/libCombine.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "D:/zlib/install/lib/zlibd.lib;libsbml-static;D:/zipper/install/lib/libZipper-static.lib;D:/libSBML-dependencies/INSTALL/lib/libxml2.lib;D:/libSBML-dependencies/INSTALL/lib/libbz2.lib;D:/libSBML-dependencies/INSTALL/lib/zdll.lib;D:/libSBML-dependencies/INSTALL/lib/libiconv.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/libCombine.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS libCombine )
list(APPEND _IMPORT_CHECK_FILES_FOR_libCombine "${_IMPORT_PREFIX}/lib/libCombine.lib" "${_IMPORT_PREFIX}/bin/libCombine.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
