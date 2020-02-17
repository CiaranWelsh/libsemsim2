

add_library(libsemsim.lib
        SBMLReader.h        SBMLReader.cpp
        )
target_include_directories(libsemsim.lib PUBLIC
        ${DEPS_INCLUDE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}
        )
target_link_libraries(libsemsim.lib

        )

install(TARGETS libsemsim.lib DESTINATION lib)
install(FILES  SBMLReader.h DESTINATION include )