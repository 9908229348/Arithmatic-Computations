#!/bin/bash -x
echo "Enter a,b,c values"
read a
read b
read c
declare -A dict;
dict[a+b*c]="$(($a+$b*$c))"
dict[a*b+c]="$(($a*$b+$c))"
dict[c+a/b]="$(($c+$a/$b))"
dict[a%b+c]="$(($a%$b+$c))"
