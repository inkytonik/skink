extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern float __VERIFIER_nondet_float();

int main()
{
  float x = __VERIFIER_nondet_float();
  __VERIFIER_assume(!isnan(x));
  if (x != x)
    __VERIFIER_error();
}
