
file(GLOB_RECURSE SOURCES
        "*.cpp"
        )

file(GLOB_RECURSE HEADERS
        "*.h"
        )

MESSAGE(STATUS ${SOURCES})

set(SEMSIM_SOURCES
#        BiomodelsQualifiers.cpp BiomodelsQualifiers.h
        Relation.cpp Relation.h
#        Resource.cpp Resource.h
#        SingularAnnotation.cpp SingularAnnotation.h
        SemSim.cpp SemSim.h
#        SemSimQualifiers.cpp SemSimQualifiers.h
#        omex/OmexOutput.cpp omex/OmexOutput.h
#        omex/SBMLOmex.cpp omex/SBMLOmex.h
#        rdf/RDFReader.cpp rdf/RDFReader.h
        )

add_library(${CMAKE_PROJECT_NAME}_lib
        #        ${SOURCES} ${HEADERS}
#        Preproc.h
#        SemSimObject.h SemSimObject.cpp
        ${SEMSIM_SOURCES}
        )

target_link_libraries(${CMAKE_PROJECT_NAME}_lib gtest gtest_main)