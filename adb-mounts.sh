busybox mount --types proc /proc /data/data/mnt/proc
busybox mount --rbind /sys /data/data/mnt/sys
busybox mount --make-rslave /data/data/mnt/sys
busybox mount --rbind /dev /data/data/mnt/dev
busybox mount --make-rslave /data/data/mnt/dev
busybox mount --bind /run /data/data/mnt/run
busybox mount --make-slave /data/data/mnt/run
busybox cp /etc/resolv.conf /data/data/mnt/etc/resolv.conf
busybox chroot /data/data/mnt /bin/bash

#busybox mount -r -w -t ext2 /dev/block/mmcblk0p1 /data/data/mnt
#busybox mount -r -w -t ext3 /dev/block/mmcblk1p3 /data/data/mnt
#busybox mount -r -w -t ext4 /dev/block/mmcblk1p4 /data/data/mnt
#busybox mount -r -w -t btrfs /dev/block/mmcblk1p5 /data/data/mnt
#ls /data/data/mnt
#busybox sh /data/data/mnt/adb-mounts.sh
#losetup /dev/block/loop0 /data/data/mnt/recovery-cwm6049-atlas40.img
