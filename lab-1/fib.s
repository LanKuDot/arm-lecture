	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global recursive
	.type recursive, function

recursive:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

	@ R4 = R0 - 0 (update flags)
	subs r4, r0, #0		@ The same as cmp r0, #0
	@ if(R0 <= 0) goto .L3 (which returns 0)
	ble .L3

	@ Compare R4 wtih 1
	cmp r4, #1
	@ If R4 == 1 goto .L4 (which returns 1)
	beq .L4

	@ R0 = R4 - 1
	sub r0, r4, #1
	@ Recursive call to fibonacci with R4 - 1 as parameter
	bl recursive

	@ R5 = R0
	add r5, r0, #0
	@ R0 = R4 - 2
	sub r0, r4, #2
	@ Recursive call to fibonacci with R4 - 2 as parameter
	bl recursive

	@ R0 = R5 + R0 (update flags)
	add r0, r5

	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION
.L3:
	mov r0, #0			@ R0 = 0
	pop {r3, r4, r5, pc}		@ EPILOG

.L4:
	mov r0, #1			@ R0 = 1
	pop {r3, r4, r5, pc}		@ EPILOG

	.size recursive, .-recursive

	.global tail_recursive
	.type tail_recursive, function

tail_recursive:
	push {r3, r4, r5, lr}

	cmp r0, #0		@ level(r0) = 0, return prev
	beq .R_PREV 

	cmp r0, #1		@ level(r0) = 1, return cur
	beq .R_CUR

	sub r0, r0, #1	@ level(r0) - 1
	add r3, r1, r2	@ cur + prev
	mov r2, r1		@ prev(r2) = cur(r1)
	mov r1, r3	 	@ cur(r1) = prev(r2)+cur(r1)

	bl  tail_recursive

	pop {r3, r4, r5, pc}

.R_PREV:
	mov r0, r2
	pop {r3, r4, r5, pc}

.R_CUR:
	mov r0, r1
	pop {r3, r4, r5, pc}

	.size tail_recursive, .-tail_recursive

	.end
