#!/usr/bin/env bash
DL="https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/"
D="dashboard.js"
DI="dashboard_info.js"
I="index.html"
M="main.js"
C="/usr/share/netdata/web/"
mv $C$DI $C$DI.bk
mv $C$D $C$D.bk
mv $C$M $C$M.bk
mv $C$I $C$I.bk
wget -P $C $DL$D&&wget -P $C $DL$DI&&wget -P $C $DL$I&&wget -P $C $DL$M
chown netdata:netdata $C$D $C$DI $C$I $C$M
echo -e "\033[40;32m-------------简体中文版Netdata补丁安装完成-------------\033[0m"
