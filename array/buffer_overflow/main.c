#include <stdio.h>
int main()
{
    int a[20];
    int i;
    for (i=0; i<30; i++)
        a[i]=i;
    printf("%d", a[29]);
    return 0;
};
