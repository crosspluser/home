
系统要求
+ Artful 17.10 (Docker CE 17.11 Edge and higher only)
+ Xenial 16.04 (LTS)
+ Trusty 14.04 (LTS)

移除旧版本
```
sudo apt-get remove docker docker-engine docker.io
```

安装仓库
```
sudo apt-get update

#1
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

#2
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#3
sudo apt-key fingerprint 0EBFCD88

#4
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

安装
```
sudo apt-get update

sudo apt-get install docker-ce
```

测试
```
sudo docker run hello-world
```