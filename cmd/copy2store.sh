#!/bin/zsh

# 获取EFI标识
DISK_IDENTIFIER=`diskutil list | grep 'EFI' | grep -E 'disk0|disk1' | awk -F ' ' '{print $6}'`

# 挂载EFI
sudo diskutil mount $DISK_IDENTIFIER
sleep 1

# 备份文件到硬盘
rm -rf '/Users/wuqiao/Desktop/EFI-backup-usb'
cp -R /Volumes/EFI/EFI '/Users/wuqiao/Desktop/EFI-backup-usb'

# 更新EFI
cd '/Volumes/EFI'
rm -rf ./*
cp -R /Users/wuqiao/IdeaProjects/MsiZ690-A_13600KF_6950XT_IntelA210_EFI_Hackintosh/EFI '/Volumes/EFI/EFI'

# 卸载EFI
# diskutil unmount $DISK_IDENTIFIER
