#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
julak="raw.githubusercontent.com/bagusid93/sc3"

BGreen='\e[1;32m'
NC='\e[0m'
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
clear
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading File Menu${NC}"
cd /usr/bin
sleep 1
echo -e ""
echo -e ""
sleep 1
wget -q -O menu "https://${julak}/main/menu/menu4.sh"
clear
sleep 1
echo -e "${GB}[ INFO ]${NC} ${YB}Sambil Nunggu, Ngopi Dulu Broo .....!!!!${NC}"
sleep 1
wget -q -O kimut "https://raw.githubusercontent.com/bagusid93/sc3/main/menu/kimut.sh"
clear
echo -e "${GB}[ INFO ]${NC} ${YB}Install All Menu .....!!!!${NC}"
sleep 1
wget -O menu-l2tp "https://${julak}/main/ipsec/menu-l2tp.sh"
wget -O m-bot "https://${julak}/main/menu/m-bot.sh"
wget -O m-ip "https://${julak}/main/menu/m-ip.sh"
wget -O menu-vmess "https://${julak}/main/xray/m-vmess.sh"
wget -O menu-vless "https://${julak}/main/xray/m-vless.sh"
wget -O running "https://${julak}/main/menu/running.sh"
wget -O clearcache "https://${julak}/main/menu/clearcache.sh"
wget -O menu-trojan "https://${julak}/main/xray/m-trojan.sh"
wget -O menu-ssh "https://${julak}/main/menu/menu-ssh.sh"
wget -O tendang "https://${julak}/main/ssh/tendang.sh"
wget -O ls "https://${julak}/main/ssh/ls.sh"
wget -O lx "https://${julak}/main/ssh/lx.sh"
wget -O menu-set "https://${julak}/main/menu/menu-set.sh"
wget -O menu-domain "https://${julak}/main/menu/menu-domain.sh"
wget -O add-host "https://${julak}/main/ssh/add-host.sh"
wget -O certv2ray "https://${julak}/main/xray/certv2ray.sh"
wget -O menu-webmin "https://${julak}/main/menu/menu-webmin.sh"
wget -O speedtest "https://${julak}/main/ssh/speedtest_cli.py"
wget -O about "https://${julak}/main/menu/about.sh"
wget -O auto-reboot "https://${julak}/main/menu/auto-reboot.sh"
wget -O restart "https://${julak}/main/menu/restart.sh"
wget -O bw "https://${julak}/main/menu/bw.sh"
wget -O menu-port "https://${julak}/main/port/port-change.sh"
wget -O port-ssl "https://${julak}/main/port/port-ssl.sh"
wget -O port-ovpn "https://${julak}/main/port/port-ovpn.sh"
wget -O acs-set "https://${julak}/main/acs-set.sh"
wget -O sshws "https://${julak}/main/ssh/sshws.sh"
wget -O status "https://${julak}/main/status.sh"
wget -O menu-bckp "https://${julak}/main/menu/menu-bckp.sh"
wget -O jam "https://${julak}/main/jam.sh"
#wget -O add-vmess "https://${julak}/main/xray/add-vmess.sh"
wget -O add-vls "https://${julak}/main/xray/add-vls.sh"
wget -O add-vms "https://${julak}/main/xray/add-vms.sh"
wget -O add-tru "https://${julak}/main/xray/add-tru.sh"
wget -O user-lock "https://${julak}/main/ssh/user-lock.sh"
wget -O user-unlock "https://${julak}/main/ssh/user-unlock.sh"
wget -O menu-backup "https://${julak}/main/menu/menu-backup.sh"
wget -O menu-theme "https://${julak}/main/menu/menu-theme.sh"
wget -O backup "https://${julak}/main/backup/backup.sh"
wget -O restore "https://${julak}/main/backup/restore.sh"
wget -O new-dns "https://${julak}/main/ssh/new-dns.sh"
wget -O sbdns "https://${julak}/main/ssh/sbdns.sh"
wget -O nsdns "https://${julak}/main/ssh/nsdns.sh"

chmod +x kimut
chmod +x menu
chmod +x m-bot
chmod +x menu-l2tp
chmod +x m-ip
chmod +x menu-vmess
chmod +x menu-vless
chmod +x running
chmod +x clearcache
chmod +x menu-trojan
chmod +x menu-ssh
chmod +x tendang
chmod +x menu-set
chmod +x menu-domain
chmod +x add-host
chmod +x menu-port
chmod +x certv2ray
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restart
chmod +x bw
chmod +x menu-port
chmod +x port-ssl
chmod +x port-ovpn
chmod +x acs-set
chmod +x sshws
chmod +x status
chmod +x menu-bckp
chmod +x jam
chmod +x add-vls
chmod +x add-vms
chmod +x add-tru
chmod +x user-lock
chmod +x user-unlock
chmod +x menu-backup
chmod +x menu-theme
chmod +x backup
chmod +x restore
chmod +x new-dns
chmod +x sbdns
chmod +x nsdns
chmod +x ls
chmod +x lx

cd
sleep 3
echo ""
clear
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading File Menu Successfully${NC}"
sleep 5
clear
