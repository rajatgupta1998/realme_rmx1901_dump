#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:623ff176264c0f4605c29e425c2ef66ddda4d110; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e76aa321e85e633051cbb12e334f6c0bfd92a95b EMMC:/dev/block/bootdevice/by-name/recovery 623ff176264c0f4605c29e425c2ef66ddda4d110 67108864 e76aa321e85e633051cbb12e334f6c0bfd92a95b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
