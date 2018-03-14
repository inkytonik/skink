extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
};

int main() 
{
    struct ST s[4];
    int i = __VERIFIER_nondet_int();
    __VERIFIER_assume(i >= 0 && i < 4);

    double a1 = __VERIFIER_nondet_double();
    s[i].Y = a1;
    double a2 = s[i].Y;
    if (a1 == a2) __VERIFIER_error();

    return 0;
}
