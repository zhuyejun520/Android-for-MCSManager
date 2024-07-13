Install MCSManager on your mobile phone terminal to make use of your idle mobile phone. | 用手机终端安装MCSManager，让闲置的手机也运用起来。

前置工作：

1.更新软件源
```python
apt update -y
```
2.安装wget工具

apt install wget -y

使用方法：

1.用wget拉取install.sh并运行来安装MCSM的本体

wget -qO- https://raw.githubusercontent.com/zhuyejun520/Android-for-MCSManager/main/install.sh | bash

2.用wget拉取start1.sh并运行来运行MCSM的守护进程

wget -qO- https://raw.githubusercontent.com/zhuyejun520/Android-for-MCSManager/main/start1.sh | bash

3.用wget拉取start2.sh并运行来运行MCSM的web进程

wget -qO- https://raw.githubusercontent.com/zhuyejun520/Android-for-MCSManager/main/start2.sh | bash

4.网页打开：http://localhost:23333/
