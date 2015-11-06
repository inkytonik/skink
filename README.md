Skink: A static verification tool
=================================

Note: this is a specific SVCOMP16 readme file.

Installation
------------

Skink is a jar file but it relies on a number of external tools.  For each tool we give an example unstallation script (Ubuntu Trusty):

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

Execution
---------

  1. Set the `TMPDIR` environment variable to `/tmp`
  2. Ensure `skink.jar` is in the same directory as `skink.sh`
  3. Ensure `skink.sh` is executable.
  3. Only the filename (a `.i` or `.c` file) should be given to `skink.sh`
  3. Call `skink.sh` passing in the filename of the c file you wish to validate

This will result in Skink's output appearing on STDOUT and in an `.ll`, `.verif` (and `.graphml` for failed verifications) files being created with the input file. 
 
Options
-------

If the `$SKINK_DEBUG` environment variable is set to `"yes"` and `$PATH_TO_CPA_CHECKER` is set, then `skink.sh` will check the witnesses it generates against CPAchecker and will put the results in `witness_checks`

