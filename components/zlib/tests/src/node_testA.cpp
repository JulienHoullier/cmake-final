#include <UnitTest++.h>
#include <iostream>

#include "classe1.h"

using namespace std;

TEST(node_WillbieOK) {

    classe1 class1;

    cout << class1.methode1() << endl;

    CHECK(class1.methode1() == 2);

}

TEST(node_WillFail) {

    classe1 class1;


    CHECK(class1.methode1() == 0);

}
