#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d0c6ad435c0a613c5678f5810e44f32ebd8badb9; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:ef8ccd4dd89e460e1e473de887ed274917c21e78 EMMC:/dev/block/bootdevice/by-name/recovery d0c6ad435c0a613c5678f5810e44f32ebd8badb9 67108864 ef8ccd4dd89e460e1e473de887ed274917c21e78:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
