extern void __VERIFIER_error() __attribute__ ((__noreturn__));

unsigned int __VERIFIER_nondet_uint();

int main()
{
  unsigned int x=10, y=0;
  while(x>0)
  {
    x--;
    y++;
  }
  if (y != 10) __VERIFIER_error();
}
