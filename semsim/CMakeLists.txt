
file(GLOB_RECURSE SOURCES
        "*.cpp"
        )

file(GLOB_RECURSE HEADERS
        "*.h"
        )

MESSAGE(STATUS ${SOURCES})

set(SEMSIM_SOURCES
#        omex/OmexOutput.h   omex/OmexOutput.cpp
#        omex/SBMLOmex.h     omex/SBMLOmex.cpp
#        ontologies/CHEBI.h
#        ontologies/CL.h
#        ontologies/GO.h
#        ontologies/OPB.h
#        ontologies/SBO.h
#        path/path.hpp
#        rdf/RDFReader.h rdf/RDFReader.cpp
#        sbml/Accessors.h
#        sbml/Annotations.h
#        sbml/SBMLImporter.h
#        sbml/SBMLModel.h
#        sbml/Species.h
#        util/Indent.h
#        util/UniquePtr.h
#        AnnotationBase.h
#        BiomodelsQualifiers.h
#        BiomodelsQualifiers.cpp
#        Component.h
#        CompositeAnnotation.h
#        DescriptorTerm.h
#        Entity.h
#        EntityBase.h
#        EntityDescriptor.h
#        Mediator.h
#        Model.h
#        Ontology.h
#        Participant.h
#        PhysicalProperty.h
#        Preproc.h
#        Process.h
#        RaptorUtils.h
#        Relation.h Relation.cpp
#        Resource.h Resource.cpp
#        SemSim.h SemSim.cpp
#        SemSimObject.h SemSimObject.cpp
#        SingularAnnotation.h SingularAnnotation.cpp
#        Sink.h
#        Source.h
#        Term.h
#        URI.h


#        Model.h
#        Preproc.h
#        Component.h
#        BiomodelsQualifiers.cpp BiomodelsQualifiers.h
#        Relation.cpp Relation.h
#        Resource.cpp Resource.h
#        SingularAnnotation.cpp SingularAnnotation.h
#        SemSim.cpp SemSim.h
#        SemSimQualifiers.cpp SemSimQualifiers.h
#        omex/OmexOutput.cpp omex/OmexOutput.h
#        omex/SBMLOmex.cpp omex/SBMLOmex.h
#        rdf/RDFReader.cpp rdf/RDFReader.h
        ../semsim2/SBMLReader.cpp ../semsim2/SBMLReader.h)

add_library(${CMAKE_PROJECT_NAME}_lib
#                ${SOURCES} ${HEADERS}
#        Preproc.h
#        SemSimObject.h SemSimObject.cpp
        ${SEMSIM_SOURCES}
        )

target_link_libraries(${CMAKE_PROJECT_NAME}_lib gtest gtest_main)