//
// Created by cwelsh on 2/12/2020.
//

#include "SBMLReader.h"

namespace semsim2 {


    SBMLReader::SBMLReader(std::string filename) {
        this->filename = filename;
        document = reader.readSBMLFromFile(filename);
    }

}