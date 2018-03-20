extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern double __VERIFIER_nondet_double();
extern int __isnan(double);
extern int __isinf(double);
extern int __signbit(double);

int main()
{
    double d0 = __VERIFIER_nondet_double();
    double e0 = d0;
    if (__isnan(d0)) {
        if (!__isnan(e0))
            __VERIFIER_error();
    } else if (d0 != e0)
        __VERIFIER_error();

    double d1 = 0.0 / 0.0;
    double e1 = d1;
    if (__isnan(d1)) {
        if (!__isnan(e1))
            __VERIFIER_error();
    } else
        __VERIFIER_error();

    double d2 = 1.0 / 0.0;
    double e2 = d2;
    if (__isinf(d2) && !__signbit(d2)) {
        if (!__isinf(e2) || __signbit(e2))
            __VERIFIER_error();
    } else
        __VERIFIER_error();

    double d3 = -1.0 / 0.0;
    double e3 = d3;
    if (__isinf(d3) && __signbit(d3)) {
        if (!__isinf(e3) || !__signbit(e3))
            __VERIFIER_error();
    } else
        __VERIFIER_error();

    return 0;
}
