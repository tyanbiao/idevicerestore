编译 idevicerestore 库

```shell
./autogen.sh
./configure
make
sudo make install
sudo ldconfig
```

安装 dfukit

```shell
cp dfukit /usr/local/bin/dfukit
sudo chmod 755 /usr/local/bin/dfukit
```

运行 dfukit

```shell
dfukit
```

设置开机自启动
```shell
./dfukit_service.sh
```
