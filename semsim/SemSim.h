# ifndef SEMSIM_H_
# define SEMSIM_H_

// important classes (includes may be redundant - that's okay)
# include "Preproc.h"
# include "Relation.h"
# include "Resource.h"
# include "EntityBase.h"
# include "Entity.h"
# include "PhysicalProperty.h"

# include "SingularAnnotation.h"
# include "CompositeAnnotation.h"

# include "Component.h"
# include "Participant.h"
# include "Source.h"
# include "Sink.h"
# include "Mediator.h"
# include "Process.h"

# include "Model.h"
# include "sbml/SBMLModel.h"
# include "sbml/SBMLImporter.h"

# include "BiomodelsQualifiers.h"
// # include "SemSimObject.h"

# include "Ontology.h"
# include "ontologies/CHEBI.h"
# include "ontologies/OPB.h"
# include "ontologies/GO.h"
# include "ontologies/CL.h"

# include "omex/OmexOutput.h"
# include "omex/SBMLOmex.h"

# include "query/RasqalQueryResult.h"
# include "query/RasqalQuery.h"

# include "path/path.hpp"

SEMSIM_PUBLIC void libsemgen_hello();
// void cellml_hello();
// void sbml_hello();
// void printModel();
// void printModel(char* filename);
// void printSBMLModelMath(char* filename);
// void updateSpeciesID(char *old_filename, char *new_filename, char *old_sid, char *new_sId);
// void getSBMLAnnotation(char* filename);
// void readOMEX(char *OMEXfilename, char *model_rdf, char *model_sbml);
// void addOMEX(char* path, char* filename);
// void getXMLelements(char *SBMLfilename);
// void notSure(char *filename);
// void getXPATHnamespace(char *filename, char *query);
// void parseXPATH(char *filename, char *query, char *nslist);
// void getAllEntities_RDF(char *filename);
// void getAllEntities_SBML(char *filename);
// void getInfo_SBML(char *filename, char *id);
// void getInfo_RDF(char *filename, char *id);
// void getRDFmodel(char *filename);
// void getRDFmodel_EntityInfo(char *filename, char *subject_query, char *predicate_query);

# endif
