Testowany na Linux Ubuntu

Włączenie Trybu Uprzywilejowanego:
    sudo su root

Wymagane Oprogramowanie:
    apt install nasm
    apt install qemu-system
    apt install qemu-system-x86
    apt install virtualbox
  
Instalacja Środowiska Graficznego:
    apt update
    apt install task-xfce-desktop
    systemctl set-default graphical.target

Budowanie programu: 
    nasm bootloader.asm -f bin -o bootloader
    truncate -s 1M bootloader
    VBoxManage convertfromraw bootloader bootloader.vdi --format VDI
    gcc -m32 -ffreestanding -c kernel.c -o kernel.o
    ld -melf_i386 -T linker.ld -nostdlib --nmagic -o kernel.elf kernel.o
    objcopy -O binary kernel.elf kernel.bin
    dd if=kernel.bin of=bootloader bs=512 seek=1 conv=notrunc
    
Uruchamianie Systemu:
    nasm bootloader.asm -f bin -o bootloader.bin
    qemu-system-x86_64 bootloader.bin
