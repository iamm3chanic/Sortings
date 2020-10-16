#1/bin/bash
##########################################################################################
#We know that BASH can do a lot more to sorting, though here we use it only for numbers. #
##########################################################################################
#IFS=$' '
n=0
for x in `cat input.txt`
 do
  m[$n]=$x
  n=$[ $n + 1 ]
 done
echo number is $n
printf '%s\n' "${m[@]}" | sort -n #numeric sort
#unset IFS

