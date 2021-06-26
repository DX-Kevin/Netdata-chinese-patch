#!/usr/bin/env bash
set -e
curl -Ss https://my-netdata.io/kickstart.sh|bash
curl -Ss https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/install-Netdata-chinese-patch.sh|bash
echo -e "\033[40;32m-------------中文版Netdata安装完成-------------\033[0m"
