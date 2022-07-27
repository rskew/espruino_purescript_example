Flash:
---
```
esptool.py \
  --chip esp32 \
  --port /dev/ttyUSB0 \
  --baud 921600 \
  write_flash \
  -z \
  --flash_mode dio \
  --flash_freq 40m \
  0x1000 ./espruino_2v14.111_esp32/bootloader.bin \
  0x8000 ./espruino_2v14.111_esp32/partitions_espruino.bin \
  0x10000 ./espruino_2v14.111_esp32/espruino_esp32.bin
```

Connect
---
```
screen /dev/ttyUSB0 115200
```

Upload Code
---
```
cd purs
nix develop
npm ci
npm run build
npm run patch
npm run flash
```
