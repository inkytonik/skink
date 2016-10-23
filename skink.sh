#!/bin/bash

if test $# -eq 0
then
  echo "usage: skink.sh option... file.c"
  exit 1
fi

base=${@:-1%.*}
wtnfile=$base.graphml
veriffile=$base.verif

skinkdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

java -jar $skinkdir/target/scala-2.11/skink-assembly-2.0-SNAPSHOT.jar -f C -v -eZ3 -m20 $* | tee $veriffile

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
