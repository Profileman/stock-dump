#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:9655630:824875dbacf0653c3488ceebe27326c1b8c1ba6a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:8926538:2c97154b68cb23b096dcc3f3b71316a3d00d0d0c EMMC:/dev/block/bootdevice/by-name/recovery 824875dbacf0653c3488ceebe27326c1b8c1ba6a 9655630 2c97154b68cb23b096dcc3f3b71316a3d00d0d0c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
