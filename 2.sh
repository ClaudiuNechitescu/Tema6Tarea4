#!/bin/bash
read -p "Introduce un numero entre 1 y 100: " num
until [[ $num -ge 1 && $num -le 100 ]]
do
read -p "Introduce un numero entre 1 y 100: " num
done
for i in `seq 1 10`
do
echo "$num x $i = $(($num*i))"
done
