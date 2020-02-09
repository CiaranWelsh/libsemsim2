add_executable(${CMAKE_PROJECT_NAME}_tests
        test1.cpp)
target_link_libraries(${CMAKE_PROJECT_NAME}_tests gtest gtest_main)