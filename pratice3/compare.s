	.text
	.global cmp
cmp:
	cmp r0, r1
	mrs r0, apsr
	bx lr
	nop
	.type cmp, function
	.size cmp, .-cmp
