#!/bin/bash
#Declaramos las variables necesarias
let adaptador
let IP
let mascara
let enlace
let dns1
let dns2
let todo
#Creamos el menu con diferentes opciones, introducir los datos, visualizarlos y guardarlos. 
dibujarmenu(){
echo "-----------------------------------------------------"
echo "|                  Rellena la frase                 |"
echo "| Pulsa 1 para configurar adaptador                 |"
echo "| Pulsa 2 para configurar IP                        |"
echo "| Pulsa 3 para configurar la mascara                |"
echo "| Pulsa 4 para configurar el enlace                 |"
echo "| Pulsa 5 para configutar el dns primario           |"
echo "| Pulsa 6 para configutar el dns secundario         |"
echo "| Pulsa 7 para guardar el archivo                   |"
echo "| Pulsa 8 para ver lo que llevas                    |"
echo "| Pulsa 0 para salir                                |"
echo "-----------------------------------------------------"
}
#En este dialog se preguntara por el adaptador
preguntaradaptador(){
# un archivo temporal donde guardar lo que vamos leyendo
OUTPUT="/tmp/input.txt"


# Dibuja el InputBox
dialog --title "Configuracion de red" \
--backtitle "Adaptador" \
--inputbox "Indica el adaptador a configurar" 8 60 2>$OUTPUT

# lee lo que esta escribiendo el usuario
response=$?

# lee lo que hay en OUTPUT usando la redirecction  $OUTPUT
name=$(<$OUTPUT)

#Entra en el case
case $response in
#Guarda la variable adaptador y visualiza lo que llevamos
        0) adaptador=$name
           echo "Por ahora llevas" "adaptador="$adaptador",IP="$IP",mascara="$mascara",enlace="$enlace",dns1="$dns1",dns2="$dns2

         ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac

#borrar archivo temporal
rm /tmp/input.txt
}
#En este dialog se preguntara por la IP
preguntarIP(){
# un archivo temporal donde guardar lo que vamos leyendo
OUTPUT="/tmp/input.txt"


# Dibuja el InputBox
dialog --title "Configuracion de red" \
--backtitle "IP" \
--inputbox "Indica la direccion IP" 8 60 2>$OUTPUT

# lee lo que esta escribiendo el usuario
response=$?

# lee lo que hay en OUTPUT usando la redirecction  $OUTPUT
name=$(<$OUTPUT)

#Entra en el cae
case $response in
#Guarda la variable IP y visualiza lo que llevamos
        0) IP=$name
                   echo "Por ahora llevas" "adaptador="$adaptador",IP="$IP",mascara="$mascara",enlace="$enlace",dns1="$dns1",dns2="$dns2
                ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac

#borrar archivo temporal
rm /tmp/input.txt
}
