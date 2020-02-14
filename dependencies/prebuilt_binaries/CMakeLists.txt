project(libsemsim-prebuilt_binaries)
cmake_minimum_required(VERSION 3.15)

# set some variables that are the same throughout all dependency levels
get_filename_component(DEPENDENCY_DIR ${CMAKE_CURRENT_SOURCE_DIR} DIRECTORY)
set(DEPENDENCY_BUILD_DIR    ${DEPENDENCY_DIR}/BUILD)
set(DEPENDENCY_INSTALL_DIR  ${DEPENDENCY_DIR}/INSTALL)
set(CMAKE_INSTALL_PREFIX    ${DEPENDENCY_INSTALL_DIR})
set(DEPENDENCY_INCLUDE_DIR  ${DEPENDENCY_INSTALL_DIR}/include)
set(DEPENDENCY_LIB_DIR      ${DEPENDENCY_INSTALL_DIR}/lib)
set(DEPENDENCY_BIN_DIR      ${DEPENDENCY_INSTALL_DIR}/bin)

message(STATUS "
Building libsemsim dependency package 1

important directories
---------------------

- CMAKE_CURRENT_SOURCE_DIR  ${CMAKE_CURRENT_SOURCE_DIR}
- CMAKE_INSTALL_PREFIX      ${CMAKE_INSTALL_PREFIX}
- DEPENDENCY_DIR            ${DEPENDENCY_DIR}
- DEPENDENCY_BUILD_DIR      ${DEPENDENCY_BUILD_DIR}
- DEPENDENCY_INSTALL_DIR    ${DEPENDENCY_INSTALL_DIR}
- DEPENDENCY_INCLUDE_DIR    ${DEPENDENCY_INCLUDE_DIR}
- DEPENDENCY_LIB_DIR        ${DEPENDENCY_LIB_DIR}
- DEPENDENCY_BIN_DIR        ${DEPENDENCY_BIN_DIR}

")

# installing libxslt into dependencies/INSTALL
set(LIBXSLT_PREBUILT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libxslt)

install(DIRECTORY ${LIBXSLT_PREBUILT_DIR}/bin       DESTINATION ${CMAKE_INSTALL_PREFIX} )
install(DIRECTORY ${LIBXSLT_PREBUILT_DIR}/include   DESTINATION ${CMAKE_INSTALL_PREFIX} )
install(DIRECTORY ${LIBXSLT_PREBUILT_DIR}/lib       DESTINATION ${CMAKE_INSTALL_PREFIX} )

#install winflexbison if win32. win_flex_bison doesn't seem to conform to the usual install structure
# so just copy whole directory across to CMAKE_INSTALL_PREFIX and use as is
if ($WIN32)
    install(DIRECTORY win_flex_bison    DESTINATION ${CMAKE_INSTALL_PREFIX})
endif ()