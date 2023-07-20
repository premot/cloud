fallocate -l 12GiB swapfile
chmod 600 swapfile
mkswap swapfile
swapon swapfile
swapon --show
