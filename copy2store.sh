#!/bin/zsh

# 获取EFI标识
DISK_IDENTIFIER=`diskutil list | grep 'EFI' | grep -E 'disk0|disk1' | awk -F ' ' '{print $6}'`

# 挂载EFI
diskutil mount $DISK_IDENTIFIER
sleep 1

# 备份文件到硬盘
rm -rf '/Volumes/机械硬盘1/EFI-backup-usb'
cp -R /Users/wuqiao/IdeaProjects/MsiZ690-A_13600KF_6950XT_IntelA210_EFI/EFI '/Volumes/机械硬盘1/EFI-backup-usb'

# 更新EFI
cd '/Volumes/EFI'
rm -rf EFI
cp -R /Users/wuqiao/IdeaProjects/MsiZ690-A_13600KF_6950XT_IntelA210_EFI/EFI '/Volumes/EFI/EFI'

# 卸载EFI
# diskutil unmount $DISK_IDENTIFIER
