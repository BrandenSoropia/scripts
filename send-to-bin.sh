#!/bin/bash

<<ARGUMENTS
$1 -> file to send to bash
ARGUMENTS

for path in $@
do
  echo "Writting" $path " to ~/../../../usr/local/bin"
  cp -i $path ~/../../../usr/local/bin
done

#echo "Writting" $1 " to ~/../../../usr/local/bin"
#cp -i $1 ~/../../../usr/local/bin

exit 0
