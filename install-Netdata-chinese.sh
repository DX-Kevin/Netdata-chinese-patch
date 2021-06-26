#!/usr/bin/env bash
set -e
if [ ! -f /bin/curl ];then
  if [ "${PM}" = "yum" ]; then
    yum install curl -y
  elif [ "${PM}" = "apt-get" ]; then
    apt-get install curl -y
  fi
fi
curl -Ss https://my-netdata.io/kickstart.sh|bash
curl -Ss https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/install-Netdata-chinese-patch.sh|bash
echo -e "\033[40;32m-------------中文版Netdata安装完成-------------\033[0m"
