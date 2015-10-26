extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int main () {
  int r;
  while (r > 0) {
    __VERIFIER_assert(r > 0);
    r = r - 1;
  }
  __VERIFIER_assert(r <= 0);
}
