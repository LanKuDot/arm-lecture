	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push {r3, r4, r5, r6, lr}

	mov r3, #0
	add r3, #4294967295         @ previous on r3, initialized with -1
	mov r4, #1                  @ result on r4, initialized with 1
	mov r5, #0                  @ i on r5, initialized with 0
	mov r6, #0                  @ sum on r6, initialized with 0

.L1: @ Loop start
	cmp r5, r0                  @ i <= x ?
	bgt .L2

	add r6, r4, r3              @ sum = result + previous
	mov r3, r4                  @ previous = result
	mov r4, r6                  @ result = sum

	add r5, #1                  @ ++i
	b   .L1

.L2: @ Return result
	mov r0, r4                  @ Return result
	pop {r3, r4, r5, r6, pc}	@EPILOG

	.size fibonacci, .-fibonacci
	.end
