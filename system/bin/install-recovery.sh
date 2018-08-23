#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3f4b3365a732a8dfc3cd33effc4255be0754cdf8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:5f05ea9219c8855f398b06d2a7faed10d619a9e1 EMMC:/dev/block/bootdevice/by-name/recovery 3f4b3365a732a8dfc3cd33effc4255be0754cdf8 67108864 5f05ea9219c8855f398b06d2a7faed10d619a9e1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
