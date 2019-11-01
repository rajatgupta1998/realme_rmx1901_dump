#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:32e63db9fba5967e5ae75cb1a082613161ed83e0; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:3f70983681180d2440685b44ec3303d413e677db EMMC:/dev/block/bootdevice/by-name/recovery 32e63db9fba5967e5ae75cb1a082613161ed83e0 67108864 3f70983681180d2440685b44ec3303d413e677db:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
