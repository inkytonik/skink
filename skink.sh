#!/bin/bash

if test $# -eq 0
then
  echo "usage: skink.sh option... file.c"
  exit 1
fi

file=${@: -1}
base=${file%.*}
wtnfile=$file.graphml
veriffile=$base.verif

skinkdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

java -Xmx1400m -Xss5m \
  -cp ./:target/scala-2.11/skink-assembly-2.0-SNAPSHOT.jar \
  au.edu.mq.comp.skink.Main \
  --verify \
  --witness-file $wtnfile \
  $* | \
  tee $veriffile
