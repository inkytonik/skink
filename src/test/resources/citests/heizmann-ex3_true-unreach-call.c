/*
 * P_ex3 from Heizmann et al Software Model Checking for People Who Love Automata.
 */

extern void __VERIFIER_error() __attribute__ ((__noreturn__));

int __VERIFIER_nondet_int();

int main()
{
    int x = __VERIFIER_nondet_int();

    if (x >= 0)
        x = 1;
    else
        x = -1;
    if (x == 0)
        __VERIFIER_error();
}
