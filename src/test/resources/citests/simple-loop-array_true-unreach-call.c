extern void __VERIFIER_error() __attribute__ ((__noreturn__));

int main () {
  int i = 0;
  int a[10];
  while (i < 10) {
    a[i] = i;
    i = i + 1;
  }
  if (a[3] != 3) __VERIFIER_error();
}
