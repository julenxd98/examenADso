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
#En este dialog se preguntara por la mascara
preguntarMascara(){
# un archivo temporal donde guardar lo que vamos leyendo
OUTPUT="/tmp/input.txt"


# Dibuja el InputBox
dialog --title "Configuracion de red" \
--backtitle "Mascara" \
--inputbox "Indica la mascara de red" 8 60 2>$OUTPUT

# lee lo que esta escribiendo el usuario
response=$?

# lee lo que hay en OUTPUT usando la redirecction  $OUTPUT
name=$(<$OUTPUT)

#Entra en el cae
case $response in
#Guarda la variable mascara y visualiza lo que llevamos
        0) mascara=$name
                   echo "Por ahora llevas" "adaptador="$adaptador",IP="$IP",mascara="$mascara",enlace="$enlace",dns1="$dns1",dns2="$dns2
        ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac

#borrar archivo temporal
rm /tmp/input.txt
}
#En este dialog se preguntara por la puerta de enlace
preguntarenlace(){
# un archivo temporal donde guardar lo que vamos leyendo
OUTPUT="/tmp/input.txt"


# Dibuja el InputBox
dialog --title "Configuracion de red" \
--backtitle "Enlace" \
--inputbox "Indica la puerta de enlace" 8 60 2>$OUTPUT

# lee lo que esta escribiendo el usuario
response=$?

# lee lo que hay en OUTPUT usando la redirecction  $OUTPUT
name=$(<$OUTPUT)

#Entra en el cae
case $response in
#Guarda la variable enlace y visualiza lo que llevamos
        0) enlace=$name
                   echo "Por ahora llevas" "adaptador="$adaptador",IP="$IP",mascara="$mascara",enlace="$enlace",dns1="$dns1",dns2="$dns2
            ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac

#borrar archivo temporal
rm /tmp/input.txt
}
#En este dialog se preguntara por el  dns primario
preguntardns(){
# un archivo temporal donde guardar lo que vamos leyendo
OUTPUT="/tmp/input.txt"


# Dibuja el InputBox
dialog --title "Configuracion de red" \
--backtitle "DNS" \
--inputbox "Indica el DNS primario" 8 60 2>$OUTPUT

# lee lo que esta escribiendo el usuario
response=$?

# lee lo que hay en OUTPUT usando la redirecction  $OUTPUT
name=$(<$OUTPUT)

#Entra en el cae
case $response in
#Guarda la variable dns1 y visualiza lo que llevamos
        0) dns1=$name
                   echo "Por ahora llevas" "adaptador="$adaptador",IP="$IP",mascara="$mascara",enlace="$enlace",dns1="$dns1",dns2="$dns2
         ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac

#borrar archivo temporal
rm /tmp/input.txt
}
#En este dialog se preguntara por el dns secundario
preguntardns2(){
# un archivo temporal donde guardar lo que vamos leyendo
OUTPUT="/tmp/input.txt"


# Dibuja el InputBox
dialog --title "Configuracion de red" \
--backtitle "DNS" \
--inputbox "Indica el DNS secundario" 8 60 2>$OUTPUT

# lee lo que esta escribiendo el usuario
response=$?

# lee lo que hay en OUTPUT usando la redirecction  $OUTPUT
name=$(<$OUTPUT)

#Entra en el cae
case $response in
#Guarda la variable dns2 y visualiza lo que llevamos
        0) dns2=$name
                   echo "Por ahora llevas" "adaptador="$adaptador",IP="$IP",mascara="$mascara",enlace="$enlace",dns1="$dns1",dns2="$dns2
                 ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac

#borrar archivo temporal
rm /tmp/input.txt
}
#Para guardar en el archivo nuestra configuracion
guardasarchivo() {
                   echo "adaptador="$adaptador",IP="$IP",mascara="$mascara",enlace="$enlace",dns1="$dns1",dns2="$dns2 >> crearadaptador.conf
}
#Creamos un bucle para que se ejecute nuestro menu tantas veces como sean necesarias
while :
do
        dibujarmenu
        read -p "Elige entre 0 y 7 " numero
                case $numero in
                        0)
                                exit 0
                                ;;
                        1)
                                preguntaradaptador
                                ;;
                        2)
                                preguntarIP
                                ;;
                        3)
                                preguntarMascara
                                ;;
                        4)
                                preguntarenlace
                                ;;
                        5)
                                preguntardns
                                ;;
                        6)
                                preguntardns2
                                ;;
                        7)      guardasarchivo
                                ;;
                        8)                         echo "Llevas" "adaptador="$adaptador",IP="$IP",mascara="$mascara",enlace="$enlace",dns1="$dns1",dns2="$dns2
                                ;;
                        *)
                                echo "Eso no es posible, vuelvo a preguntar" ;;
                esac

done
echo "Si ves esto, algo ha salido mal"
