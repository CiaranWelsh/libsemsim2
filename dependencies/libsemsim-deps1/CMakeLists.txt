project(libsemsim-deps1)
cmake_minimum_required(VERSION 3.15)

# set some variables that are the same throughout all dependency levels
get_filename_component(DEPENDENCY_DIR ${CMAKE_CURRENT_SOURCE_DIR} DIRECTORY)
set(DEPENDENCY_BUILD_DIR ${DEPENDENCY_DIR}/BUILD)
set(DEPENDENCY_INSTALL_DIR ${DEPENDENCY_DIR}/INSTALL)
set(CMAKE_INSTALL_PREFIX ${DEPENDENCY_INSTALL_DIR})



message("Building dependency package 1")
message(STATUS "
important directories
----------------------

- CMAKE_CURRENT_SOURCE_DIR  ${CMAKE_CURRENT_SOURCE_DIR}
- CMAKE_INSTALL_PREFIX      ${CMAKE_INSTALL_PREFIX}
- DEPENDENCY_DIR            ${DEPENDENCY_DIR}
- DEPENDENCY_BUILD_DIR      ${DEPENDENCY_BUILD_DIR}
- DEPENDENCY_INSTALL_DIR    ${DEPENDENCY_INSTALL_DIR}

")

add_subdirectory(libiconv)
add_subdirectory(zlib)

