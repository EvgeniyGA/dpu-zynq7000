# dpu-zynq7000

prerequsites: Ububntu18.04.06, Vivado 2020.1, Petalinux 2019.2
```bash
make zynq-mini-xsa
```
```bash
make zynq-mini-lin
```
```bash
cd build/zynq-mini-lin
```
optional:
```bash
	petalinux-config -c rootfs
	petalinux-config -c kernel
	petalinux-build -c kernel -x finish
```
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
```bash
cp ./images/linux/BOOT.BIN /media/evgeny/BOOT/
```
```bash
cp ./images/linux/image.ub /media/evgeny/BOOT/
```
```bash
sudo tar xzf ./images/linux/rootfs.tar.gz -C /media/evgeny/rootfs/
```
```bash
sudo cp -r ../zynq7020_dnndk_v3.1/* /media/evgeny/rootfs/home/root/
```

via ssh:

cd zynq7020_dnndk_v3.1
./install.sh

cd yolo_pynqz2
make
./yolo_image dog.jpg
