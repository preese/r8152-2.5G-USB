dnf install kernel kernel-devel gcc dkms
cp -r {r8152 source} /usr/src/r8152-{ver}
Copy Source to /usr/src/modname-version#
cp /usr/src/r8152-ver/dkms-files/dkms.conf /usr/src/r8152-ver/dkms-files/vmlinuxcopy.sh /usr/src/r8142-ver/
add dkms.conf file to the above dir too
add vmlinuxlinuxcopy.sh to same dir
#  add dracut.sh to same dir (might not be needed after first install)

sudo dkms add -m ixgbe -v 4.3.15   
   Add module to kernel tree
sudo dkms build -m ixgbe -v 4.3.15
   Build specified module against installed kernel
sudo dkms install -m ixgbe -v 4.3.15
  Install current module into kernel tree
(issue sudo dracut -f, the first run)

dkms status | grep (modulename)
  Check that it is installed 
modinfo (modulename)  
  to insure it is intalled

Always be sure both rpms are installed for new kernel
sudo yum install kernel kernel-devel


