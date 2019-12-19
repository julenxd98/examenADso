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
