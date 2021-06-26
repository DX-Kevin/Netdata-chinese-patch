#!/usr/bin/env bash
set -e
DL="https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/"
D="dashboard.js"
DI="dashboard_info.js"
I="index.html"
M="main.js"
cd  /usr/share/netdata/web/
mv $DI $DI.bk
mv $D $D.bk
mv $M $M.bk
mv $I $I.bk
wget  $DL$D&&wget  $DL$DI&&wget  $DL$I&&wget  $DL$M
chown netdata:netdata $D $DI $I $M
