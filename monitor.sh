. $HOME/esp/esp-idf/export.sh

COMPORT=/dev/cu.SLAB_USBtoUART
BINNAME=odroid-go-starter-kit

idf_monitor.py --port $COMPORT build/$BINNAME.elf
