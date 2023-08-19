#!/bin/zsh

# 获取EFI标识
DISK_IDENTIFIER=`diskutil list | grep 'EFI' | grep -v disk0 | grep -v disk1 | awk -F ' ' '{print $6}'`

# 挂载EFI
diskutil mount $DISK_IDENTIFIER

# 进入目录
cd /Volumes/EFI

# 删除文件
rm -rf EFI

# 拷贝文件
cp -R /Users/wuqiao/IdeaProjects/MsiZ690-A_13600KF_6950XT_IntelA210_EFI/EFI /Volumes/EFI/EFI

# 卸载EFI
# diskutil unmount $DISK_IDENTIFIER
