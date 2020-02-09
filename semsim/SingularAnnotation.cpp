# include "SingularAnnotation.h"
# include "CompositeAnnotation.h"

namespace semsim {

  AnnotationPtr SingularAnnotation::makeComposite(const PhysicalProperty& prop) const {
    return AnnotationPtr(new CompositeAnnotation(*this, prop));
  }

}
