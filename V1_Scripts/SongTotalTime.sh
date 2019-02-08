#!/bin/bash

file=$1

test=$(grep -v '=' $file | grep -o '[[:digit:]]*' | grep . | sed 's|^|1/|' | tr '\n' '+' | awk '{print $0"0"}' | bc -l)  
echo $test
# makes song into arithmetic expression

