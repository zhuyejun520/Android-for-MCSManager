#!/bin/bash
clear
echo '
By: 一只憨憨的竹叶呀

 欢迎使用 Android-for-MCSManager 小白辅助脚本
 bash <(wget -qO- https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/l0ack)

'

#一键安装Android-for-MCSManager
 Android_MCSManager() {
    echo "> 安装Android-for-MCSManager"
    bash <(curl -sSL https://raw.githubusercontent.com/zhuyejun520/Android-for-MCSManager/main/install.sh)
 }

#启动守护进程
 start_Daemon() {
    echo "> 启动守护进程"
    cd ~/mcsm/daemon
    node app.js
 }

#启动web进程
 start_web() {
    echo "> 启动Web进程"
    cd ~/mcsm/web
    node app.js
 }

 # 脚本入口
if [ $# -gt 0 ]; then
    # 如果有命令行参数，则直接执行对应的函数
    function_name="$1"
    echo "直接进入子功能 $function_name , 更多选项请运行以上命令"
    echo ">"
    shift
    $function_name "$@"
else
    echo ""
    echo "本脚本大部分操作基于 ZeroTermux"
    while true; do
        echo ""
        echo "请选择以下功能："
        echo "1. 安装Android-for-MCSManager"
        echo "2. 启动守护进程"
        echo "3. 启动Web进程"
        echo "q. 退出"
        echo ""
        read -p "请输入功能序号: " input
        case $input in
        1) Android_MCSManager ;;
        2) start_Daemon ;;
        3) start_web ;;
        'q') break ;;
        *) ;;
        esac
    done
fi
echo "脚本执行完毕"