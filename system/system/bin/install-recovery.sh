#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:042f565b27e3a00e3b307fd89cc6dc55b0bc7d2f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:2d40a8aafb1920314edb803424d2b1929f193d83 EMMC:/dev/block/bootdevice/by-name/recovery 042f565b27e3a00e3b307fd89cc6dc55b0bc7d2f 67108864 2d40a8aafb1920314edb803424d2b1929f193d83:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
