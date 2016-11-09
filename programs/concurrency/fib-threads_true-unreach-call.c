extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

int i = 1, j = 1;

void *
f1(void* arg)
{
    j += i;

    pthread_exit(NULL);
}

void *
f2(void* arg)
{
    i += j;

    pthread_exit(NULL);
}

int
main(int argc, char **argv)
{
  pthread_t t1, t2;

  pthread_create(&t1, NULL, f1, NULL);
  pthread_create(&t2, NULL, f2, NULL);

  if (i + j < 2) {
    ERROR: __VERIFIER_error();
  }

  return 0;
}
