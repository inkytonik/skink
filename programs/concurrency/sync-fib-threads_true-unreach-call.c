extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

int i = 1, j = 1;
pthread_mutex_t  m;

void *
f1(void* arg)
{
    pthread_mutex_lock(&m);

    j += i;

    pthread_mutex_unlock(&m);
    pthread_exit(NULL);
}

void *
f2(void* arg)
{
    pthread_mutex_lock(&m);

    i += j;

    pthread_mutex_unlock(&m);
    pthread_exit(NULL);
}

int
main(int argc, char **argv)
{
  pthread_t t1, t2;

  pthread_create(&t1, NULL, f1, NULL);
  pthread_create(&t2, NULL, f2, NULL);

  pthread_join(t1, NULL);
  pthread_join(t2, NULL);

  if (i + j != 5) {
    ERROR: __VERIFIER_error();
  }

  return 0;
}
