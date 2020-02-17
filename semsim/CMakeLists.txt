set(SEMSIM_SOURCES
        omex/OmexOutput.h   omex/OmexOutput.cpp
        omex/SBMLOmex.h     omex/SBMLOmex.cpp
        ontologies/CHEBI.h
        ontologies/CL.h
        ontologies/GO.h
        ontologies/OPB.h
        ontologies/SBO.h
        path/path.hpp
        rdf/RDFReader.h rdf/RDFReader.cpp
        sbml/Accessors.h
        sbml/Annotations.h
        sbml/SBMLImporter.h
        sbml/SBMLModel.h
        sbml/Species.h
        util/Indent.h
        util/UniquePtr.h
        AnnotationBase.h
        BiomodelsQualifiers.h
        BiomodelsQualifiers.cpp
        Component.h
        CompositeAnnotation.h
        DescriptorTerm.h
        Entity.h
        EntityBase.h
        EntityDescriptor.h
        Mediator.h
        Model.h
        Ontology.h
        Participant.h
        PhysicalProperty.h
        Preproc.h
        Process.h
        RaptorUtils.h
        Relation.h Relation.cpp
        Resource.h Resource.cpp
        SemSim.h SemSim.cpp
        SemSimObject.h SemSimObject.cpp
        SingularAnnotation.h SingularAnnotation.cpp
        Sink.h
        Source.h
        Term.h
        URI.h
        Model.h
        Preproc.h
        Component.h
        BiomodelsQualifiers.cpp BiomodelsQualifiers.h
        Relation.cpp Relation.h
        Resource.cpp Resource.h
        SingularAnnotation.cpp SingularAnnotation.h
        SemSim.cpp SemSim.h
        SemSimQualifiers.cpp SemSimQualifiers.h
        omex/OmexOutput.cpp omex/OmexOutput.h
        omex/SBMLOmex.cpp omex/SBMLOmex.h
        rdf/RDFReader.cpp rdf/RDFReader.h
        )

add_library(libsemsim.lib ${SEMSIM_SOURCES})

target_include_directories(libsemsim.lib PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}/omex
        ${CMAKE_CURRENT_SOURCE_DIR}/ontologies
        ${CMAKE_CURRENT_SOURCE_DIR}/path
        ${CMAKE_CURRENT_SOURCE_DIR}/rdf
        ${CMAKE_CURRENT_SOURCE_DIR}/sbml
        ${CMAKE_CURRENT_SOURCE_DIR}/util
        ${DEPENDENCY_INCLUDE_DIR}
        ${DEPENDENCY_INCLUDE_DIR}/combine
        ${DEPENDENCY_INCLUDE_DIR}/gmock
        ${DEPENDENCY_INCLUDE_DIR}/gtest
        ${DEPENDENCY_INCLUDE_DIR}/iconv
        ${DEPENDENCY_INCLUDE_DIR}/libxml
        ${DEPENDENCY_INCLUDE_DIR}/omex
        ${DEPENDENCY_INCLUDE_DIR}/raptor2
        ${DEPENDENCY_INCLUDE_DIR}/sbml
        )

target_link_directories(libsemsim.lib PUBLIC ${DEPENDENCY_LIB_DIR})


target_link_libraries(libsemsim.lib
        ${DEPENDENCY_LIB_DIR}/libCombine.lib
        ${DEPENDENCY_LIB_DIR}/libiconv.lib
        ${DEPENDENCY_LIB_DIR}/libsbml.lib
        ${DEPENDENCY_LIB_DIR}/libxml2.lib
        ${DEPENDENCY_LIB_DIR}/raptor2.lib
        ${DEPENDENCY_LIB_DIR}/zdll.lib
        )