#!/bin/bash

if test $# -lt 2
then
  echo "usage: skink.sh cmd file.c"
  echo "where cmd is cmp, dev or exp"
  exit 1
fi

cmd=$1; shift

file=${@: -1}
base=${file%.*}
WTNFILE=$file.graphml

export PATH=./bin/:$PATH
export LD_LIBRARY_PATH=./lib/:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=./include/:$C_INCLUDE_PATH

ARGS=""
case $cmd in
    cmp) JAR=skink.jar
         ARGS="-m 300 $ARGS"
         WTNFILE=witness.graphml
         ;;
    dev) JAR=target/scala-2.12/skink-assembly-2.0-SNAPSHOT.jar
         ;;
    exp) JAR=skink_exp.jar
         ARGS="-m 300 $ARGS"
         WTNFILE=witness.graphml
         GREPRES=`egrep "while[ ]*\([ ]*1[ ]*\)|pthread_[^\[;]*\[" $file`
         if [[ ! -z $GREPRES ]]; then
           echo "UNKNOWN"
           exit 0
         fi
         ;;
    *) echo "skink.sh: unexpected command $cmd"
       exit 1
esac

java -Xmx1400m -Xss5m \
  -cp ./:$JAR \
  au.edu.mq.comp.skink.Main \
  --verify \
  --witness-file $WTNFILE \
  $ARGS \
  $*
