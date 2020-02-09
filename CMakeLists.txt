cmake_minimum_required(VERSION 3.15)
project(libsemsim)


add_subdirectory(lib/googletest)
message(STATUS "CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}")

set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR}/INSTALL)
set(DEPS_DIR )

include_directories(
        ${gtest_SOURCE_DIR}/include
        ${gtest_SOURCE_DIR}
        semsim
        omex
        ontologies
        path
        query
        rdf
        sbml
        util
        deps/include
)

add_subdirectory(semsim)
add_subdirectory(tests)