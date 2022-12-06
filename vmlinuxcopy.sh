#!/bin/bash

if !(rpm -q --quiet dwarves) ; then
       dnf install dwarves -y
fi
cp /sys/kernel/btf/vmlinux /usr/lib/modules/`uname -r`/build/
cp 50-usb-realtek-net.rules /etc/udev/rules.d/
