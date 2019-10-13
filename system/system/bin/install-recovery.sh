#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:815bc0ee32aa28669b214c9511d09acea4fa831b; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e84e3f5c5f062b95475d178338b2c56148cfe4aa EMMC:/dev/block/bootdevice/by-name/recovery 815bc0ee32aa28669b214c9511d09acea4fa831b 67108864 e84e3f5c5f062b95475d178338b2c56148cfe4aa:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
