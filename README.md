# dpu-zynq7000

prerequsites: Ububntu18.04.06, Vivado 2020.1, Petalinux 2019.2

make zynq-mini-xsa
make zynq-mini-lin

cd build/zynq-mini-lin
optional:
	petalinux-config -c rootfs
	petalinux-config -c kernel
	petalinux-build -c kernel -x finish
 ```bash
petalinux-build
```
```bash
petalinux-package --boot --force --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/*.bit --u-boot
```
```bash
petalinux-package --bsp -p ./ -o pynq-z2-dpu.bsp
```

128MB partition called "BOOT" with file system FAT32;
Partition called "rootfs" with the rest of the storage space and with file system EXT4;

cp ./images/linux/BOOT.BIN /media/<user>/BOOT/
cp ./images/linux/image.ub /media/<user>/BOOT/

sudo tar xzf ./images/linux/rootfs.tar.gz -C /media/<user>/rootfs/
sudo cp -r ../zynq7020_dnndk_v3.1/* /media/<user>/rootfs/home/root/

in ssh:

cd zynq7020_dnndk_v3.1
./install.sh

cd yolo_pynqz2
make
./yolo_image dog.jpg
