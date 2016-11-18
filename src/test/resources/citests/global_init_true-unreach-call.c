extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

#define cC 5
#define cS -20
#define cI 10000
#define cU 2147483647

unsigned char vC = cC;
short vS = cS;
int vI = cI;
unsigned int vU = cU;

int main(void) {
  __VERIFIER_assert(vC == cC);
  __VERIFIER_assert(vS == cS);
  __VERIFIER_assert(vI == cI);
  __VERIFIER_assert(vU == cU);
}
