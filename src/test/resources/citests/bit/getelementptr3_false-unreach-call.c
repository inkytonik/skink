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

    int c1 = __VERIFIER_nondet_char();
    s[i].Z.A = c1;
    char c2 = s[i].Z.A;
    if (c1 == c2) __VERIFIER_error();
    
    return 0;
}
