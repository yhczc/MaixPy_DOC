点亮设备，第一次接触MaixPy
========

## 连接硬件

连接 Type C 线， 一端电脑一端开发板


## 使用串口工具


### Linux

使用`minicom` 或者 `screen`等工具即可

#### Screen

```
sudo apt update
sudo apt install screen
sudo screen /dev/ttyUSB0 115200
```
然后点击回车键，即可看到 MaixPy 的交互界面了
`>>>`

输入help()，可以查看帮助

要退出`minicom`， 按<kbd>Ctrl+A</kbd> <kbd>K</kbd>，确认退出即可


#### minicom

```
sudo apt update
sudo apt install minicom
sudo minicom -s
# 然后根据提示设置串口号以及波特率为 115200 等，不懂可以利用搜索工具搜索
sudo minicom
```

进入`minicom`后点击回车键，即可看到 MaixPy 的交互界面了
`>>>`

输入help()，可以查看帮助

要退出`minicom`， 按<kbd>Ctrl+A</kbd> <kbd>X</kbd>，确认退出即可



### Windows

使用如 [putty](https://www.putty.org/) 等工具

然后选择串口模式， 然后设置串口和波特率，打开串口。

然后点击回车键，即可看到 MaixPy 的交互界面了
`>>>`

输入help()，可以查看帮助





