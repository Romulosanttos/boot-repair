#!/bin/bash
#created Rõmulo Santtos 26/01/2017

dnf -y install grub2 && dnf -y update grub2

mkdir /mnt 
mkdir /mnt/fedora
mount /dev/mapper/fedora-root /mnt/fedora
mount /dev/sda1 /mnt/fedora/boot

cd /mnt/fedora
mount -o bind /dev dev
mount -o bind /proc proc
mount -o bind /sys sys
mount -t tmpfs tmpfs tmp

$(chroot /mnt/fedora  | grub2-install /dev/sda | grub2-mkconfig -o /boot/grub2/grub.cfg)
echo "finish" 

