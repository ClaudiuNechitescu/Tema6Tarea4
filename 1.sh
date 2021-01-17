#!/bin/bash
for i in `seq 5 105`
do
if [ $(($i%5)) -eq 0 ]
then
echo $i
fi
done
