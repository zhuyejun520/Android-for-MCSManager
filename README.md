Install MCSManager on your mobile phone terminal to make use of your idle mobile phone. | 用手机终端安装MCSManager，让闲置的手机也运用起来。

前置工作：

1.更换清华源

```shell
$ sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list && apt update
 -y && apt upgrade -y
```

使用方法：
1.拉取mian.sh运行Android-for-MCSManager小白辅助脚本
```shell
bash <(curl -sSL https://raw.githubusercontent.com/zhuyejun520/Android-for-MCSManager/main/mian.sh)
```

```shell
By: 一只憨憨的竹叶呀

 欢迎使用 Android-for-MCSManager 小白辅助脚本
bash <(curl -sSL https://raw.githubusercontent.com/zhuyejun520/Android-for-MCSManager/main/mian.sh)



本脚本大部分操作基于 ZeroTermux

请选择以下功能：
1. 安装Android-for-MCSManager
2. 启动守护进程
3. 启动Web进程
q. 退出

请输入功能序号:
```

2.输入1安装Android-for-MCSManager

3.输入2启动守护进程

4.切换窗口，重新运行脚本，输入3启动web进程

5.网页打开：http://localhost:23333/
