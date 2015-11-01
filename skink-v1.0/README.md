Skink: Static analysis for LLVM-IR
==================================

Note: this is a specific SVCOMP16 readme file.

Installation
------------

Skink is distributed as a jar file and a bash wrapper but it relies on a number of external tools. 
For each tool we give an example unstallation script (Ubuntu Trusty):

  * Java8 (`> java`) 
    ~~~~~
    wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh
    ~~~~~

    All the Java libraries required beyond the JDK are bundled in the `skink.jar` file

  * CVC4 (`> cvc4`)
    ~~~~~
    echo 'deb http://cvc4.cs.nyu.edu/debian/ unstable/' >> /etc/apt/sources.list
    echo 'deb-src http://cvc4.cs.nyu.edu/debian/ unstable/' >> /etc/apt/sources.list
    echo 'deb http://cvc4.cs.nyu.edu/debian/ stable/' >> /etc/apt/sources.list
    echo 'deb-src http://cvc4.cs.nyu.edu/debian/ stable/' >> /etc/apt/sources.list
    apt-get update
    apt-get install -y --force-yes cvc4
    ~~~~

  * Clang/LLVM (`> clang-3.7` and `> opt-3.7`)
    ~~~~~
    apt-get install -y --force-yes clang-3.7 lldb-3.7
    echo 'deb http://llvm.org/apt/trusty/ llvm-toolchain-trusty-3.7 main' >> /etc/apt/sources.list
    echo 'deb-src http://llvm.org/apt/trusty/ llvm-toolchain-trusty-3.7 main' >> /etc/apt/sources.list
    apt-get update
    apt-get install -y --force-yes clang-3.7 lldb-3.7
    ~~~~~

  * Z3
    ~~~~~
    export CC=clang-3.7
    export CXX=clang++-3.7
    git clone https://github.com/Z3Prover/z3.git && cd z3 && python scripts/mk_make.py && cd build; make && sudo make install
    ~~~~~

  * SMTInterpol
    ~~~~~
    wget --no-check-certificate https://ultimate.informatik.uni-freiburg.de/smtinterpol/smtinterpol.jar && mv smtinterpol.jar /usr/bin/.
    ~~~~~

Usage
-----

  1. Set the `TMPDIR` environment variable to a writable directory e.g. `/tmp`
  2. Set the C compiler and optimisation 
     export CC=where-clang-executable-is (`which clang`). Clang 3.7 stable is needed.
     export OPT=where-opt-llvm-executable-is (`which opt`). 
  3. Ensure `skink.jar` is in the same directory as `skink.sh`
  4. Ensure `skink.sh` is executable.
  5. `skink.sh` takes one parameter, the C filename (`.i` or `.c`) to analyse

Running `skink.sh` on path-to/file.c (or file.i) produces the following output (assuming
the C file is successfully parsed by clang:
- the LLVM-IR of path-to/file.c is generated in path-to/file.ll
- `java -jar skink.jar` is run on path-to/file.ll

- if the analysis determines that the program is correct, the following
will appear on STDOUT:
TRUE

- if the analysis determines that the program is incorrect, the following lines
will appear on STDOUT:
FALSE
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<graphml x ...
>
<node id="n10"></node>
<node id="n11"><data key="sink">true</data></node>

</graph>

</graphml>
and a file path-to-file.graphml that contains the witness path is generated.

- if the analysis is inconclusive (parser error, internal error) the following lines
will appear on STDOUT
UNKNOWN
<reason1>
<reason2>
<....>
<....>
 
Example
-------
> skink.sh tests/simple-loop_true-unreach-call.c
TRUE

> skink.sh tests/simple-loop_false-unreach-call.c
FALSE
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<graphml x ...>
<node id="n10"></node>
<node id="n11"><data key="sink">true</data></node>

</graph>

</graphml>

> skink.sh tests/simple-loop_unknown-unreach-call.c
UNKNOWN
Refinement failure
Maximum number of iterations reached

Tests
=====
The installation can be tested by running the test.sh script.

> ./test.sh
