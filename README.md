# quirkbot-avr-gcc
Installs the platform specific AVR GCC toolchain used by the Quirkbot compiler.

The binaries are manually downloaded from [microship.com](https://www.microchip.com/mplab/avr-support/avr-and-arm-toolchains-c-compilers), and placed in the platform directories. After placing
the files in their respective tools > avr directories, a file named `builtin_tools_versions.txt`
is also placed there, with the content `arduino.avr-gcc=5.4.0-atmel3.6.2` so it
could be potentially used to integrate with Arduino.

After placing all the binaries for all platforms, run `sh fixsymlinks.sh` to
resolve the symlinks and use copies of the files instead.

# Developers

**Never** deploy with `npm publish`! Use `npm run deploy` instead!
