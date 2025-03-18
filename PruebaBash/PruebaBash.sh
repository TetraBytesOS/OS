#!/bin/bash
history -r ~/.bash_history
clear
echo -e "\e[5;31;42m"
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


echo "Pro tip: escribe 'comandos' "

CondicionWhile=0
while [ "$CondicionWhile" -eq 0 ]; do
	echo "Introduce comando:"
    read miVar  #Introduces Info por la consola
    echo "$miVar" >> fuckHistory.txt #añade lo que hayas escrito en miVar al historial interno
    CondicionLS="salir" #sale del while y de la shell
    
    if [[ "$miVar" == "$CondicionLS" ]]; then 
        CondicionWhile=1 #Si introduces Salir se rompe el while

    elif [ "$miVar" == "fecha" ]; then   
 	date  # Muestra la fecha y hora actual

    elif [ "$miVar" == "mostrar" ]; then #Va a hacer cat a un archivo
        echo "Por favor, proporciona un archivo:"
        read miArchivo #Introduces el archivo
    	cat  $miArchivo #Hace cat al archivo

    elif [ "$miVar" == "internalHistory" ]; then #muestra el historial de nuestra shell
	cat fuckHistory.txt
    
    elif [ "$miVar" == "fuckHistory" ]; then #elimina el historial de nuestra shell
        echo " " > fuckHistory.txt

    elif [ "$miVar" == "mostrarInfo" ];then #hace neofetch, muestra especificaciones del ordenador,CPU etc
	echo "Iniciando neofetch..."
	neofetch

    elif [ "$miVar" == "monitor" ];then #hace htop, muestrprocesos, RAM usandose, uso de nucleos de CPU etc
        echo "Iniciando htop..."
        htop

    elif [ "$miVar" == "comandos" ];then #muestra los comandos añadidos por nosotros
        echo "Extra commands: fecha, mostrar, internalHistory, fuckHistory, mostrarInfo, monitor, mostrarPID, crearProceso, matarProceso, comandos, salir"

    elif [[ "$miVar" == "mostrarPID" ]]; then
        echo "El PID del proceso actual es: $$" #muestra proceso actual

    elif [[ "$miVar" == "crearProceso" ]]; then  #crea un proceso
        echo "Creando proceso hijo..."
        bash -c 'sleep 60 & echo "Proceso hijo creado con PID: $!"'

    elif [[ "$miVar" == "matarProceso" ]]; then #mata proceso
        echo "Ingresa el PID del proceso a matar:"
        read pid
        kill -9 $pid
        echo "Proceso $pid terminado."
    else  #Si introduces un comando ya existente
	eval $miVar   #Se ejecuta el comando introducido
    fi
done

