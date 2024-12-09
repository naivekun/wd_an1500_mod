# AN1500 modding tools and firmware

[README 中文](README.md)

refers to https://cyberbus.net/post/40

## 1. direct flash with my modded firmware

if you are lazy to do the mod and just want your AN1500 support RAID0/1/JBOD and UEFI menu

```
./flash_fw.sh ./an1500_backup_20241107_mod.bin
```

## 2. extract your AN1500 firmware, mod hbainfo and Option ROM

### backup firmware

```
./firmware_backup.sh an1500_backup.bin
```

and you may cut it into 7MB file according to the post or video

### flash firmware (with mnv_cli)

flashing firmware with this method is recommended

```
./flash_fw.sh an1500_backup.bin
```

### force flash firmware (with mvf)

if your card can't flash firmware with mnv_cli, you have to

1. enable `iomem=relaxed` in your kernel
2. flash firmware using mvf

```
./force_flash_fw.sh an1500_backup.bin
```

## 3. files

* `crc_fix.py` can fix 7MB firmware and calculate checksum, you have to replace checksum at the end of 7MB firmware
* `oprom_full.bin` is a functional option rom which is intented to replace at 0x60_0000 of 7MB firmware
* `hbainfo.bin` is the HBA info structure to unlock RAID0/1/JBOD, which is intended to replace at 0x2_0000 of 7MB firmware
