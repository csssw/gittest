#Makefile

obj-m := basicmem.o

#KDIR	:= /lib/modules/$(shell uname -r)/build
KDIR	:= /work/kernel-mds2450-3.0.22

all:
	make -C $(KDIR) SUBDIRS=$(PWD) modules
	$(CROSS_COMPILE)gcc -o 21_memtest basicmem.c
clean:
	make -C $(KDIR) SUBDIRS=$(PWD) clean
	rm -rf 21_memtest 
