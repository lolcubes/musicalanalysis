#!/bin/bash

file=$1

a=$(grep -v ‘=’ $file | grep -v ‘*’ | grep -v ‘!!’ | grep '64\.' | grep -v 'r' | wc -l) # isolate note, find count
c=$(bc -l <<< $a*'3/128') # multiply by note value
b=$(grep -v '=' $file | grep -o '[[:digit:]]*' | grep . | sed 's|^|1/|' | tr '\n' '+' | awk '{print $0"0"}' | bc -l)  

bc -l <<< $c/$b