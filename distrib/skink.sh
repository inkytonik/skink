#!/bin/bash
base=${1%.*}
llfile=$base.ll
wtnfile=$base.graphml

skinkdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

clangwargs="-Wno-implicit-function-declaration -Wno-incompatible-library-redeclaration"
clangdefs="-Dassert=__VERIFIER_assert -D__assert_fail=__VERIFIER_assert"
clangargs="-c -emit-llvm -g -o - -S -x c $clangdefs $clangwargs"

# compile with clang and discard the warnings
$CC $clangargs $1 2>/dev/null | $OPT -S -inline -o $llfile 

# solver is Z3, maximum iteration 20, timeout for solver
java -jar $skinkdir/skink-v1.0.jar -v -eZ3 -m20 -o60 $llfile | tee  $wtnfile 

# remove log file
\rm -f automata.log

sed -i.bak '1d' $wtnfile