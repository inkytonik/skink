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

    int e1 = __VERIFIER_nondet_char();
    s[i].Z.C = e1;
    char e2 = s[i].Z.C;
    if (e1 == e2) __VERIFIER_error();

    return 0;
}
