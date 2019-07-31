extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern void *malloc(int);
extern void *calloc(int);
extern void *kzalloc(int);

int main()
{
  char *p1 = (char *)malloc(32);
  if (p1 == (char *)0)
    __VERIFIER_error();

  char *p2 = (char *)calloc(32);
  if (p2 == (char *)0)
    __VERIFIER_error();

  char *p3 = (char *)kzalloc(32);
  if (p3 == (char *)0)
    __VERIFIER_error();
}
