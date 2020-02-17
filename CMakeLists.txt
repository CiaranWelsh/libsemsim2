cmake_minimum_required(VERSION 3.15)
project(libsemsim)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

#add_subdirectory(lib/googletest)

set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR}/INSTALL)
set(DEPENDENCY_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/dependencies)
set(DEPENDENCY_DIR ${DEPENDENCY_ROOT}/INSTALL)
set(DEPENDENCY_LIB_DIR ${DEPENDENCY_DIR}/lib)
set(DEPENDENCY_INCLUDE_DIR ${DEPENDENCY_DIR}/include)
set(DEPENDENCY_BIN_DIR ${DEPENDENCY_DIR}/bin)

if (NOT EXISTS ${DEPENDENCY_ROOT})
    message(FATAL_ERROR "DEPENDENCY_ROOT does not exist. This should evaluate \
to a folder called 'dependencies' under libsemsim root.")
endif()

if (NOT EXISTS ${DEPENDENCY_DIR})
    message(FATAL_ERROR "DEPENDENCY_DIR does not exist. This should evaluate \
to a folder called 'INSTALL' under the 'DEPENDENCY_ROOT' (${DEPENDENCY_ROOT}). Make \
sure you have executed the batch or shell script that builds the dependencies")
endif()

add_subdirectory(semsim)
#add_subdirectory(tests)

MESSAGE(STATUS "
DEPENDENCY_ROOT                 ${DEPENDENCY_ROOT}
DEPENDENCY_DIR                  ${DEPENDENCY_DIR}
DEPENDENCY_LIB_DIR              ${DEPENDENCY_LIB_DIR}
DEPENDENCY_INCLUDE_DIR          ${DEPENDENCY_INCLUDE_DIR}
DEPENDENCY_BIN_DIR              ${DEPENDENCY_BIN_DIR}
")



#include_directories(
#        ${gtest_SOURCE_DIR}/include
#        ${gtest_SOURCE_DIR}
#        semsim
#        omex
#        ontologies
#        path
#        query
#        rdf
#        sbml
#        util
#        ${CMAKE_SOURCE_DIR}/semsim2
#        ${CMAKE_SOURCE_DIR}/deps/include
#        ${CMAKE_SOURCE_DIR}/deps/include/raptor2
#)
# file(GLOB variable [RELATIVE path] [globbing expressions]...)
#SET(DEPS_DIR ${CMAKE_SOURCE_DIR}/deps)
#SET(DEPS_LIB_DIR ${DEPS_DIR}/lib)
#SET(DEPS_INCLUDE_DIR ${DEPS_DIR}/include)
#SET(DEPS_BIN_DIR ${DEPS_DIR}/bin)
#
#set(LIBSBML_LIB ${DEPS_LIB_DIR}/libsbml-static.lib)
#
#message(STATUS "DEPS_LIB_DIR ${DEPS_LIB_DIR}")
##DEPS_LIB_DIRlink_directories(
##        ${DEPS_LIB_DIR}/libCombine.lib
##        ${DEPS_LIB_DIR}/libiconv.lib
##        ${DEPS_LIB_DIR}/libsbml-static.lib
##        ${DEPS_LIB_DIR}/libsbml.lib
##        ${DEPS_LIB_DIR}/libxml2.lib
##        ${DEPS_LIB_DIR}/libZipper-static.lib
##        ${DEPS_LIB_DIR}/zdll.lib
##        )
#
#add_subdirectory(semsim2)
#add_subdirectory(tests)

# first we can indicate the documentation build as an option and set it to ON by default
#option(BUILD_DOC "Build documentation" ON)
#if (${BUILD_DOC})
#endif()


#ADD_SUBDIRECTORY(docs)

#message(STATUS "
#This is a summary of where I am with building libsemgen
#-------------------------------------------------------
#I couldn't build the original project so I thought the best approach
#would be for me to rewrite the cmake script in a new project and see if I could build it by
#copying the files across.
#
#Here are a bunch of things that I have done:
#--------------------------------------------
#1) I want this software to be self contained. Therefore I have included the dependencies in the repository itself.
#The complication is that some of the dependencies have dependencies and it seems you cannot easily enforce cmake
#to build and install a particular target before building another (I tried). There is the ExternalProject_add feature
#I'm not sure if this is an appropriate direction.
#
#Instead I've introduced a tiered system of dependencies, tier1 should be build first as they have no dependencies,
#tier 2 depends on teri1 and so on. At present, the individual tiers need to be build separately, and in
#order, before we can build libsemsim. However, since I have done things this way, the location of the dependecies are
#predictable, allowing me to hard code the required options in the cmake files. The result is that it *should* be easy to write
#a batch/shell script to build the dependencies and then the library itself.
#
#3) I have tried to build the docs. The docs uses a combination of sphinx and doxygen. Another package called breathe was used as an interface.
#Sphinx is reasonably easy and I've used it before, breathe is a sphinx extension. while I've not used
#doxygen before. The issue with this is that I cannot find a way to locate a sphinx lib/exe for linking against. Sphinx
#does not provide a FindSphinx.cmake so various blogs/forums suggest that it is easy to write one. I have not yet got this working.
#
#4) I have setup linking against googletest library so we can move forward with test driven development.
#
#Here are a bunch of things that I think need doing
#--------------------------------------------------
#1) think about exactly what features we want to support and the best way to implement them. I want to
#understand the design of the program, which features are currently implemented and how to use them. This is
#some of the src files were also commented out in the cmake file - what is the significance of this?
#
#2) decide whether to support older c++. There may be some nuances that I do not understand here, but whats the point?
# I'm talking with specific reference to the wrapper around unique_ptr, which is apparently different if were using
#a c++ 3 or 11. I would rther just use a more recent compiler so we do not need preprocessor directives to
#switch between (things like) smart pointer libraries.
#
#4) support for rasqal. This is the only library I haven't yet been able to build (on windows 10 with latest visual studio compilers etc)
#because it uses a different build system (configure/autogen and not cmake. I suggest making a decision on how
#important this library is. If we need it, I could try to write a cmake file myself for building on windows. Alternative suggestion
#is to just take the classes/src code that is needed directly from rasqal or reimplementing the functionality in pure c++.
#We could also consider alternative libraries which are cross platform (if they exist). Besides this library is at least 15 years
#old, according the one of the commits.
#
#5) So for I've only used windows and vs for compiling. I also need to work on linux/mac os.
#
#6) why are we using c/c++ for this anyway? Python libraries exist.
#
#")
#




