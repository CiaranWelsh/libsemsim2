//
// Created by cwelsh on 2/12/2020.
//

#ifndef LIBSEMSIM_SBMLREADER_H
#define LIBSEMSIM_SBMLREADER_H

#include "iostream"
#include <sbml/SBMLTypes.h>

#include <utility>

namespace semsim2 {
    class SBMLReader {

        libsbml::SBMLReader reader;

        libsbml::SBMLDocument* document;

        std::string filename;

        SBMLReader(std::string filename);


    };
}


#endif //LIBSEMSIM_SBMLREADER_H
