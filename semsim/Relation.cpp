# include "Relation.h"
# include "BiomodelsQualifiers.h"

namespace semsim {
  std::string Relation::humanize() const {
    return bqb::humanizeQualifier(*this);
  }
}
