#include "comp.h"

int compare(int * i1, int * i2) {
    int temp;
    for (int i = 0; i < *i1; ++i) {
        temp+=*i2;
    }

    int k = *i1;
    *i1 = *i2;
    *i2 = k;

    return temp;
}
