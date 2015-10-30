#!/bin/bash
echo $@ >> $TMPDIR/calls.txt

base=${1%.*}
llfile=$base.ll
wtnfile=$base.graphml

skinkdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

clangwargs="-Wno-implicit-function-declaration -Wno-incompatible-library-redeclaration"
clangdefs="-Dassert=__VERIFIER_assert"
clangargs="-c -emit-llvm -g -o - -S -x c $clangdefs $clangwargs"

clang-3.7 $clangargs $1 | opt-3.7 -S -inline -o $llfile > $TMPDIR/clang.log 2>&1

java -jar $skinkdir/skink.jar -v -eZ3 -m20 $llfile | tee $wtnfile

sed -i -e 1,3d $wtnfileskin