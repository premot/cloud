busybox mount --types proc /proc /data/data/mnt/proc
busybox mount --rbind /sys /data/data/mnt/sys
busybox mount --make-rslave /data/data/mnt/sys
busybox mount --rbind /dev /data/data/mnt/dev
busybox mount --make-rslave /data/data/mnt/dev
busybox mount --bind /run /data/data/mnt/run
busybox mount --make-slave /data/data/mnt/run
busybox cp /etc/resolv.conf /data/data/mnt/etc/resolv.conf
busybox chroot /data/data/mnt /bin/bash
