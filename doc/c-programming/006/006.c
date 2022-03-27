#include <stdio.h>
#include "comp.h"

int main(void) {
    int i1=1,i2=2;
    printf("%d %d\n",i1,i2);

    int k = compare(&i1,&i2);

    printf("%d\n",k);
    printf("%d %d\n",i1,i2);

    return 0;
}

