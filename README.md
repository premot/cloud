# cloud
a script to quickly deploy a gentoo chroot inside any debian-based box

setup:

sudo su -c "apt update && apt upgrade -y && apt install git

git clone https://github.com/premot/cloud && sh cloud/start.sh

once inside container; 

sh /init.sh

re-enter; 

sudo sh mounts.sh
