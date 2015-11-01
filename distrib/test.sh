#!/bin/bash
#

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# test z3 is accessible and can process a simple file
# 
z3bin=$(which z3)
echo -e "Checking Z3 solver $GREEN[FOUND]$NC" $z3bin

# test clang version
clangbin=$(which clang)
# echo "Clang compiler:" $clangbin
clangversion=$($clangbin --version | grep "version" | grep "3.7.0" | grep "tags/RELEASE_370/final")
echo -e "Clang compiler     $GREEN[FOUND]$NC" $clangbin  
echo -e "Clang version      $GREEN[FOUND]$NC" $clangversion

optbin=$(which opt)
optversion=$($optbin --version | grep "version" | grep "3.7.0")
echo -e "LLVM opt           $GREEN[FOUND]$NC" $optversion

\rm -f tests/*.ll
\rm -f tests/*.result
\rm -f tests/*.graphml

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

