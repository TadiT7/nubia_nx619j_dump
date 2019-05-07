#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f796f56ebc2be7cad8865f0870754049b3d63c30; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:6dd1b7b5419b1ef29b7c991b21fa61bbf6b5bf00 EMMC:/dev/block/bootdevice/by-name/recovery f796f56ebc2be7cad8865f0870754049b3d63c30 67108864 6dd1b7b5419b1ef29b7c991b21fa61bbf6b5bf00:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
