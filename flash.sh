. $HOME/esp/esp-idf/export.sh

COMPORT=/dev/cu.SLAB_USBtoUART
BINNAME=odroid-go-starter-kit

idf.py build
esptool.py --chip esp32 --port $COMPORT --before default_reset --after hard_reset erase_region 0x100000 1048576 || exit
esptool.py --chip esp32 --port $COMPORT --baud 921600 --before default_reset --after hard_reset write_flash --flash_mode dio --flash_freq 80m --flash_size detect 0x100000 "build/$BINNAME.bin" || exit
