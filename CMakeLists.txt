cmake_minimum_required(VERSION 3.15)
project(libsemsim)


add_subdirectory(lib/googletest)

include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR} src)

add_subdirectory(src)
add_subdirectory(tests)