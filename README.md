# odroid-go-starter-kit

Based on https://medium.com/@jungpil.yu/esp-idf-based-development-environment-for-odroid-go-e27ff41b4adf

## Usage

Install ESP-IDF: https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/index.html#installation-step-by-step

Create your project based on this repo:

```bash
git clone --recursive git@github.com:concreted/odroid-go-starter-kit.git
cd odroid-go-starter-kit
```

Change all instances of `odroid-go-starter-kit` in the repo to your new project name.

Build code and flash your device. This is optimized for macOS. Change `COMPORT=/dev/cu.SLAB_USBtoUART` env var in the scripts used depending on your platform.
```bash
# Build only
bash build.sh

# Build and flash to firmware partition - compatible with https://github.com/ducalex/odroid-go-multi-firmware
bash flash.sh

# Alternatively, flash to replace entire firmware:
bash flash_all.sh

# Monitor stdout of the connected ESP32 in a different terminal:
bash monitor.sh

# Clean
rm -rf build
```

## Notes

Uses the https://github.com/hardkernel/ODROID-GO.git submodule. This is already included in the repo.
```bash
`git submodule add https://github.com/hardkernel/ODROID-GO.git components/odroid-go`
```
