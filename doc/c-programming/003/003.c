#include <stdio.h>

int main() {
    //local variable , not need to initial?
    //32766 * 0 = 0
    int x, y, m;
    //printf("please input x and y\n");
    //only input x
    //12
    //12 * -922340544 = 1816815360
    scanf("%d%d", &x, &y);
    //scanf("%d%d", &x, &y);
    m = x * y;
    printf("%d * %d = %d\n", x, y, m);
    return 0;
}