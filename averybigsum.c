#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
    int n,i;
    long long int arr[10],res=0;
    scanf("%d",&n);
    for(i=0;i<n;i++)
        scanf("%lld",&arr[i]);
    for(i=0;i<n;i++)
        res=res+arr[i];
        printf("%lld",res);
    return 0;
}
