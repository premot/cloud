source /etc/profile                                                                                         
export PS1="(chroot) ${PS1}"
emerge-webrsync
eselect profile set 4
#echo "dev-lang/rust" > /etc/portage/package.mask/zz
emerge rust-bin
emerge --ask --verbose --update --deep --newuse @world
