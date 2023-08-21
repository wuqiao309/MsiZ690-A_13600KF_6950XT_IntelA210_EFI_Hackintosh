#!/bin/zsh

# 获取EFI标识
DISK_IDENTIFIER=`diskutil list | grep 'EFI' | grep -E 'disk0|disk1' | awk -F ' ' '{print $6}'`

# 挂载EFI
diskutil mount $DISK_IDENTIFIER
sleep 1

# 更新EFI
rm -rf /Users/wuqiao/IdeaProjects/MsiZ690-A_13600KF_6950XT_IntelA210_EFI/EFI
cp -R '/Volumes/EFI/EFI' /Users/wuqiao/IdeaProjects/MsiZ690-A_13600KF_6950XT_IntelA210_EFI/EFI

# 卸载EFI
# diskutil unmount $DISK_IDENTIFIER