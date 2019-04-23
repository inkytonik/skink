extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern int __VERIFIER_nondet_int();

int main()
{
  int i = __VERIFIER_nondet_int();
  int j = i;

  i = i + 1;
  i = i + 1;
  if (i == j + 2)
    __VERIFIER_error();

  return 0;
}
