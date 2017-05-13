/**
 * Example to check computation of interpolants
 */

extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int main () {
  int i = 0, n = 0;
  while (i >= n) {
    i++;
  __VERIFIER_assert(i >= n);
  }
  __VERIFIER_assert(i >= n);
}
