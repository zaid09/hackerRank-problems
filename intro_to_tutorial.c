#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
int key,n,i,arr[1000];
    scanf("%d",&key);
    scanf("%d",&n);
    for(i=0;i<n;i++)
        scanf("%d",&arr[i]);
    for(i=0;i<n;i++)
      {  if (key==arr[i])
        printf("%d",i);
      }
    return 0;
}
