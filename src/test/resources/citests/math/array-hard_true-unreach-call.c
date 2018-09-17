extern void __VERIFIER_error() __attribute__ ((__noreturn__));

int main(void) {
  int A[10];
  int i;

  for (i = 0; i < 5; i++) {
    A[i] = i;
  }

  if (A[4] != 4) __VERIFIER_error();
}