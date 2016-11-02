extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

int i = 2, j = 1;

void *
t1(void* arg)
{
    int k = i;
    j = k;

    pthread_exit(NULL);
}

void *
t2(void* arg)
{
    int k = j;
    i = k;

    pthread_exit(NULL);
}

int
main(int argc, char **argv)
{
  pthread_t id1;
  pthread_t id2;

  pthread_create(&id1, NULL, t1, NULL);
  pthread_create(&id2, NULL, t2, NULL);

  if (i + j > 4) {
    ERROR: __VERIFIER_error();
  }

  return 0;
}
