extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int __VERIFIER_nondet_int();

int main ()
{
   int i = __VERIFIER_nondet_int(), j = __VERIFIER_nondet_int();
   if (i > j)
     __VERIFIER_assert (i > j);
   if (i > j)
     __VERIFIER_assert (i > j);
}
