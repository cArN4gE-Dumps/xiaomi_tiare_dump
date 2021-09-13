#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:21439748:35973483c3b28ac1773922dbee019116edaf7fca; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16667904:854b76e7be77a130bcd0db4bbfdd42b926ef4ab6 EMMC:/dev/block/bootdevice/by-name/recovery 35973483c3b28ac1773922dbee019116edaf7fca 21439748 854b76e7be77a130bcd0db4bbfdd42b926ef4ab6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
