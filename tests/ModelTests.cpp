//
// Created by cwelsh on 2/12/2020.
//

#include "gtest/gtest.h"
#include "semsim2/SBMLReader.h"



//using namespace semsim2;
using namespace std;

TEST(ModelTests, test){

//    libsbml::SBMLReader reader;
    std::string filename = "D:\\libsemsim2\\tests\\BIOMD0000000064.xml";
//    libsbml::SBMLDocument* document = reader.readSBMLFromFile(filename);
//    std::cout << document << endl;
ASSERT_EQ(5, 6);
}











