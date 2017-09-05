HIGH means focus for next SV-COMP

#### Skink

* HIGH: update README (TS)
* HIGH: convert issues to actual issues (TS)
* merge concurrency branch into master (FC)
* replace inlining with modular analysis (FC, TS, MR student)
* better invariants via predicate abstraction (PS)
* HIGH: nondet-based witnesses, check COMP rules (FC, TS)

#### C frontend

* proper memory model, including pointers, memory operations (TS)
* better support for pthread programs
* HIGH: bitvector arrays (required smtlib fix, TS)
* HIGH: floating-point (add theory of Fixed FloatingPoint BV, TS)
* termination (FC)
* slicing (DG thing seems to work, testing it/integrate?, TS)
* string operations
* HIGH: move to latest Clang (TS)
* HIGH: bit-vector ops in mathematical mode (TS)

#### Automat

* move partial order reduction to Skink (FC)

#### Scala LLVM

* fix for multiple dependency issue? (TS)

#### SMTlib

* HIGH: floating point (FC)
* HIGH: bitvector arrays (FC)
* reals??, not sure if any in COMP (FC)

#### Infrastructure

* HIGH: pipelines on bitbucket (FC)
* HIGH: dashboard for SV-COMP performance (FC)

#### Other

* support for other source languages or IRs (Java ?)
* addressing other problems using Skink approach (security, taint analysis, MISRA?)
* contribute benchmarks to SV-COMP (MR)
