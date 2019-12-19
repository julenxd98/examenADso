menu(){
	echo "1) Sumar"
	echo "2) Restar"
	echo "3) Multiplicar"
	echo "4) Dividir"
	echo "5) Porcentaje"
	echo "0)Guardar y Salir"

	read -p "Elige la operación " option
}




while true; do
	menu
	case $option in
		1)
			echo 'El resultado de la suma entre' $1 y $2 'es = ' $((1+2))
		;;
		2)
			echo 'El resultado de la resta entre' $1 y $2 'es = ' $((1-2))
		;;
		3)
			echo 'El resultado de la multiplicacion entre '$1 y $2 'es = ' $((1*2))

		;;
		4)
			echo 'El resultado de la division entre' $1 y $2 'es = ' $((1/2))

		;;
		5)
			echo $1 'respecto a ' $2 'supone un porcentaje = ' $((1%2))
			;;
		0) exit 0 ;;
	esac
done
