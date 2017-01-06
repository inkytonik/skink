extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int main ()
{
   int i = 0, j = 0;
   if (i > j)
     // Never reached
     __VERIFIER_assert (i <= j);
   __VERIFIER_error();
}
