# quirkbot-avr-gcc
Installs the platform specific AVR GCC toolchain used by the Quirkbot compiler.

# Automatically downloaded binaries (recommended)
The binaries are generated with
[npm-arduino-publisher](https://github.com/Quirkbot/npm-arduino-publisher.git).

# Manually downloaded binaries
The binaries are manually downloaded from [microship.com](https://www.microchip.com/mplab/avr-support/avr-and-arm-toolchains-c-compilers), and placed in the platform directories. After placing
the files in their respective tools > avr directories, a file named `builtin_tools_versions.txt`
is also placed there, with the content `arduino.avr-gcc=5.4.0-atmel3.6.2` so it
could be potentially used to integrate with Arduino.

After placing all the binaries for all platforms, run `sh fixsymlinks.sh` to
resolve the symlinks and use copies of the files instead.

# Remove unnecessary files
While trying to publish version 2.0.3, noticed that the process was always
failing with the error `413 Payload Too Large`. This error started to appear
because the newer versions of AVR GCC are way bigger.

In order to mitigate it, all library folders, except `avr5` were removed from
the folder `tools/avr/lib/gcc/avr/{version number}/`.

# Developers

**Never** deploy with `npm publish`! Use `npm run deploy` instead!
