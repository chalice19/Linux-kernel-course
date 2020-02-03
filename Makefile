obj-m += lkm.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
test:
	-rmmod lkm_example
	insmod lkm_example.ko
	dmesg
