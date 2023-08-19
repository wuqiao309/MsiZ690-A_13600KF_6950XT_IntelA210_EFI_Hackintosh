# 1.总的参考文档：(用了就能启动，非常OK)
https://github.com/Fu-Yuxuan-hub/Generic-EFI-for-H610-B660-Z690-B760-Z790/blob/main/README_CN.md


# 2. usb定制
https://bbs.pcbeta.com/viewthread-1929276-1-1.html <br/>
> 摘录 <br/>
> 一，使用USBToolBox定制https://github.com/USBToolBox <br/>
> 请下载tool和kext，推荐在win下打开定制工具，定制过程非常简单，使用USB2.0和USB3.0各一个U盘，把所有的接口都插一遍，然后导出map.kext，将该kext和之前下载的另一个kext，总共两个kext放入efi加载并重启系统。 <br/><br/>
> 二，使用hackintool完善 <br/>
> 使用usbtoolbox定制后如果没有操作错误，已经可以正常使用。 <br/><br/>
> 使用usbtoolbox定制会有两个问题， <br/>
> 一是usbtoolbox不会将蓝牙，摄像头，读卡器之类的硬件设置为内建，所以需要使用hackintlool把接口类型改为internal，然后导出usbport.kext，删除usbtoolbox的两个kext，启用usbport.kext。 <br/>
> 二是usbtoolbox可能会在oc升级后失效，所以使用hackintool导出usbport.kext是最好的方法。 <br/>

# 3. wifi
https://github.com/OpenIntelWireless/itlwm 有两个文件，勿同时使用，用名字长的0.0

# 5. i225-v网卡（总的参考里就有，以下为细节）
https://github.com/Fu-Yuxuan-hub/Generic-EFI-for-H610-B660-Z690-B760-Z790/wiki/AppleVTD_Simplified_Chinese

# 7. 蓝牙
- https://github.com/OpenIntelWireless/IntelBluetoothFirmware  有三个文件，inject只用于老版本，不要用
- https://github.com/acidanthera/BrcmPatchRAM 只要fixup
