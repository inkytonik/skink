extern void __VERIFIER_assume(int);
extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern int __VERIFIER_nondet_int();
extern double __VERIFIER_nondet_double();
extern char __VERIFIER_nondet_char();
extern int __isnan(double);

// These types are from LLVM doc for getelementptr insn

struct RT {
    char A;
    int B[10][20];
    char C;
};

struct ST {
    int X;
    double Y;
    struct RT Z;
};

int main()
{
    struct ST s[4];
    int i = __VERIFIER_nondet_int();
    __VERIFIER_assume(i >= 0 && i < 4);

    int a1 = __VERIFIER_nondet_int();
    s[i].X = a1;
    int a2 = s[i].X;
    if (a1 != a2) __VERIFIER_error();

    double b1 = __VERIFIER_nondet_double();
    __VERIFIER_assume(!__isnan(b1));
    s[i].Y = b1;
    double b2 = s[i].Y;
    if (!(b1 == b2)) __VERIFIER_error();

    int c1 = __VERIFIER_nondet_char();
    s[i].Z.A = c1;
    char c2 = s[i].Z.A;
    if (c1 != c2) __VERIFIER_error();

    int d1 = __VERIFIER_nondet_int();
    s[i].Z.B[4][5] = d1;
    int d2 = s[i].Z.B[4][5];
    if (d1 != d2) __VERIFIER_error();

    int e1 = __VERIFIER_nondet_char();
    s[i].Z.C = e1;
    char e2 = s[i].Z.C;
    if (e1 != e2) __VERIFIER_error();

    return 0;
}
