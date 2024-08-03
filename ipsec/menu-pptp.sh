#!/bin/bash

clear
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e " \033[31m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[34m│$NC\033[33m                       MENU PPTP                          $NC\033[34m│\e[0m"
echo -e " \033[33m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[32m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[35m│$NC [01]${NC} \033[0;36m Create Account PPTP${NC}"
echo -e " \033[35m│$NC [02]${NC} \033[0;36m Extending Account PPTP${NC}"
echo -e " \033[35m│$NC [03]${NC} \033[0;36m Delete Account PPTP${NC}"
echo -e " \033[36m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e ""
read -p " Select From Options [ 1 - 4 ] :  "  opt
echo -e ""
case $opt in
1) clear ; addpptp ; exit ;;
2) clear ; renewpptp ; exit ;;
3) clear ; delpptp ; exit ;;
#4) wget https://raw.githubusercontent.com/Jengkolonline/wireguard/main/wg.sh && chmod +x wg.sh && ./wg.sh ; exit ;;
#5) systemctl stop wg-quick@wg0.service ; exit ;;
#6) systemctl start wg-quick@wg0.service ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-ssh ;;
esac
