extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int main ()
{
   int i, j;
   if (i > j)
     __VERIFIER_assert (i <= j);
}
