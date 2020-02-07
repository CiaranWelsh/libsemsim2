add_library(${CMAKE_PROJECT_NAME}_lib Fruit.h Fruit.cpp Preproc.h)
target_link_libraries(${CMAKE_PROJECT_NAME}_lib gtest gtest_main)