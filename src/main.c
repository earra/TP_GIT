#include <stdio.h>
#include <stdlib.h>
#include "../include/source1.h"
#include "../include/source2.h"

int main(int argc, char const *argv[]) {
  int a = 10, b = 5;

  printf("%d + %d = %d \n",a, b, somme(a, b) );
  printf("%d - %d = %d \n",a, b, soustraction(a, b));
  return 0;
}
