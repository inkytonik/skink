#!/bin/bash

if test $# -eq 0
then
  echo "usage: skink.sh file.c"
  exit 1
fi

base=${1%.*}
wtnfile=$base.graphml
veriffile=$base.verif

export PATH=./bin/:$PATH
export LD_LIBRARY_PATH=./lib/:$LD_LIBRARY_PATH

java -Xmx1400m -Xss5m -cp ./:target/scala-2.11/skink-assembly-2.0-SNAPSHOT.jar au.edu.mq.comp.skink.Main --verify $* | tee $veriffile

case `head -1 $veriffile` in
    FALSE*)
        tail -n +2 $veriffile > $wtnfile
        ;;
esac