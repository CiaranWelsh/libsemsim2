//
// Created by cwelsh on 2/12/2020.
//

#include <SBMLReader.h>
#include "gtest/gtest.h"


using namespace semsim2;
using namespace std;

TEST(ModelTests, test){
    std::string filename = R"(D:\libsemsim2\tests\BIOMD0000000064.xml)";
    SBMLReader reader;
    SBMLDocument* document = reader.readSBMLFromFile(filename);
    std::cout << document << endl;
}











