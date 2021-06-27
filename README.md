## Netdata 简体中文汉化补丁



## 中文简体版一键自动安装脚本
中文简体版一键安装脚本
```bash
bash <(curl -Ss https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/install-Netdata-chinese.sh)
```
安装完成后需要添加19999端口到例外（允许19999端口访问）
## 中文简体版汉化补丁一键自动安装脚本
💡汉化脚本适用于已安装英文原版Netdata

中文简体版一键汉化脚本
```bash
bash <(curl -Ss https://raw.githubusercontent.com/DX-Kevin/Netdata-chinese-patch/main/install-Netdata-chinese-patch.sh)
```
## 中文简体版汉化补丁手动安装方法
- 1.先备份或者重命名下面四个文件
```bash
dashboard_info.js dashboard.js main.js index.html
```
- 2.下载本项目四个文件到`/usr/share/netdata/web/` 目录
```bash
dashboard_info.js dashboard.js main.js index.html
```
- 3.修改四个文件的权限为：`netdata:netdata`
```bash
chown -R netdata:netdata /usr/share/netdata/web/
```
- 4.在系统防火墙添加默认端口：19999到例外
  - Centos7命令:
  ```bash
  firewall-cmd --zone=public --add-port=19999/tcp --permanent
  firewall-cmd --reload
  ```
  - Ubuntu命令:
  ```bash
  sudo ufw allow 19999
  ```
- 5.完成后先清空浏览器缓存，再请刷新网页，即可显示中文界面。

## 基于项目 (Contribute)
- <https://github.com/netdata/netdata>
- <https://github.com/jasoncheng7115/netdata-cpatch>
- <https://github.com/YuanzhuL/netdata-cpatch>
&nbsp;&nbsp;
