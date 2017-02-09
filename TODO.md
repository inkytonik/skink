#### Skink

* merge concurrency branch into master (FC)
* replace inlining with modular analysis (FC, TS)
* better invariants via predicate abstraction (Pongsak)

#### C frontend

* proper memory model, including pointers, memory operations (TS)
* better support for pthread programs (MR)
* bitvector arrays (required smtlib fix, FC, TS)
* floating-point (add theory of Fixed FloatingPoint BV, FC)
* Termination (FC) 
* slicing (DG thing seems to work, testing it/integrate?, TS)
* string operations ??
* move to latest Clang (MR, TS)
* mem2reg pass? undef removal from benchmarks?

#### Automat

* move partial order reduction to Skink (FC)

#### Scala LLVM

* LLVM 4.x?, (MR, TS)
* fix for multiple dependency issue?

#### SMTlib

* bitvector arrays (FC)
* floating point (FC)

#### Infrastructure

* repo cleanup (merge Matt's branch) (MR)
* CI testing server for SV-COMP (MR)
* pipelines on bitbucket (??)

#### Other

* support for other source languages or IRs (Java ?)
* addressing other problems using Skink approach (security, taint analysis, MISRA?)
* contribute benchmarks to SV-COMP (MR)
