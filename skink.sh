#!/bin/bash

if test $# -eq 0
then
  echo "usage: skink.sh file.c"
  exit 1
fi

file=${@: -1}
base=${file%.*}
wtnfile=$file.graphml
veriffile=$base.verif

export PATH=./bin/:$PATH
export LD_LIBRARY_PATH=./lib/:$LD_LIBRARY_PATH

java -Xmx1400m -Xss5m \
  -cp ./:target/scala-2.11/skink-assembly-2.0-SNAPSHOT.jar \
  au.edu.mq.comp.skink.Main \
  --verify \
  --witness-file $wtnfile \
  $* | \
  tee $veriffile

[ -f $veriffile ] && echo "${veriffile} found" 1>&2 || echo "verification output file (${verffile}) not found" 1>&2
[ -f $wtnfile ] && echo "${wtnfile} found" 1>&2 || echo "witness output file (${wtnfile}) not found" 1>&2
