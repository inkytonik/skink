extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int main(void) {
  int A[2];
  int i;

  A[0] = 1;
  A[1] = 2;
  __VERIFIER_assert(A[1] == 2);
}
