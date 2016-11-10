extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int main(void) {
  int A[10];
  int i;

  for (i = 0; i < 5; i++) {
    A[i] = i;
  }

  __VERIFIER_assert(A[4] == 4);
}
