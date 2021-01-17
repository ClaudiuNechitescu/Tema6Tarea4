#!/bin/bash
presupuesto=100
sum=0
echo "Bienvenido a ComprasNechitescu: "
while [ $presupuesto -gt 0 ]
do
echo -n "	Tiene usted $presupuesto de saldo. Introduzca importe de compra: "
read importe
if [ $importe -gt $presupuesto ]
then
echo "	No dispone de tanto saldo"
echo "	Resumen de sus compras: se gasta $sum€; le quedan $presupuesto€"
exit 1
else 
presupuesto=$((presupuesto-importe))
sum=$((sum+importe))
fi
done

