#!/bin/bash
#Declaramos las variables necesarias
let usuario
let grupo
let home
let id
let todo
#Creamos el menu con diferentes opciones, introducir los datos, visualizarlos y guardarlos.
dibujarmenu(){
echo "-----------------------------------------------------"
echo "|                  Rellena la frase                 |"
echo "| Pulsa 1 para añadir nombre de usuario             |"
echo "| Pulsa 2 para añadir grupo                         |"
echo "| Pulsa 3 para añadir directorio home               |"
echo "| Pulsa 4 para añadir el id                         |"
echo "| Pulsa 5 para ver lo que llevas                    |"
echo "| Pulsa 7 para añadir el archivo                    |"
echo "| Pulsa 8 para ver el archivo que añadiremos        |"
echo "| Pulsa 0 para salir                                |"
echo "-----------------------------------------------------"
}
#En este dialog se preguntara por el usuario
preguntaradaptador(){
# un archivo temporal donde guardar lo que vamos leyendo
OUTPUT="/tmp/input.txt"


# Dibuja el InputBox
dialog --title "Añadir usuarios" \
--backtitle "Nuevo usuario" \
--inputbox "Indica el nombre de usuario" 8 60 2>$OUTPUT

# lee lo que esta escribiendo el usuario
response=$?

# lee lo que hay en OUTPUT usando la redirecction  $OUTPUT
name=$(<$OUTPUT)

#Entra en el case
case $response in
#Guarda la variable adaptador y visualiza lo que llevamos
        0) usuario=$name
           echo "Por ahora llevas" "usuario="$usuario",grupo="$grupo",home="$home",id="$id

         ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac

#borrar archivo temporal
rm /tmp/input.txt
}
