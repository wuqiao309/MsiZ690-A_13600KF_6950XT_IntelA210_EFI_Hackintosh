# 1.总的参考文档：(用了就能启动，非常OK)
https://github.com/Fu-Yuxuan-hub/Generic-EFI-for-H610-B660-Z690-B760-Z790/blob/main/README_CN.md


# 2. usb定制
https://www.bilibili.com/video/BV1dg4y1g7Ww/?spm_id_from=333.337.search-card.all.click&vd_source=51c18c7c4de702a0bb889bc9c5c643b8
https://apple.sqlsec.com/6-%E5%AE%9E%E7%94%A8%E5%A7%BF%E5%8A%BF/6-1/  <br/>
https://bbs.pcbeta.com/viewthread-1929276-1-1.html <br/>

# 3. wifi
https://github.com/OpenIntelWireless/itlwm 有两个文件，勿同时使用，用名字长的0.0

# 5. i225-v网卡（总的参考里就有，以下为细节）
https://github.com/Fu-Yuxuan-hub/Generic-EFI-for-H610-B660-Z690-B760-Z790/wiki/AppleVTD_Simplified_Chinese

# 7. 蓝牙
- https://github.com/OpenIntelWireless/IntelBluetoothFirmware  有三个文件，inject只用于老版本，不要用
- https://github.com/acidanthera/BrcmPatchRAM 只要fixup

# 8. HiDPI
https://github.com/xzhih/one-key-hidpi/blob/master/README-zh.md

# 9.本人没做的可选优化
- [SSDT-EC-USBX.aml](https://dortania.github.io/Getting-Started-With-ACPI/Universal/ec-methods/manual.html#finding-the-acpi-path) for simpler / 更简洁
- [SSDT-PLUG-ALT.aml](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-PLUG-ALT.dsl) for simpler / 更简洁
- [SSDT-SBUS-MCHC.aml](https://dortania.github.io/Getting-Started-With-ACPI/Universal/smbus.html) for correct temperature, fan, voltage, ICH, etc readings / 正确的温度、风扇、电压、ICH 等读数
- [SSDT-HPET.aml](https://dortania.github.io/Getting-Started-With-ACPI/Universal/irq.html) for IRQ Conflicts (rarely used)  / IRQ 冲突（极少使用）
- [SSDT-RHUB.aml](https://github.com/dortania/Getting-Started-With-ACPI/blob/master/extra-files/compiled/SSDT-RHUB.aml) for USB (rarely used)  / USB（极少使用）
- [SSDT-DMAC.aml](https://github.com/Fu-Yuxuan-hub/General-EFI-for-H610-B660-Z690-B760-Z790/wiki/AppleVTD#step-1-add-ssdt-dmac) provides an interface between the bus and the input-output devices , share the bus with the processor to make the data transfer, speedups the memory operations by bypassing the involvement of the CPU  (rarely used) / 在总线和输入输出设备之间提供了一个接口，与处理器共享总线以进行数据传输，通过绕过CPU的参与来加快内存操作（极少使用）

# 工具箱
- [MaciASL](https://github.com/acidanthera/MaciASL) 
- [Hackintool](https://github.com/headkaze/Hackintool)
- [OCAuxiliaryTools](https://github.com/ic005k/OCAuxiliaryTools)
