extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

int a = 0;

void *
t1(void* arg)
{
    a = 5;

    for (int i = 0; i < 10; i++);

    pthread_exit(NULL);
}

int
main(int argc, char **argv)
{
  pthread_t id1;

  pthread_create(&id1, NULL, t1, NULL);

  if (a > 5) {
    ERROR: __VERIFIER_error();
  }

  return 0;
}
