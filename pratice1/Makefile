CC = arm-linux-gnueabihf-gcc
AS = arm-linux-gnueabihf-as
CFLAGS = -O2 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects = pratice1.o add.o

default: pratice1

.PHONY: default clean

pratice1: $(objects)
	$(CC) -o $@ $^

pratice1.o: pratice1.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(AS) -o $@ $<

clean:
	rm -f $(objects) pratice1

qemu:
	qemu-arm -L /usr/arm-linux-gnueabihf ./pratice1
