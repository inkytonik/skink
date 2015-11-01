extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int main () {
  int i = 0;
  int a[10];
  while (i < 10) {
    a[i] = i;
    i = i + 1;
  }
  __VERIFIER_assert(a[3] == 3);
}
