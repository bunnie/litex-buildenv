#!/bin/bash

if [ "x$1" = "xlm32" ]
then
    PLATFORM=ice40_hx8k_b_evn CPU_VARIANT=minimal TARGET=usb FIRMWARE=tinyusb ./scripts/download-env.sh
elif [ "x$1" = "xvexriscv" ]
then
    PLATFORM=ice40_hx8k_b_evn CPU_VARIANT=min CPU=vexriscv TARGET=usb FIRMWARE=tinyusb ./scripts/download-env.sh
else
    echo "No CPU specified"
    echo "Usage: $0 [lm32|vexriscv]"
    exit 1
fi
