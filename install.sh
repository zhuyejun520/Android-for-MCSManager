#!/bin/sh
echo "安装运行库中..."
apt install Nodejs -y
pkg install git -y
echo "安装MCSM中..."
cd ~
mkdir mcsm
cd ~/mcsm
git clone https://kkgithub.com/MCSManager/MCSManager-Web-Production.git
mv MCSManager-Web-Production web
cd web
npm install --production --registry=https://registry.npmmirror.com/
cd ~/mcsm
echo "安装守护进程中..."
git clone https://kkgithub.com/MCSManager/MCSManager-Daemon-Production.git
mv MCSManager-Daemon-Production daemon
cd daemon
npm install --production --registry=https://registry.npmmirror.com/