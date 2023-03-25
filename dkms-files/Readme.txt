dnf -y install kernel kernel-devel gcc dkms git
git clone https://github.com/preese/r8152-2.5G-USB.git
cd r8152-2.5G-USB/
mkdir /usr/src/r8152-2.16.3
cp -r * /usr/src/r8152-2.16.3/

dkms add -m r8152 -v 2.16.3
dkms build -m r8152 -v 2.16.3
dkms install -m r8152 -v 2.16.3
./dkms-files/dracut.sh

dkms status | grep r8152
  Check that it is installed 
modinfo r8152
  to insure it is installed
