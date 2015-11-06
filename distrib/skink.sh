#!/bin/bash
base=${1%.*}
llfile=$base.ll
wtnfile=$base.graphml

skinkdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

clangwargs="-Wno-implicit-function-declaration -Wno-incompatible-library-redeclaration"
clangdefs="-Dassert=__VERIFIER_assert"
clangargs="-c -emit-llvm -g -o - -S -x c $clangdefs $clangwargs"

$CC $clangargs $1 | $OPT -S -inline -o $llfile

java -jar $skinkdir/skink-v1.0.jar -v -eZ3 -m20 $llfile | tee $veriffile

case `head -1 $veriffile` in
    FALSE*)
        tail -n +2 $veriffile > $wtnfile
        if [ "$SKINK_DEBUG" == "yes" ]; then
        	echo " " >> $skinkdir/witness_checks 
        	echo $1 >> $skinkdir/witness_checks
        	$skinkdir/programs/cpacheck "$( dirname $1)"/ALL.prp $1 $wtnfile >> $skinkdir/witness_checks
        fi	
        ;;
esac