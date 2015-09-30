CC = arm-linux-gnueabihf-gcc
AS = arm-linux-gnueabihf-as
CFLAGS = -O2 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects = pratice2.o reverse.o

default: pratice2

.PHONY: default clean

pratice2: $(objects)
	$(CC) -o $@ $^

pratice2.o: pratice2.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(AS) -o $@ $<

clean:
	rm -f $(objects) pratice2

qemu:
	qemu-arm -L /usr/arm-linux-gnueabihf ./pratice2
