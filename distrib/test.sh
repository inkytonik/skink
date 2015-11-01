#!/bin/bash
#

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

abort=0

# test z3 is accessible and can process a simple file
# 
z3bin=$(which z3)
if [ "$z3bin" = "" ]; then
  echo -e "$RED[NOT FOUND]$NC Checkink Z3 solver" 
  abort=1
else
  z3version=$($z3bin --version | grep "version")
  echo -e "$GREEN[FOUND]$NC Checking Z3 solver " $z3bin  " " $z3version
fi

# test clang version
clangbin=$(which clang)
if [ "$clangbin" = "" ]; then
  echo -e "$RED[NOT FOUND]$NC Clang compiler" 
  abort=1
else
  clangversion=$($clangbin --version | grep "version" | grep "3.7.0" | grep "tags/RELEASE_370/final")
  if [ "$clangversion" = "" ]; then
    abort=1
    echo -e "$RED[NOT FOUND]$NC Clang compiler 3.7.0 required" "$($clangbin --version)" 
  else
    echo -e "$GREEN[FOUND]$NC Clang compiler 3.7.0" $clangversion
  fi
fi

optbin=$(which opt)
if [ "$optbin" = "" ]; then
  abort=1
  echo -e "$RED[NOT FOUND]$NC LLVM opt" 
else
  optversion=$($optbin --version | grep "version" | grep "3.7.0")
  if [ "$optversion" = "" ]; then
    abort=1
    echo -e "$RED[NOT FOUND]$NC LLVM opt 3.7.0 required" "$($optbin --version)" 
  else
    echo -e "$GREEN[FOUND]$NC LLVM opt 3.7.0" $optversion
  fi
fi

\rm -f tests/*.ll
\rm -f tests/*.result
\rm -f tests/*.graphml

if [ $abort -eq 1 ]; then
  echo -e "${RED}Cannot run test suite$NC" 
  exit 
fi

echo -e "${GREEN}Running test suite$NC" 

CC=$clangbin
OPT=$optbin

# test 1
for file in tests/*.c; do
  echo -n "Analysing $file "
  ./skink.sh $file > ${file%.c}.result
  diff ${file%.c}.result ${file%.c}.verif >/dev/null

  if [ $? -eq 0 ]; then
    echo -e " $GREEN[OK]$NC" 
  else
    echo -e " $RED[KO]$NC"
  fi
done

