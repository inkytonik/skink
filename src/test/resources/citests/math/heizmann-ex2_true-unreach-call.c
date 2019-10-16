/*
 * P_ex2 from Heizmann et al Software Model Checking for People Who Love Automata.
 */

// FIXME: only correct in math mode...

extern void __VERIFIER_error() __attribute__ ((__noreturn__));

int __VERIFIER_nondet_int();

int main()
{
    int x = 0;
    int y = 0;

    while (__VERIFIER_nondet_int()) {
        x++;
    }
    if (x == -1)
        __VERIFIER_error();
    if (y == -1)
        __VERIFIER_error();
}
