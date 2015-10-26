extern void __VERIFIER_error() __attribute__ ((__noreturn__));

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}
unsigned int __VERIFIER_nondet_uint();

int main()
{
  unsigned int x=10, y=0;
  while(x>0)
  {
    x--;
    y++;
  }
  __VERIFIER_assert(y==10);
}
