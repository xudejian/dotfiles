#-drive file=ubuntu20.04.qcow2,if=virtio \

qemu-system-x86_64 \
  -snapshot \
  -machine type=q35,accel=hvf \
  -cpu host -smp 2 \
  -m 4G \
  -device intel-hda -device hda-duplex \
  -vga virtio -display default,show-cursor=on \
  -usb -device usb-tablet \
  -device e1000,netdev=net0 \
  -netdev user,id=net0,hostfwd=tcp::5555-:22 \
  $@
