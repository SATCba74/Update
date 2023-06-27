#!/bin/bash

rojo='\033[31m'
verde='\033[32m'
azul='\033[34m'
reset='\033[0m'

echo "${azul}Script de Automatizacion de Paquetes, Flatpak y Snap"${reset}

echo "${verde}Comprueba actualizaciones disponiblalaes"${reset}
sudo nala update || sudo apt update
echo "${verde}Instala paquetes que pueden ser actualizados"${reset}
sudo nala upgrade || sudo apt upgrade
echo "${verde}Eliminar paquetes no necesarios y limpiar ficheros"${reset}
sudo nala autoremove || sudo apt -y autoremove
sudo apt autoremove
sudo nala autopurge || sudo apt autoclean
echo "${verde}Comprueba actualizaciones FlatPak"${reset}
flatpak update
echo "${verde}Comprueba actualizaciones Snap"${reset}
snap refresh

clear
echo "${azul}Se han completado todas las tareas. ${reset} Hasta luego"

exit
