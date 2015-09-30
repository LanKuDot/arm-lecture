CC = arm-linux-gnueabihf-gcc
AS = arm-linux-gnueabihf-as
CFLAGS = -O2 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects = pratice3.o compare.o

default: pratice3

.PHONY: default clean

pratice3: $(objects)
	$(CC) -o $@ $^

pratice3.o: pratice3.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(AS) -o $@ $<

clean:
	rm -f $(objects) pratice3

qemu:
	qemu-arm -L /usr/arm-linux-gnueabihf ./pratice3
