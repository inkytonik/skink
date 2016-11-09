extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

int a = 1;

void *
t1(void* arg)
{
    for (int i = 0; i < 10; i++)
        a *= 2;

    pthread_exit(NULL);
}




int
main(int argc, char **argv)
{
  pthread_t id1;

  pthread_create(&id1, NULL, t1, NULL);

  if (a > 1024) {
    ERROR: __VERIFIER_error();
  }

  return 0;
}
