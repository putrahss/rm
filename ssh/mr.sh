#!/bin/bash

clear
wget -q -O /usr/bin/limit-ip-ssh "https://sc2.scvps.biz.id/ssh/limit-ip-ssh"
chmod +x /usr/bin/*
cd /usr/bin
sed -i 's/\r//' limit-ip-ssh
clear
wget -q -O /usr/bin/limit-ip "https://sc2.scvps.biz.id/ssh/limit-ip"
chmod +x /usr/bin/*
cd /usr/bin
sed -i 's/\r//' limit-ip
clear
#SERVICE LIMIT ALL IP
cat >/etc/systemd/system/sship.service << EOF
[Unit]
Description=My
After=network.target

[Service]
ExecStart=/usr/bin/limit-ip-ssh sship
Restart=always
RestartSec=3
StartLimitIntervalSec=60
StartLimitBurst=5

[Install]
WantedBy=default.target
EOF
systemctl daemon-reload
systemctl restart sship
systemctl enable sship

cat >/etc/systemd/system/vmip.service << EOF
[Unit]
Description=My
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/limit-ip vmip
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart vmip
systemctl enable vmip

cat >/etc/systemd/system/vlip.service << EOF
[Unit]
Description=My
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/limit-ip vlip
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart vlip
systemctl enable vlip

cat >/etc/systemd/system/trip.service << EOF
[Unit]
Description=My
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/limit-ip trip
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart trip
systemctl enable trip
