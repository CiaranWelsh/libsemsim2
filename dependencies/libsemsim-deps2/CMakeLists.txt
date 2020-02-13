project(libsemsim-deps2)
cmake_minimum_required(VERSION 3.15)

get_filename_component(INSTALL_DIR ${PROJECT_SOURCE_DIR} DIRECTORY)

set(CMAKE_INSTALL_PREFIX ${INSTALL_DIR}/deps)

get_filename_component(PARENT_PROJECT_DIR ${PROJECT_SOURCE_DIR} DIRECTORY)
set(DEPS_DIR ${PARENT_PROJECT_DIR}/deps)
SET(DEPS_INCLUDE_DIR ${DEPS_DIR}/include)
SET(DEPS_LIB_DIR ${DEPS_DIR}/lib)


add_subdirectory(libxml2)
add_subdirectory(zipper)

#target_include_directories(../deps)
