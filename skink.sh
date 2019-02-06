#!/bin/bash

if test $# -lt 1
then
  echo "usage: skink.sh (--version | file.c)"
  exit 1
fi

export PATH=./bin/:$PATH
export LD_LIBRARY_PATH=./lib/:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=./include/:$C_INCLUDE_PATH

DEVJAR=/skink/target/scala-2.12/skink-assembly-3.0-SNAPSHOT.jar
if test -f $DEVJAR
then
    JAR=$DEVJAR
else
    JAR=skink.jar
fi

function run() {
  java -Xmx1400m -Xss16m \
  -cp ./:$JAR \
  au.edu.mq.comp.skink.Main \
  $*
}

if test "$1" == "--version"
then
  run --version
else
  file=$1
  base=${file%.*}
  IWTNFILE=$file.graphml
  WTNFILE=witness.graphml

  run --verify --witness-file $WTNFILE $file

  if test -e $WTNFILE
  then
    cp $WTNFILE $IWTNFILE
  fi
fi
