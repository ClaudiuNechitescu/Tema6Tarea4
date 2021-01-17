#!/bin/bash
read -p "Introduce un número entero: " num
res=1
for i in `seq 1 $num`
do
res=$((res*i))
done
echo "$num! = $res"
