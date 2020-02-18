

add_library(libsemsim
        SBMLReader.h        SBMLReader.cpp
        )

target_include_directories(libsemsim PRIVATE
        ${DEPENDENCY_INCLUDE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}
        )
target_link_libraries(libsemsim
        ${DEPENDENCY_LIB_DIR}/libsbml.lib
        )

#install(TARGETS libsemsim.lib DESTINATION lib)
#install(FILES  SBMLReader.h DESTINATION include )