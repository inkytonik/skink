extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern double __VERIFIER_nondet_int();

int main()
{
    int i = __VERIFIER_nondet_int();
    int j = i;

    i = i + 1;
    i = i * 2;
    if (i != (j + 1) * 2)
        __VERIFIER_error();

    return 0;
}
