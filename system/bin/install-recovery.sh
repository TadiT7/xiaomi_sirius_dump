#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:36d9e1b9a8f317989df8590d362017168f02a5fc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:59a78a833713bab3cd55fbdf7a27015843521a39 EMMC:/dev/block/bootdevice/by-name/recovery 36d9e1b9a8f317989df8590d362017168f02a5fc 67108864 59a78a833713bab3cd55fbdf7a27015843521a39:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
