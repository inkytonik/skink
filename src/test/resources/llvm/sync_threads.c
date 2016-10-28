extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

int i;

pthread_mutex_t  m;
pthread_cond_t  five;

void *
t1(void* arg)
{
    pthread_mutex_lock(&m);

    i = 5;

    pthread_mutex_unlock(&m);

    pthread_cond_signal(&five);

    pthread_exit(NULL);
}

void *
t2(void* arg)
{
    pthread_mutex_lock(&m);

    pthread_cond_wait(&five, &m);

    i = 10;

    pthread_mutex_unlock(&m);
}

int
main(int argc, char **argv)
{
  pthread_t id1, id2;

  pthread_mutex_init(&m, 0);
  pthread_cond_init(&five, 0);

  pthread_create(&id1, NULL, t1, NULL);
  pthread_create(&id2, NULL, t2, NULL);

  pthread_join(id1, 0);
  pthread_join(id2, 0);

  if (i != 10) {
    ERROR: __VERIFIER_error();
  }

  return 0;
}
