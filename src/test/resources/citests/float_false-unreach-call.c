extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern float __VERIFIER_nondet_float();

int main()
{
  float f = __VERIFIER_nondet_float();
  float g = 54.7 + f;
  float h = f - 78.3;
  if ((g > 100.23) && (h < 0.0))
    __VERIFIER_error();
  return 0;
}
