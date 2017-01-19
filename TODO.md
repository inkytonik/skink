#### Skink

* merge concurrency branch into master
* replace inlining with modular analysis
* better invariants via predicate abstraction (Pongsak)

#### C frontend

* proper memory model, including pointers, memory operations
* better support for pthread programs
* bitvector arrays (required smtlib fix)
* floating-point
* slicing
* string operations
* move to latest Clang
* mem2reg pass? undef removal from benchmarks?

#### Automat

* move partial order reduction to Skink

#### Scala LLVM

* LLVM 4.x?
* fix for multiple dependency issue?

#### SMTlib

* bitvector arrays
* floating point

#### Infrastructure

* repo cleanup (merge Matt's branch)
* CI testing server for SV-COMP
* pipelines on bitbucket

#### Other

* support for other source languages or IRs
* addressing other problems using Skink approach
* contribute benchmarks to SV-COMP
