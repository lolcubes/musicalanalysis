#!/bin/bash
file=$1

a=$(grep 'k\[' $file | wc -l)

echo $a

if [ $a -gt 1 ]
then echo bad
elif [ $a = 0 ]
then echo Add key signature
else echo Good
fi