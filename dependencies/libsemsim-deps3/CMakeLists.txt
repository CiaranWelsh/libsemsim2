project(libsemsim-deps3)
cmake_minimum_required(VERSION 3.15)


get_filename_component(PARENT_PROJECT_DIR ${PROJECT_SOURCE_DIR} DIRECTORY)
set(DEPS_DIR ${PARENT_PROJECT_DIR}/deps)
SET(DEPS_INCLUDE_DIR ${DEPS_DIR}/include)
SET(DEPS_LIB_DIR ${DEPS_DIR}/lib)

set(CMAKE_INSTALL_PREFIX ${DEPS_DIR})

message(STATUS "PARENT_PROJECT_DIR ${PARENT_PROJECT_DIR}")
message(STATUS "DEPS_DIR ${DEPS_DIR}")
message(STATUS "DEPS_INCLUDE_DIR ${DEPS_INCLUDE_DIR}")

set(LIBSBML_DIR ${CMAKE_SOURCE_DIR}/libsbml)
set(RAPTOR_DIR ${CMAKE_SOURCE_DIR}/raptor)

add_subdirectory(libsbml)
add_subdirectory(raptor)