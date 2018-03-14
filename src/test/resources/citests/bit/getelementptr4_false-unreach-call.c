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
    
    int d1 = __VERIFIER_nondet_int();
    s[i].Z.B[4][5] = d1;
    int d2 = s[i].Z.B[4][5];
    if (d1 == d2) __VERIFIER_error();

    return 0;
}
