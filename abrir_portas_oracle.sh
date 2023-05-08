#!/bin/bash

# ABRIR PORTAS SERVER AVIRA HOST E ORACLE:
# dev by: @asas_dev 
# Desenvolvido a pedido do amigo https://t.me/Sandroog

echo -e ""
echo -e "⚙️ ️ ATUALIZANDO PACOTES... AGUARDE.."
echo -e ""
apt-get update -y
apt-get upgrade -y
sleep 3
clear
echo -e "⚙️ ️ INSTALANDO FIREWALLD... AGUARDE.."
echo -e ""
apt install firewalld -y
sleep 3
clear

echo -e "⚙️ ️ ABRINDO PORTAS ... AGUARDE.."
echo -e ""
echo -e "⚙️ ️ ABRINDO PORTAS ...1-9999/tcp.."
firewall-cmd --zone=public --add-port=1-9999/tcp
echo -e "⚙️ ️ ABRINDO PORTAS ...1-7999/udp.."
firewall-cmd --zone=public --add-port=1-7999/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 5454/tcp.."
firewall-cmd --zone=public --permanent --add-port=5454/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 80/tcp.."
firewall-cmd --zone=public --permanent --add-port=80/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 81/tcp.."
firewall-cmd --zone=public --permanent --add-port=81/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 8080/tcp.."
firewall-cmd --zone=public --permanent --add-port=8080/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 443/tcp.."
firewall-cmd --zone=public --permanent --add-port=443/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 1194/tcp.."
firewall-cmd --zone=public --permanent --add-port=1194/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 8799/tcp.."
firewall-cmd --zone=public --permanent --add-port=8799/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 8088/tcp.."
firewall-cmd --zone=public --permanent --add-port=8088/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 7505/tcp.."
firewall-cmd --zone=public --permanent --add-port=7505/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 7100/udp.."
firewall-cmd --zone=public --permanent --add-port=7100/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 7200/udp.."
firewall-cmd --zone=public --permanent --add-port=7200/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 7300/udp.."
firewall-cmd --zone=public --permanent --add-port=7300/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 7400/udp.."
firewall-cmd --zone=public --permanent --add-port=7400/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 7500/udp.."
firewall-cmd --zone=public --permanent --add-port=7500/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 7600/udp.."
firewall-cmd --zone=public --permanent --add-port=7600/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 7700/udp.."
firewall-cmd --zone=public --permanent --add-port=7700/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 7800/udp.."
firewall-cmd --zone=public --permanent --add-port=7800/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 7900/udp.."
firewall-cmd --zone=public --permanent --add-port=7900/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 8000/udp.."
firewall-cmd --zone=public --permanent --add-port=8000/udp
echo -e "⚙️ ️ ABRINDO PORTA ... 25/tcp.."
firewall-cmd --zone=public --permanent --add-port=25/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 5000/tcp.."
firewall-cmd --zone=public --permanent --add-port=5000/tcp
echo -e "⚙️ ️ ABRINDO PORTA ... 3306/tcp.."
firewall-cmd --zone=public --permanent --add-port=3306/tcp
echo -e "⚙️ ️ FIREWALLD RELOAD ..."
firewall-cmd --reload
echo -e "⚙️ ️ LISTA DE PORTAS ABERTAS..."
firewall-cmd --zone=public --list-ports
cat /dev/null >~/.bash_history && history -c
history -c
