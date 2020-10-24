#!/bin/bash

countingSort() {
    arr=("${@:2}")
    n=${#arr[@]}
    max=1000
    (( m = $max + 1 ))
    for (( i = 0; i < $m ; i++ )); do
        count+=(0)
    done
    for i in "${arr[@]}" ; do
        (( count[$i]++ ))
    done
    i=0
    for (( a = 0; a < $m; a++ )); do
        for (( c = 0; c < "${count[$a]}"; c++ )); do
            arr[$i]=$a
            (( i++ ))
        done
    done
    printf "%s\n" "${arr[@]}" 
}

##############
n=0
for x in `cat input.txt`
 do
  m[$n]=$x
  n=$[ $n + 1 ]
 done
echo number is $n
countingSort $n "${m[@]}" 

