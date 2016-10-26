extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

int i=1;

#define NUM 5

void *
t1(void* arg)
{
    int k = 1;
    i = k;

    pthread_exit(NULL);
}

int
main(int argc, char **argv)
{
  pthread_t id1;

  pthread_create(&id1, NULL, t1, NULL);

  if (i > 0) {
    ERROR: __VERIFIER_error();
  }

  return 0;
}
