#!/usr/bin/env bash
if [ -f "/usr/bin/yum" ] && [ -d "/etc/yum.repos.d" ]; then
  PM="yum"
    elif [ -f "/usr/bin/apt-get" ] && [ -f "/usr/bin/dpkg" ]; then
      PM="apt-get"
fi
if [ "${PM}" = "yum" ]; then
  yum install update -y
    elif [ "${PM}" = "apt-get" ]; then
        apt-get install update -y
fi
curl -Ss https://my-netdata.io/kickstart.sh|bash
curl -Ss https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/install-Netdata-chinese-patch.sh|bash
echo -e "\033[40;32m-------------中文版Netdata安装完成-------------\033[0m"
