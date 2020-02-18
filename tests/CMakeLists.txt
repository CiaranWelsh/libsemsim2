
message(STATUS "GOOGLETEST_DIR ${GOOGLETEST_DIR}")
add_executable(libsemsim_tests
        ModelTests.cpp
        )
message(STATUS "PROJECT_SOURCE_DIR ${PROJECT_SOURCE_DIR}")

#add_test(NAME libsemsim_tests COMMAND libsemsim_tests)

message(STAUS "CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}")
target_include_directories(libsemsim_tests PUBLIC
        ${GOOGLETEST_DIR}/googletest/include
        ${CMAKE_SOURCE_DIR}/semsim2
        )

target_link_libraries(libsemsim_tests PUBLIC
        libsemsim
        gtest gtest_main
        )
