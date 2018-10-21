// Main test program from
// Craig vs. Newton in Software Model Checking

extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern int __VERIFIER_nondet_int();

int main()
{
    int a[10], b[10];
    int p, x;

    for (int i = 0; i < 10; i++)
        b[i] = a[i];

    x = 0;

    while (__VERIFIER_nondet_int()) {
        p = __VERIFIER_nondet_int();
        __VERIFIER_assume(p >= 0 && p < 10);
        __VERIFIER_assume(!a[p]);
        a[p] = 1;
        x = x + 1;
        a[p] = 0;
    }

    for (int i = 0; i < 10; i++)
        if (a[i] != b[i])
            __VERIFIER_error();

    return 0;
}
