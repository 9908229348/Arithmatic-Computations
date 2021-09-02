#!/bin/bash -x
echo "Enter a,b,c values"
read a
read b
read c
echo "$(($a%$b+$c))"
