#!/bin/bash
history -r ~/.bash_history
clear
echo -e "\e[1;7;5;31;42m"
cat << "EOF"
  ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒ ░░▒▓█▓▒░░▒▓█▓▒░           /´/     ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒ ░▒▓█▓▒░░▒▓█▓▒░           ,/¯/       ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░       /´¯/'.'/´¯`·    ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓██████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░       ░▒▓█████▓▒░       /'/../.../.../¨¯\  ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░   ('(..´..´. ¯~/'..')  ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
 ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒ ░▒▓█▓▒░░▒▓█▓▒░   \...........'.../  ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░       ░▒▓██████▓▒░ ░▒▓██████▓▒░   ░▒▓█▓▒░░▒▓█▓▒░   ''...\.... _.·´  ░▒▓█▓▒░    ░▒▓██████▓▒░ ░▒▓██████▓▒░
                                                            \.........(
                                                             \.........\

EOF
echo -e "\e[25;39;49m"
echo -e "\e[1;7;93;42m"

echo "Pro tip: escribe 'comandos' "


if [[ "$1" == "$CondicionLS" ]]; then
        CondicionWhile=1 #Si introduces Salir se rompe el while

    elif [ "$1" == "fecha" ]; then
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        date  # Muestra la fecha y hora actual
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"

    elif [ "$1" == "mostrar" ]; then #Va a hacer cat a un archivo
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[93;104m"
        echo "Por favor, proporciona un archivo:"
        echo -e "\e[27;39;49m"

        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        read miArchivo #Introduces el archivo
        cat  $miArchivo #Hace cat al archivo
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"

    elif [ "$1" == "internalHistory" ]; then #muestra el historial de nuestra shell
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        cat fuckHistory.txt
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [ "$1" == "fuckHistory" ]; then #elimina el historial de nuestra shell
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo " " > fuckHistory.txt
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [ "$1" == "mostrarInfo" ];then #hace neofetch, muestra especificaciones del ordenador,CPU etc
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Iniciando neofetch..."
        neofetch
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"

    elif [ "$1" == "monitor" ];then #hace htop, muestrprocesos, RAM usandose, uso de nucleos de CPU etc
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Iniciando htop..."
        htop
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [ "$1" == "comandos" ];then #muestra los comandos añadidos por nosotros
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Extra commands: fecha, mostrar, internalHistory, fuckHistory, mostrarInfo, monitor, mostrarPID, crearProceso, matarProceso, comandos, salir"
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [[ "$1" == "mostrarPID" ]]; then
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "El PID del proceso actual es: $$" #muestra proceso actual
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [[ "$1" == "crearProceso" ]]; then  #crea un proceso
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Creando proceso hijo..."
        bash -c 'sleep 60 & echo "Proceso hijo creado con PID: $!"'
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [[ "$1" == "matarProceso" ]]; then #mata proceso
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Ingresa el PID del proceso a matar:"
        read pid
        kill -9 $pid
        echo "Proceso $pid terminado."
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    else  #Si introduces un comando ya existente
        eval $miVar   #Se ejecuta el comando introducido
    fi



CondicionWhile=0
while [ "$CondicionWhile" -eq 0 ]; do
        echo "Introduce comando:"
    read miVar  #Introduces Info por la consola
    echo "$miVar" >> fuckHistory.txt #añade lo que hayas escrito en miVar al historial interno
    CondicionLS="salir" #sale del while y de la shell

    if [[ "$miVar" == "$CondicionLS" ]]; then
        CondicionWhile=1 #Si introduces Salir se rompe el while

    elif [ "$miVar" == "fecha" ]; then
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        date  # Muestra la fecha y hora actual
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"

    elif [ "$miVar" == "mostrar" ]; then #Va a hacer cat a un archivo
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[93;104m"
        echo "Por favor, proporciona un archivo:"
        echo -e "\e[27;39;49m"

        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        read miArchivo #Introduces el archivo
        cat  $miArchivo #Hace cat al archivo
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"

    elif [ "$miVar" == "internalHistory" ]; then #muestra el historial de nuestra shell
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        cat fuckHistory.txt
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [ "$miVar" == "fuckHistory" ]; then #elimina el historial de nuestra shell
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo " " > fuckHistory.txt
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [ "$miVar" == "mostrarInfo" ];then #hace neofetch, muestra especificaciones del ordenador,CPU etc
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Iniciando neofetch..."
        neofetch
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"

    elif [ "$miVar" == "monitor" ];then #hace htop, muestrprocesos, RAM usandose, uso de nucleos de CPU etc
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Iniciando htop..."
        htop
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [ "$miVar" == "comandos" ];then #muestra los comandos añadidos por nosotros
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Extra commands: fecha, mostrar, internalHistory, fuckHistory, mostrarInfo, monitor, mostrarPID, crearProceso, matarProceso, comandos, salir"
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [[ "$miVar" == "mostrarPID" ]]; then
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "El PID del proceso actual es: $$" #muestra proceso actual
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [[ "$miVar" == "crearProceso" ]]; then  #crea un proceso
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Creando proceso hijo..."
        bash -c 'sleep 60 & echo "Proceso hijo creado con PID: $!"'
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    elif [[ "$miVar" == "matarProceso" ]]; then #mata proceso
        echo -e "\e[21;24;27;39;49m"
        echo -e "\e[35;106m"
        echo "Ingresa el PID del proceso a matar:"
        read pid
        kill -9 $pid
        echo "Proceso $pid terminado."
        echo -e "\e[39;49m"
        echo -e "\e[1;7;93;42m"
    else  #Si introduces un comando ya existente
        eval $miVar   #Se ejecuta el comando introducido
    fi
done

echo -e "\e[21;24;27;39;49m"



