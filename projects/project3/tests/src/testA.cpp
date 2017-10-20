#include <UnitTest++.h>
#include <iostream>

#include "classe1.h"
using namespace std;

TEST(WillbeOK) {

    classe1 class1;

    std::cout << class1.methode1() << std::endl;
    cout << "Test du projet" << endl;
    CHECK(class1.methode1() == 2);

}

TEST(WillFail) {

    classe1 class1;
    cout << "Test du projet" << endl;

    CHECK(class1.methode1() == 0);

}
