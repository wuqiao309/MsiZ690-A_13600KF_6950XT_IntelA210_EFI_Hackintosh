#!/bin/zsh

# 获取EFI标识
USB_IDENTIFIER=`diskutil list | grep 'EFI' | grep -v disk0 | grep -v disk1 | awk -F ' ' '{print $6}'`
DISK_IDENTIFIER=`diskutil list | grep 'EFI' | grep -E 'disk0|disk1' | awk -F ' ' '{print $6}'`

# 挂载EFI
diskutil mount $USB_IDENTIFIER
sleep 3
diskutil mount $DISK_IDENTIFIER

# 进入目录 删除文件
cd '/Volumes/EFI'
rm -rf EFI

# 进入目录 删除文件
cd '/Volumes/EFI 1'
rm -rf EFI

# 拷贝文件
cp -R /Users/wuqiao/IdeaProjects/MsiZ690-A_13600KF_6950XT_IntelA210_EFI/EFI '/Volumes/EFI/EFI'
cp -R /Users/wuqiao/IdeaProjects/MsiZ690-A_13600KF_6950XT_IntelA210_EFI/EFI '/Volumes/EFI 1/EFI'

# 卸载EFI
# diskutil unmount $DISK_IDENTIFIER
