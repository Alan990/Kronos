#!/bin/bash
clear
echo -e "\033[0;031m*############################################################*\033[0m"
echo -e "\033[0;031m|                                                             |\033[0m"
echo -e "\033[0;031m|  |*|   __   ______    ______   _     _   ______   ______    |\033[0m"
echo -e "\033[0;031m|  | |  / /  | ___  |  |  __  | | \   | | |  __  | |  ____|   |\033[0m"
echo -e "\033[0;031m|  | | / /   | |  / /  | |  | | |  \  | | | |  | | | |        |\033[0m"
echo -e "\033[0;031m|  |  / /    | | / /   | |  | | | \ \ | | | |  | | | |____    |\033[0m"
echo -e "\033[0;031m|  | |\ \    |  / /    | |  | | | |\ \| | | |  | | |____  |   |\033[0m"
echo -e "\033[0;031m|  | | \ \   | | \ \   | |  | | | | \ | | | |  | |      | |   |\033[0m"
echo -e "\033[0;031m|  | |  \ \  | |  \ \  | |__| | | |  \  | | |__| |  ____| |   |\033[0m"
echo -e "\033[0;031m|  |_|   \_\ |_|   \_\ |______| |_|   \_| |______| |______|   |\033[0m"
echo -e "\033[0;031m|                                                             |\033[0m"
echo -e "\033[0;031m|                                          kronos Versão_1.0  |\033[0m"
echo -e "\033[0;031m*############################################################*\033[0m"

echo -e "\033[01;032m\t\t\t**Kronos_Information**\n\033[0m"
echo -e "\033[01;032m\t\t\tInformation Gathering\n\033[0m"
echo -e "\033[01;032mBy:Alan Duarte(wнøaмϊ)  Team:Command_Web   Programming:Shell Script Linux"
echo "                                                                        "
read -p "                          Presione [Enter]"

clear
echo "                                                                        "
echo -e "\033[01;031m\t\t\t\t**Kronos_Information**\033[0m"
echo -e "\033[01;032m\t\t\t\tInformation Gathering\n\033[0m"
echo -e "\033[0;033m\t\t\t[1] Para Descobrir o IP do Alvo\n"
echo -e "\t\t\t[2] Para Buscar Informações do Alvo(whois)\n"
echo -e "\t\t\t[3] Para dar um ping no alvo\n"
echo -e "\t\t\t[4] Enumerar DNS, e ver NS e MX\n"
echo -e "\t\t\t[5] robots.txt scanner\n"
echo -e "\t\t\t[6] Verificações de Diretórios do alvo\n"
echo -e "\t\t\t[7] Verificações de Arquivos do Alvo\n"
echo -e "\t\t\t[8] Detecção de Firewall(wafw00f)\n"
echo -e "\t\t\t[9] Reconhecimento DNS e Brute F. de Subdominios no Alvo\n"
echo -e "\033[0;031m\t\t\t[10] Scan Básico com o Nikto\n\033[0m"
read -p  "Digite um Número: " N

if [ $N -eq 1 ]
	then
	read -p "Digite o Domínio Ex_: examplo.com.br: " dominio
	echo -e "\033[01;032mColetando Informações...\033[0m"
	sleep 2
	host $dominio
	exit 1

elif [ $N -eq 2 ]
	then
	read -p "Digite o Domínio Ex_: www.example.com.br: " dominio
	echo -e "\033[01;032mColetando Informações...\033[0m"
	sleep 2
	whois $dominio
	exit 1

elif [ $N -eq 3 ]
	then
	read -p "Digite o Domínio Ex_: www.example.com.br: " dominio 
	echo -e "\033[01;032mColetando Informações...\033[0m"
        sleep 2
	ping $dominio
	exit 1

elif [ $N -eq 4 ]
	then
	read -p "Digite o Domínio Ex_: www.example.com.br: " dominio
	echo -e "\033[01;032mColetando Informações...\033[0m"
        sleep 2
	dnsenum  $dominio
	exit 1

elif [ $N -eq 5 ]
	then
	read -p "Digite o Domínio Ex_: www.example.com.br: " dominio
	echo -e "\033[01;032mScaneando Alvo...\033[0m"
	sleep 2
	echo -e "\033[01;032mConstruindo Informações Aguarde...\033[0m"
	sleep 2
	uniscan -u $dominio -e | grep "[+]"
	exit 1

elif [ $N -eq 6 ]
	then
	read -p "Digite o Domínio Ex_: www.example.com.br: " dominio
	echo -e "\033[01;032mScaneando Alvo...\033[0m"
	sleep 2
	echo -e "\033[01;032mConstruindo Informações Aguarde...\033[0m"
	sleep 2
	uniscan -u $dominio -q | grep "[+]"
	exit 1

elif [ $N -eq 7 ]
 	then
   	read -p "Digite o Domínio Ex_: www.example.com.br: " dominio
    	echo -e "\033[01;032mScaneando Alvo...\033[0m"
    	sleep 2
    	echo -e "\033[01;032mConstruindo Informações Aguarde...\033[0m"
    	sleep 2
	uniscan -u $dominio -w | grep "[+]"
    	exit 1

elif [ $N -eq 8 ]
	then
	read -p "Digite o Domínio Ex_: www.example.com.br: " dominio 
	echo -e "\033[01;032mAbrindo tool...\033[0m"
	sleep 2
	wafw00f $dominio
	exit 1

elif [ $N -eq 9 ]
	then
	read -p "Digite o Domínio Ex_: examplo.com.br: " dominio
	echo -e "\033[01;032mColetando Informações...\033[0m"
	sleep 2
	dnsrecon -d $dominio -t brt -D /usr/share/dnsrecon/namelist.txt
	exit 1

elif [ $N -eq 10 ]
	then
	read -p "Digite o Domínio Ex_: www.example.com.br: " dominio
	echo -e "\033[01;031mAbrindo o Nikto...\033[0m"
	sleep 2
	echo -e "\033[01;031mScaneando Alvo...\033[0m"
	sleep 2
	nikto -h $dominio
    exit 1

else
	echo "Opção Invalida!"

fi
