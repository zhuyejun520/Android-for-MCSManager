#!/bin/sh

install() {
    echo "> 开始安装java-21"
    wget -O java21.deb https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/nLNsQ
    dpkg -i java21.deb
    apt --fix-broken install
    echo "安装完成..."
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
        echo "是否开始安装Java-21环境[确认输入yes/取消输入no]"
        read -p "请输入: " input
        case $input in
        'yes') install ;;
        'no') break ;;
        *) ;;
        esac
    done
fi
echo "脚本执行完毕"