#!/bin/bash
aleatorio=$((RANDOM%100+1))
read -p "Adivina el número: " num
puntos=100
until [ $num -eq $aleatorio ]
do
if [ $((num%aleatorio)) -eq 0 ]
then
echo "$num es múltiplo"
elif [ $((aleatorio%num)) -eq 0 ]
then
echo "$num es divisor"
else
echo "No lo has adivinado, no es ni múltiplo ni divisor"
fi
puntos=$((puntos-1))
read -p "Adivina el número: " num
done
echo "Has ganado"
echo "Has conseguido $puntos puntos"
