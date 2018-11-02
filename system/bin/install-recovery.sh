#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:fab148e0d44aaad2e6800a35ec4fb1cc366c78ef; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:68932baa7c6182834c9718507686ec69a8bbac62 EMMC:/dev/block/bootdevice/by-name/recovery fab148e0d44aaad2e6800a35ec4fb1cc366c78ef 67108864 68932baa7c6182834c9718507686ec69a8bbac62:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
