#!/bin/bash
set -xue

QEMU=qemu-system-riscv32

# Path to clang and compiler flags
CC=clang  # Ubuntu users: use CC=clang
CFLAGS="-std=c11 -O2 -g3 -Wall -Wextra --target=riscv32-unknown-elf -fuse-ld=lld -fno-stack-protector -ffreestanding -nostdlib"

# Build the kernel
$CC $CFLAGS -Wl,-Tkernel.ld -Wl,-Map=kernel.map -o kernel.elf \
    kernel.c common.c

# Start QEMU
$QEMU -machine virt -bios default -nographic -serial mon:stdio --no-reboot \
    -kernel kernel.elf


# Start QEMU com firmware baixado localmente
#codigo abaixo e pra usar no terminal
#wget https://github.com/qemu/qemu/raw/master/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin
#$QEMU -machine virt -bios ./opensbi-riscv32-generic-fw_dynamic.bin -nographic -serial mon:stdio --no-reboot \
#    -kernel kernel.elf