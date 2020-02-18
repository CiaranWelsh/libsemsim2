project(libsemsim-deps1)
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

add_subdirectory(libiconv)
add_subdirectory(zlib)
add_subdirectory(yajl)
add_subdirectory(prebuilt_binaries)
add_subdirectory(googletest)

install(DIRECTORY googletest DESTINATION ${DEPENDENCY_INSTALL_DIR})