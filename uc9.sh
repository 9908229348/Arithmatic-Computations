#!/bin/bash -x
echo "Enter a,b,c values"
read a
read b
read c
declare -A dict;
declare -a array;
i=0
dict[a+b*c]="$(($a+$b*$c))"
dict[a*b+c]="$(($a*$b+$c))"
dict[c+a/b]="$(($c+$a/$b))"
dict[a%b+c]="$(($a%$b+$c))"
array[((i++))]=${dict[a+b*c]}
array[((i++))]=${dict[a*b+c]}
array[((i++))]=${dict[c+a/b]}
array[((i++))]=${dict[a%b+c]}
echo ${array[@]}
n="${#array[@]}"
for((i=0;i<$n;i++))
do
for((j=$i;j<$n;j++))
do
if [ ${array[$i]} -gt ${array[$j]} ]
then
a=${array[$i]}
array[$i]=${array[$j]}
array[$j]=$a
fi
done
done
echo ${array[@]}


