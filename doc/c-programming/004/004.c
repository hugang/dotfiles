#include <stdio.h>

int main() {

    float x, y, m;
    scanf("%f%f", &x, &y);
    m = x > y ? x : y;
    printf("%f", m);

}