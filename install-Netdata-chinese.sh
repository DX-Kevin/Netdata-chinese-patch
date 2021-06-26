#!/usr/bin/env bash
if [ -f "/usr/bin/yum" ] && [ -d "/etc/yum.repos.d" ]; then
  PM="yum"
    elif [ -f "/usr/bin/apt-get" ] && [ -f "/usr/bin/dpkg" ]; then
      PM="apt-get"
fi
if [ "${PM}" = "yum" ]; then
  yum install epel-release -y&&yum update -y
    elif [ "${PM}" = "apt-get" ]; then
        apt-get install epel-release -y&&apt-get update -y
fi
curl -Ss https://my-netdata.io/kickstart.sh|bash
curl -Ss https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/install-Netdata-chinese-patch.sh|bash
