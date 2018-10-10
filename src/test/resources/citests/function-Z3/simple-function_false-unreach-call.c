extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int func (int i)
{
    __VERIFIER_assert(i == 0);
    return i + 1;
}

int main ()
{
    int j;
    j = func (42);
}
