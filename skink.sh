#!/bin/bash

if test $# -lt 2
then
  echo "usage: skink.sh cat file.c"
  echo "where cat is SV-COMP category"
  exit 1
fi

cat=$1; shift

# Witness file for competititon, benchexec etc
WTNFILE=witness.graphml

# Witness file alongside input file, will be a copy of competition one
file=${@: -1}
base=${file%.*}
IWTNFILE=$file.graphml

export PATH=./bin/:$PATH
export LD_LIBRARY_PATH=./lib/:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=./include/:$C_INCLUDE_PATH

ARGS=""

DEVJAR=/skink/target/scala-2.12/skink-assembly-2.0-SNAPSHOT.jar
if test -f $DEVJAR 
then 
    JAR=$DEVJAR 
else 
    JAR=skink.jar 
fi    

case $cat in
    bitvectors) ARGS="-i bit $ARGS";;
    floats)     ARGS="-e Yices-nonIncr $ARGS";;
    *)          
esac 
    
case $cat in
    arrays) ARGS="-m 40 $ARGS";;
    *)      ARGS="-m 300 $ARGS"
esac 
    
java -Xmx1400m -Xss16m \
  -cp ./:$JAR \
  au.edu.mq.comp.skink.Main \
  --verify \
  --witness-file $WTNFILE \
  $ARGS \
  $*

if test -e $WTNFILE
then
  cp $WTNFILE $IWTNFILE
fi
