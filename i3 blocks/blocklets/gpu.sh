#!/bin/bash
temp1=$(nvidia-smi -q -a | grep -i "GPU Current" | grep "[0-9]*" -o | sed -n 1p)
echo "$temp1°C"

