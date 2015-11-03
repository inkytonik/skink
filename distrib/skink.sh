#!/bin/bash
base=${1%.*}
llfile=$base.ll
wtnfile=$base.graphml

skinkdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

clangwargs="-Wno-implicit-function-declaration -Wno-incompatible-library-redeclaration"
clangdefs="-Dassert=__VERIFIER_assert"
clangargs="-c -emit-llvm -g -o - -S -x c $clangdefs $clangwargs"

$CC $clangargs $1 | $OPT -S -inline -o $llfile

java -jar $skinkdir/skink-v1.0.jar -v -eZ3 -m20 $llfile | tee  >$wtnfile 

sed -i.bak '1d' $wtnfile