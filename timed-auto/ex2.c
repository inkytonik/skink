/** 
 * @authoir: Franck Cassez
 * @date December 7, 2018.
 * 
 * A stopwatch automaton.
 * Franck Cassez, Peter Gjøl Jensen, Kim Guldstrand Larsen:
 * Refinement of Trace Abstraction for Real-Time Programs. RP 2017: 42-58
 */

extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern int __VERIFIER_nondet_int();
extern float __VERIFIER_nondet_float();

int main()
{
    //  x and z are clocks, y a stopwatch, delta is a time delay.
    float delta, x = 0.0, y = 0.0, z = 0.0 ;

    //  robusteness checking.
    float epsilon= __VERIFIER_nondet_float();
    __VERIFIER_assume( epsilon == 0.0 );

    //  in location l0
    delta = __VERIFIER_nondet_float();
    __VERIFIER_assume( delta >= 0.0 ) ;
    y = y + delta;
    x = x + delta;

    //  z evolves as well but is reset on the next discrete edge leading to locaiton l1.
    z = 0;

    //  in location l1, we loop of may reach l2 and terminate.
    while (1) {
        
        //  let some time elapse and fire a discrete transition.
        delta = __VERIFIER_nondet_float() ;
        __VERIFIER_assume( delta >= 0.0 ) ;
        x = x + delta;
        z = z + delta;

        //  check whether l2 can be reached and in this case got error.
        if ( x - y >= 1 - epsilon && z < 1 + epsilon ) 
            break;

        //  fire discrete transition with the guard x==1 and reset x.
        __VERIFIER_assume( x <= 1.0 + epsilon && x >= 1.0 - epsilon) ;
        x = 0.0;
    }

    __VERIFIER_error();
    
    return 0;
}
