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
        deps/include/raptor2
)

add_subdirectory(semsim)
add_subdirectory(tests)

# first we can indicate the documentation build as an option and set it to ON by default
#option(BUILD_DOC "Build documentation" ON)
#if (${BUILD_DOC})
#endif()


#ADD_SUBDIRECTORY(docs)

message(STATUS "
This is a summary of where I am with building libsemgen
-------------------------------------------------------
I couldn't build the original project so I thought the best approach
would be for me to rewrite the cmake script in a new project and see if I could build by
copying the files across.

Here are a bunch of things that I have done:
--------------------------------------------
1) I want this software to be self contained. Therefore I have included the dependencies in the repository itself.
The complication is that some of the dependencies have dependencies and it seems you cannot easily enforce cmake
to build and install a particular target before building another (I tried). There is the ExternalProject_add feature but
this requires some expertise so will take time for me to figure out if we decide to go in this direction.

2) Instead I've introduced a tiered system of dependencies, tier1 should be build first as they have no dependencies,
tier 2 depends on teri1 and so on. At present, the individual tiers need to be build separately and in
order before we can build libsemsim. However, since I have done things this way, the location of the dependecies are
predictable, allowing me to hard code the required options in the cmake files. The result: it *should be easy to write
a batch/shell script to build the dependencies and then the library itself.

3) I have tried to build the docs. The docs uses a combination of sphinx and doxygen using breathe as an interface.
Sphinx is easy and I've used it before, breathe is another python library, a sphinx extension while I've not used
doxygen before. The issue with this is that I cannot find a way to locate a sphinx lib/exe for linking against. Sphinx
does not provide a FindSphinx.cmake so various blogs/forums suggest that it is easy to write one. However, I cannot
get this working, so I cannot build the docs.

4) I have setup linking against google test library so we can move forward with test driven development.

Here are a bunch of things that I think need doing
--------------------------------------------------
1) we need a conversation about exactly what features you want to support. This isn't my library or even my field so
the decisions of exactly what needs doing should come from somewhere else. Obviously I'll contribute towards this
as much as possible but we do not want to spend too long on this.

2) decide whether to support older c++. There may be some nuances that I do not understand here, but my opinion
is: whats the point. I'm talking with specific reference to the wrapper around unique_ptr, which is apparently different if were using
a c++ 3 or 11 (or something). I suggest enforcing use of a more recent compiler so we do not need preprocessor directives to
switch between (things like) smart pointer libraries.

3) The state the library was left in an ambiguous state in that half of the src files were commented out of the cmake
files. Therefore, I don't know what functionality is important: (related to point 1)

4) support for rasqal. This is the only library I haven't yet been able to build (on windows 10 with latest visual studio compilers etc).
The primary reason why I haven't is because it uses configure/make/autogen and not cmake. I suggest making a decision on how
important this library is. If we need it, I could try to write a cmake file myself for building on windows. Alternative suggestion
is to just take the classes/src code that is needed directly from rasqal or reimplementing the functionality in pure c++.
We could also consider alternative libraries which are cross platform (if they exist). Besides this library is at least 15 years
old, according the one of the commits.

5) So for I've only used windows and vs for compiling. I also need to work on linux/mac os.

")





