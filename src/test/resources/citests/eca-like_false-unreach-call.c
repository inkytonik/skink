extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern int __VERIFIER_nondet_int();


void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

int main()
{
    int p1 = __VERIFIER_nondet_int();  // condition variable
    int lk1; // lock variable

    int cond;

    while(1) {
        cond = __VERIFIER_nondet_int();
        if (cond == 0) {
            goto out;
        } else {}
        lk1 = 0; // initially lock is open


        if (p1 != 0) {
            if (lk1 != 1) goto ERROR; // assertion failure
            lk1 = 0;
        } else {}

    }
  out:
    return 0;
  ERROR: __VERIFIER_error();
    return 0;  
}

