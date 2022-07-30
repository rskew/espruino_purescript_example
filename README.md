Example project running Purescript code on an ESP32 microcontroller via the Espruino javascript runtime.

This project assumes you have an ESP32 board connected on port `/dev/ttyUSB0`.

Install dependencies:
```sh
nix develop
npm ci
```
Build Purescript code and bundle into single javascript file:
``` sh
npm run build
```
Patch bundle to fix the javascript produced by Purescript/rollup to run on Espruino. Espruino fails executing `for (a in b) {` when b is `null`, so replace `b` here with `(b || [])`:
``` sh
npm run patch
```
Download Espruino firmware and unpack:
``` sh
npm run download-firmware
```
Flash ESP32 with Espruino firmware (NOTE: you'll need to update the filenames in the `flash-firmware` script in package.json, as the version changes frequently and older versions of "bootloader.bin" and "partitions_espruino.bin" are not available):
``` sh
npm run flash-firmware
```
Upload application bundle to the board, setting it to run on boot (takes ~3 minutes to transfer!):
``` sh
npm run flash-app
```
Press ctrl-c then ctrl-c to exit the espruino flashing program.

Connect serial console to board to see `console.log`s:
``` sh
npm run connect
```
Exit gnu screen by pressing ctrl-a then ctrl-\

Erase flash:

``` sh
npm run flash-erase
```
