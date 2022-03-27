#include <stdio.h>
#include <malloc.h>

int main(void){
    int byteSize = 1024;

    int * p = (int *)malloc(byteSize);

    int len = byteSize/sizeof(int);

    printf("%d\n",len);

    for (int i = 0; i <len; ++i) {
        p[i] = i;
    }

    for (int i = 0; i <len; ++i) {
        printf("%d ",p[i]);
    }

    free(p);

    return 0;
}
