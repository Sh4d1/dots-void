#!/bin/sh
if [ "${TERM:-none}" = "linux" ]; then
    printf "%b" "\\e]P00B2025"
    printf "%b" "\\e]P1A06A40"
    printf "%b" "\\e]P27D807F"
    printf "%b" "\\e]P3C79163"
    printf "%b" "\\e]P4087687"
    printf "%b" "\\e]P5527C84"
    printf "%b" "\\e]P6508A96"
    printf "%b" "\\e]P7c8c6c4"
    printf "%b" "\\e]P88c8a89"
    printf "%b" "\\e]P9A06A40"
    printf "%b" "\\e]PA7D807F"
    printf "%b" "\\e]PBC79163"
    printf "%b" "\\e]PC087687"
    printf "%b" "\\e]PD527C84"
    printf "%b" "\\e]PE508A96"
    printf "%b" "\\e]PFc8c6c4"

    # Fix artifacting.
    clear
fi
