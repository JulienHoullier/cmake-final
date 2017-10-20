#include <iostream>
#include <zlib.h>

using namespace std;

int main()
{

    int crc = crc32(12L, Z_NULL, 0);

    cout << crc << endl;
    cout << "TEST MAIN PROJECT3" << endl;

    return 0;
}


