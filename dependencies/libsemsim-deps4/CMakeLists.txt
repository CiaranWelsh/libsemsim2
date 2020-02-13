cmake_minimum_required(VERSION 3.15)
project(libsemsim-deps4)



get_filename_component(PARENT_PROJECT_DIR ${PROJECT_SOURCE_DIR} DIRECTORY)
set(DEPS_DIR ${PARENT_PROJECT_DIR}/deps)
SET(DEPS_INCLUDE_DIR ${DEPS_DIR}/include)
SET(DEPS_LIB_DIR ${DEPS_DIR}/lib)

set(CMAKE_INSTALL_PREFIX  ${DEPS_DIR})

include_directories(${DEPS_INCLUDE_DIR})


message(STATUS "PARENT_PROJECT_DIR ${PARENT_PROJECT_DIR}")

add_subdirectory(libCombine)



