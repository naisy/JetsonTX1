# Jetson TX1 settings

## ssh login to TX1  
> ssh ubuntu@192.168.x.x  

## 1. Setup before install

> sudo su  
> cd ${JETPACK_VERSION}/${PYTHON_VERSION}/scripts  
> find ./ -type f | xargs -n1 sed -i "s/\r//g"  
> chmod 755 *.sh  

If you need SPI, please remove comment out from setup.sh.

> sudo su  
> cd ${JETPACK_VERSION}/${PYTHON_VERSION}/scripts  
> ./setup.sh  

wait reboot and re-login to TX1

## 2. Install
If you need to build from source, please remove comment out from install.sh

> sudo su  
> cd ${JETPACK_VERSION}/${PYTHON_VERSION}/scripts  
> ./install.sh  

## 3. About disk space
Disk space of TX1 is small.<br>
You'd better use external storage.<br>

```
df
```
>`Filesystem     1K-blocks     Used Available Use% Mounted on`  
>`/dev/root       14318640 13150900    417356  97% /`  
>`devtmpfs         2030884        0   2030884   0% /dev`  
>`tmpfs            2039716      172   2039544   1% /dev/shm`  
>`tmpfs            2039716    13316   2026400   1% /run`  
>`tmpfs               5120        4      5116   1% /run/lock`  
>`tmpfs            2039716        0   2039716   0% /sys/fs/cgroup`  
>`/dev/sda       480590568  9963680 446191176   3% /mnt/Jetson-SSD500`  
>`tmpfs             407944       60    407884   1% /run/user/1001`  
>`tmpfs             407944        0    407944   0% /run/user/1000`  

## 4. Object Detection (ssd_mobilenet_v1)
Jetson TX1 also works well around 25 FPS.<br>
[https://github.com/naisy/realtime_object_detection](https://github.com/naisy/realtime_object_detection)
