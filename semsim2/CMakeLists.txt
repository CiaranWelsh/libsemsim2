
message(STATUS "CMAKE_CURRENT_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}")
message(STATUS "DEPS_INCLUDE_DIR ${DEPS_INCLUDE_DIR}")
message(STATUS "PROJECT_BINARY_DIR ${PROJECT_BINARY_DIR}")
add_library(${CMAKE_PROJECT_NAME}_lib
        SBMLReader.h        SBMLReader.cpp
        )
target_include_directories(${CMAKE_PROJECT_NAME}_lib PUBLIC
        ${DEPS_INCLUDE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}
        )
target_link_libraries(${CMAKE_PROJECT_NAME}_lib

        )

install(TARGETS
            ${CMAKE_PROJECT_NAME}_lib
        DESTINATION
            lib)
install(FILES
            SBMLReader.h
        DESTINATION
            include
        )