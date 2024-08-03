#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/kuhing/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m"
COLOR1="$(cat /etc/kuhing/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/kuhing/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
 WH='\033[1;37m'
###########- END COLOR CODE -##########

clear
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`
if [ "$cekray" = "XRAY" ]; then
domain=`cat /etc/xray/domain`
else
domain=`cat /etc/v2ray/domain`
fi
tls="$(cat ~/log-install.txt | grep -w "Vmess WS TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vmess WS none TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• Add Vmess Account •              ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"

		read -rp "Username: " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
clear
            echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
            echo -e "$COLOR1 ${NC} ${COLBG1}        ${WH}• Add Vmess Account •              ${NC} $COLOR1 $NC"
            echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
            echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
            echo ""
            echo -e " A client with the specified name was already created, please choose another name."
            echo ""
            echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
            read -n 1 -s -r -p "Press any key to back on menu"
menu-vmess
		fi
	done
echo -e ""
read -p "Masukan (uuid): " uuid
echo -e ""
read -p "Expired (days): " masaaktif
harini=`date -d "0 days" +"%Y-%m-%d"`
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmess$/a\#vm '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmessgrpc$/a\#vmg '"$user $exp $uuid"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
asu=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
ask=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF`
grpc=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "vmess-grpc",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
vmess_base643=$( base64 -w 0 <<< $vmess_json3)
vmesslink1="vmess://$(echo $asu | base64 -w 0)"
vmesslink2="vmess://$(echo $ask | base64 -w 0)"
vmesslink3="vmess://$(echo $grpc | base64 -w 0)"

TEXT="
<code>──────────────────────</code>
<code>  XRAY VMSSS  ACCOUNT  </code>
<code>──────────────────────</code>
<code>Remarks      : </code> <code>${user}</code>
<code>Domain       : </code> <code>${domain}</code>
<code>Port TLS     : </code> <code>443</code>
<code>Port NTLS    : </code> <code>80,8880</code>
<code>Port GRPC    : </code> <code>443</code>
<code>User ID      : </code> <code>${uuid}</code>
<code>AlterId      : 0</code>
<code>Security     : auto</code>
<code>Network      : WS or gRPC</code>
<code>Path         : </code> <code>/vmess</code>
<code>ServiceName  : </code> <code>vmess-grpc</code>
<code>──────────────────────</code>
<code>Link TLS     :</code> 
<code>${vmesslink1}</code>
<code>──────────────────────</code>
<code>Link NTLS    :</code> 
<code>${vmesslink2}</code>
<code>──────────────────────</code>
<code>Link GRPC    :</code> 
<code>${vmesslink3}</code>
<code>──────────────────────</code>
<code>Created      : $harini</code>
<code>──────────────────────</code>
<code>Expired On   : $exp</code>
<code>──────────────────────</code>
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null

clear
clear
clear
clear
systemctl restart xray > /dev/null 2>&1
echo -e "${BIRed}─────────────────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BBall}     • XRAY VMESS •     ${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIRed}─────────────────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Remarks       ${BIGreen}: ${WH}${user}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Domain        ${BIGreen}: ${WH}${domain}" | tee -a /etc/log-create-user.log
#echo -e "${BICyan}${NC}${BICyan}Wildcard      ${BIGreen}: ${WH}(bug.com).${domain}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Port TLS      ${BIGreen}: ${WH}443" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Port none TLS ${BIGreen}: ${WH}80" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Port gRPC     ${BIGreen}: ${WH}443" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Port Cadangan ${BIGreen}: ${WH}8880" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}id            ${BIGreen}: ${WH}${uuid}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}alterId       ${BIGreen}: ${WH}0" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Security      ${BIGreen}: ${WH}auto" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Network       ${BIGreen}: ${WH}ws" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Path          ${BIGreen}: ${WH}/vmess - (Support Semua Path)" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}ServiceName   ${BIGreen}: ${WH}vmess-grpc" | tee -a /etc/log-create-user.log
echo -e "${BIRed}─────────────────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Link Websocket TLS ${WH}:${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIGreen}${NC}${WH}${vmesslink1}${NC}"  | tee -a /etc/log-create-user.log
echo -e "${BIRed}─────────────────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Link Websocket None TLS ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIGreen}${NC}${WH}${vmesslink2}${NC}"  | tee -a /etc/log-create-user.log
echo -e "${BIRed}─────────────────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${BICyan}Link GRPC ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIGreen}${NC}${WH}${vmesslink3}${NC}"  | tee -a /etc/log-create-user.log
echo -e "${BIRed}─────────────────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIGreen}${NC} ${WH}Expired On ${BIGreen}: ${WH}$exp" | tee -a /etc/log-create-user.log
echo -e "${BIRed}─────────────────────────${NC}" | tee -a /etc/log-create-user.log
echo "" | tee -a /etc/log-create-user.log
read -n 1 -s -r -p "Press any key to back on menu"
menu-vmess
