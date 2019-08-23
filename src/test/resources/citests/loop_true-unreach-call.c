extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern int __VERIFIER_nondet_int();

int main(void) {
  int i;
  int j = 0;
  int l = __VERIFIER_nondet_int();

  for (i = 0; i < l; i++) {
    j = j + 1;
    j = j + 1;
  }

  if (j < 0)
    __VERIFIER_error();
}
