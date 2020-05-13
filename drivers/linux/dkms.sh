#!/bin/sh

dkms remove smsc9500/1.02.05 --all
rm -rf /usr/src/smsc9500-1.02.05

mkdir /usr/src/smsc9500-1.02.05
tar fxz lan9500_linux_1.02.05.tar.gz -C /usr/src/smsc9500-1.02.05
patch -p0 -d /usr/src < wcex-mcon.patch

rmmod -f smsc95xx
if ! grep -q "^blacklist[[:space:]]smsc95xx" /etc/modprobe.d/blacklist.conf ; then
  bash -c 'echo "blacklist smsc95xx" >> /etc/modprobe.d/blacklist.conf'
fi

if dkms status | grep -q "smsc9500" ; then
  dkms remove smsc9500/1.02.05 --all
fi
dkms install -m smsc9500 -v 1.02.05
modprobe smscusbnet smsc9500
