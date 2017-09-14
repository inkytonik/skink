extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#define cC 5
#define cS -20
#define cI 10000
#define cU 2147483647

unsigned char vC = cC;
short vS = cS;
int vI = cI;
unsigned int vU = cU;
int vA[] = { 0, 1, 2, 3, 4 };

int main(void) {
  int i;

  if (vC != cC) __VERIFIER_error();
  if (vS != cS) __VERIFIER_error();
  if (vI != cI) __VERIFIER_error();
  if (vU != cU) __VERIFIER_error();
  for (i = 0; i < 5; i++)
      if (vA[i] != i) __VERIFIER_error();
}
