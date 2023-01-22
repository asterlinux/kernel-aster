#!/bin/sh


sudo apt install tar wget
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.7.tar.xz
tar -xf linux-6.1.7.tar.xz
sudo chown -R $USER:$USER linux-6.1.7
cd linux-6.1.7
make mrproper
cp /home/runner/work/kernel-aster/kernel-aster/.config .config
make -j2
make modules
