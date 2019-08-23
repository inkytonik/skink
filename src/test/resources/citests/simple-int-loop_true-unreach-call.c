extern void __VERIFIER_error() __attribute__ ((__noreturn__));

int __VERIFIER_nondet_int();

int main () {
  int r = __VERIFIER_nondet_int();
  while (r > 0) {
    if (r <= 0) __VERIFIER_error();
    r = r - 1;
  }
  if (r > 0) __VERIFIER_error();
}
