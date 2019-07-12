extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern unsigned __VERIFIER_nondet_uint();
extern char *malloc(unsigned int);
extern char *calloc(unsigned int);
extern char *kzalloc(unsigned int);

int main()
{
  // malloc returns are non-zero
  unsigned int s1 = __VERIFIER_nondet_uint();
  char *p1 = malloc(s1);
  if (p1 == (char *)0)
    __VERIFIER_error();
    
  // calloc returns are non-zero
  unsigned int s2 = __VERIFIER_nondet_uint();
  char *p2 = calloc(s2);
  if (p2 == (char *)0)
    __VERIFIER_error();

  // kzalloc returns are non-zero
  unsigned int s3 = __VERIFIER_nondet_uint();
  char *p3 = kzalloc(s2);
  if (p3 == (char *)0)
    __VERIFIER_error();
}
