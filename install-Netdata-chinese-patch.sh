#!/usr/bin/env bash
DL="https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/"
D="dashboard.js"
DI="dashboard_info.js"
I="index.html"
M="main.js"
C="/usr/share/netdata/web/"
if [ -f "/usr/bin/yum" ] && [ -d "/etc/yum.repos.d" ]; then
  PM="yum"
    elif [ -f "/usr/bin/apt-get" ] && [ -f "/usr/bin/dpkg" ]; then
      PM="apt-get"
fi
if [ "${PM}" = "yum" ]; then
  yum install wget -y
    elif [ "${PM}" = "apt-get" ]; then
        apt-get install wget -y
fi
mv $C$DI $C$DI.bk&&mv $C$D $C$D.bk&&mv $C$M $C$M.bk&&mv $C$I $C$I.bk
echo -e "\033[40;32m-------------1-------------\033[0m"
wget -P $C $DL$D&&wget -P $C $DL$DI&&wget -P $C $DL$I&&wget -P $C $DL$M
echo -e "\033[40;32m-------------2-------------\033[0m"
chown netdata:netdata $C$D $C$DI $C$I $C$M
echo -e "\033[40;32m-------------3-------------\033[0m"
systemctl stop netdata&&systemctl start netdata
echo -e "\033[40;32m-------------简体中文版Netdata补丁安装完成-------------\033[0m"
