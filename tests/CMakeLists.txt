add_executable(${CMAKE_PROJECT_NAME}_tests
        test1.cpp ModelTests.cpp
        RDFReaderTests.cpp RDFReaderTests.h
        )
target_include_directories(${CMAKE_PROJECT_NAME}_tests PUBLIC
        ${CMAKE_SOURCE_DIR}/semsim2
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${PROJECT_BINARY_DIR}
        )
target_link_libraries(${CMAKE_PROJECT_NAME}_tests
        gtest
        gtest_main
        ${CMAKE_PROJECT_NAME}_lib

        )
