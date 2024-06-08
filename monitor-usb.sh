#!/bin/sh

# Catch USB connection events and restart the smartcard software.
# https://github.com/perguth/chromeos-welcome-to-estonia

USB_DIR="/dev/bus/usb"

inotifywait -m -r -e create --format '%w%f' "$USB_DIR" | while read -r; do
    echo "USB device connected, restarting pcscd"
    service pcscd restart
done
