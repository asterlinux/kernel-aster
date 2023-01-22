#!/bin/sh


sudo apt install tar wget
sudo apt-get build-dep linux linux-image-$(uname -r)
sudo apt-get install libncurses-dev gawk flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf llvm
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.7.tar.xz
tar -xf linux-6.1.7.tar.xz
sudo chown -R $USER:$USER linux-6.1.7
cd linux-6.1.7
make mrproper
cp ../.config .
make
