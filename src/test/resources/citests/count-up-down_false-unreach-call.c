extern void __VERIFIER_error() __attribute__ ((__noreturn__));

unsigned int __VERIFIER_nondet_uint();

int main()
{
  unsigned int n = __VERIFIER_nondet_uint();
  unsigned int x=n, y=0;
  while(x>0)
  {
    x--;
    y++;
  }
  if (y == n) __VERIFIER_error();
}
