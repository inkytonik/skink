extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern void __VERIFIER_assume(int);
extern int __VERIFIER_nondet_int();
extern char __VERIFIER_nondet_char();
extern double __VERIFIER_nondet_double();

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
    int *P;
};

int main()
{
    struct ST s[4];
    int i = __VERIFIER_nondet_int();
    __VERIFIER_assume(i >= 0 && i < 4);

    int a1 = __VERIFIER_nondet_int();
    int *f1 = &a1;
    s[i].P = f1;
    int *f2 = s[i].P;
    if (f1 == f2) __VERIFIER_error();

    return 0;
}
