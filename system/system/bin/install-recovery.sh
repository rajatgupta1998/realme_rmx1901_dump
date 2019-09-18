#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d127fd4c7395de73670f213c96a2f8ff48ad103c; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:8ebd8e98538d3f42e29b3cdcc1989e844732db17 EMMC:/dev/block/bootdevice/by-name/recovery d127fd4c7395de73670f213c96a2f8ff48ad103c 67108864 8ebd8e98538d3f42e29b3cdcc1989e844732db17:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
