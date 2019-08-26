#!/bin/bash
# skink.sh

# Pfofiling support requires installation of async-profiler:
# https://github.com/jvm-profiling-tools/async-profiler
# You need to set the following variable to the location of the agent shared library.
PROFILER=async-profiler-1.5-macos-x64/build/libasyncProfiler.so

if test $# -lt 1
then
  echo "usage: skink.sh (--version | (--profile flat|tree|svg)? [skink options] file.c)"
  exit 1
fi

export PATH=./bin/:$PATH
export LD_LIBRARY_PATH=./lib/:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=./include/:$C_INCLUDE_PATH

DEVJAR1=/skink/target/scala-2.12/skink-assembly-3.0-SNAPSHOT.jar
DEVJAR2=./target/scala-2.12/skink-assembly-3.0-SNAPSHOT.jar
if test -f $DEVJAR1
then
    JAR=$DEVJAR1
else
  if test -f $DEVJAR2
  then
    JAR=$DEVJAR2
  else
    JAR=skink.jar
  fi
fi

PROFARG=""
PROFOUT=""
PROFTYPE=""

function run() {
  java \
    $PROFARG \
    -Xmx1400m -Xss16m \
    -cp ./:$JAR \
    au.edu.mq.comp.skink.Main \
    $*
}

if test "$1" == "--version"
then
  run --version
else
  if test "$1" == "--profile"
  then
    shift
    if test $# -gt 0
    then
      case $1 in
        flat) PROFOUT="profile.txt"; PROFTYPE="flat,file=$PROFOUT";;
        svg)  PROFOUT="profile.svg"; PROFTYPE="svg,file=$PROFOUT";;
        tree) PROFOUT="profile.html"; PROFTYPE="tree,file=$PROFOUT";;
        *)
          echo "skink.sh: --profile expected flat, tree, or svg, got $1"
          exit 1
      esac
      shift
      if test -e $PROFILER
      then
        PROFARG="-agentpath:$PROFILER=start,$PROFTYPE"
      else
        echo "skink.sh: profiler library doesn't exist: $PROFILER"
        exit 1
      fi
    else
      echo "skink.sh: --profile expects additional argument: flat, tree, or svg"
      exit 1
    fi
  fi

  file="${@: -1}"
  IWTNFILE=$file.graphml
  WTNFILE=witness.graphml

  run --verify --output-witness --witness-file $WTNFILE $*

  if test -e $WTNFILE
  then
    cp $WTNFILE $IWTNFILE
  fi

  if test "$PROFOUT" != ""
  then
    echo "skink.sh: profile output is in $PROFOUT"
  fi

fi
