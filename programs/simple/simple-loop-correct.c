/*
 this one is incorrect I think: if r < 0 at the beginning
 the last assert will not hold
 */

int main () {
  int r;
  while (r > 0) {
    __VERIFIER_assert(r > 0);
    r = r - 1;
  }
  __VERIFIER_assert(r <= 0);
}
