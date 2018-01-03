#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 15675392 0303d1710dc3ffa275f5aa68bd484bad3f63e71f 11251712 17b1dfa34b7eec1e9ae4314e8522d3f7b6ba8e0e
fi
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15675392:0303d1710dc3ffa275f5aa68bd484bad3f63e71f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:11251712:17b1dfa34b7eec1e9ae4314e8522d3f7b6ba8e0e EMMC:/dev/block/bootdevice/by-name/recovery 0303d1710dc3ffa275f5aa68bd484bad3f63e71f 15675392 17b1dfa34b7eec1e9ae4314e8522d3f7b6ba8e0e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
