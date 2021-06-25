## Netdata 简体中文汉化补丁

 -  基于繁体中文版的转换

<https://github.com/jasoncheng7115/netdata-cpatch>
- 基于简体中文版的转换

<https://github.com/YuanzhuL/netdata-cpatch>

## 使用说明
首先安装原版netdata，然后在在替换汉化文件

原版一键安装脚本
```bash
bash <(curl -Ss https://my-netdata.io/kickstart.sh)
```
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
命令：
cd /usr/share/netdata/web/
chown netdata:netdata dashboard_info.js dashboard.js main.js index.html
```
- 4.完成后先清空浏览器缓存，再请刷新网页，即可显示中文界面。


&nbsp;&nbsp;
&nbsp;&nbsp;
