Skink: A static verification tool
=================================

Note: this is a specific SVCOMP16 readme file.

Installation
------------

Skink is distributed as jar file but it relies on a number of external tools.  
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

  1. Set the `TMPDIR` environment variable to a writable directory (e.g. `/tmp` or `./tmp`)
  2. Ensure `skink.jar` is in the same directory as `skink.sh`
  3. Ensure `skink.sh` is executable.
  4. Only the filename (a `.i` or `.c` file) should be given to `skink.sh`
  5. Call `skink.sh` passing in the filename (`.i` ot `.c`) of the program you wish to validate

This will result in Skink's output appearing on STDOUT and in an `.ll` (and `.graphml` for failed verifications) file being created for the input file. 

Example
------- 
> skink.sh

