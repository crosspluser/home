__ubuntu_16_64__

安装
```
sudo apt-get install samba
```

配置
```
sudo vim /etc/samba/smb.conf
```

写入文件最后
```
[share]
path = /home/你的用户名
public = yes
writable = yes
valid users = 你的用户名
create mask = 0644
force create mode = 0644
directory mask = 0755
force directory mode = 0755
available = yes
```

设置密码
```
sudo touch /etc/samba/smbpasswd

sudo smbpasswd -a "你的用户名"
```

重启服务
```
sudo /etc/init.d/samba restart
```

客户端测试
```
sudo apt-get install smbclient 
smbclient -L //ip:port/share
```