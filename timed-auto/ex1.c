/** 
 * @authoir: Franck Cassez
 * @date December 7, 2018.
 * 
 * A timed automaton with mized integer and real constraints.
 * Franck Cassez, Peter Gjøl Jensen, Kim Guldstrand Larsen:
 * Refinement of Trace Abstraction for Real-Time Programs. RP 2017: 42-58
 */

extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern int __VERIFIER_nondet_int();
extern float __VERIFIER_nondet_float();

int main()
{
    //  x and y are clocks, delta is a time delay.
    float delta, x = 0.0, y = 0.0;
    //  i is an integer 
    //  there is a bug in our handling of the type in Phi LLVM and we use a float.
    float i = 0.0;

    while (1) {
        //  in location \iota, all clocks evolve at same rate.
        delta = __VERIFIER_nondet_float();
        __VERIFIER_assume( delta >= 0.0 ) ;
        x = x + delta;
        y = y + delta;

        //  from \iota to location 0, the guard on x is x >= 1.
        __VERIFIER_assume( x >= 1.0 ) ;

        //  in location 0, all clocks evolve at same rate.
        delta = __VERIFIER_nondet_float() ;
        __VERIFIER_assume( delta >= 0.0 ) ;
        x = x + delta;
        y = y + delta ;

        //  if y < i we can reach location l2, and we encode it an error
        //  hence l2 is reachable iff the program is not correct.
        if ( y < i ) __VERIFIER_error();

        //  from location 0 we can go back to \iota and x is reset and i incremented.
        i = i + 1.0;
        x = 0.0;
    }
    
    return 0;
}
