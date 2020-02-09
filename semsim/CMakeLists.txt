
file(GLOB_RECURSE SOURCES
        "*.cpp"
        )

file(GLOB_RECURSE HEADERS
        "*.h"
        )

MESSAGE(STATUS ${SOURCES})

add_library(${CMAKE_PROJECT_NAME}_lib
        ${SOURCES} ${HEADERS}
        )

target_link_libraries(${CMAKE_PROJECT_NAME}_lib gtest gtest_main)