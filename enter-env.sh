#!/bin/bash

if [ "x$1" = "xlm32" ]
then
    exec bash --rcfile <(echo '. ~/.bashrc; echo "Platform: $PLATFORM"; export PLATFORM=ice40_hx8k_b_evn CPU_VARIANT=minimal TARGET=base FIRMWARE=tinyusb; source scripts/enter-env.sh || exit 1') -i
elif [ "x$1" = "xvexriscv" ]
then
    exec bash --rcfile <(echo '. ~/.bashrc; echo "Platform: $PLATFORM"; export PLATFORM=ice40_hx8k_b_evn CPU_VARIANT=min CPU=vexriscv TARGET=base FIRMWARE=tinyusb; source scripts/enter-env.sh || exit 1') -i
else
    echo "No CPU specified"
    echo "Usage: $0 [lm32|vexriscv]"
    exit 1
fi
