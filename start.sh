sudo su -c "apt update && apt upgrade -y && apt install vim htop neofetch rsync git python zsh -y"

git clone https://github.com/premot/cloud
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
cp cloud/.* . -r
chsh $USER -s /bin/zsh
#x86 version: https://distfiles.gentoo.org/releases/amd64/autobuilds/20230716T164653Z/stage3-amd64-openrc-20230716T164653Z.tar.xz
wget https://distfiles.gentoo.org/releases/arm64/autobuilds/20230716T231652Z/stage3-arm64-openrc-20230716T231652Z.tar.xz
sudo su -c "mkdir /mnt/gentoo && tar xpvf stage3-*.tar.xz -C /mnt/gentoo --xattrs-include='*.*' --numeric-owner && cp init.sh /mnt/gentoo/ && cp swap.sh /mnt/gentoo && sh mounts.sh"
