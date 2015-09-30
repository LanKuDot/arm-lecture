	.text
	.global add
add:
	add r0, r1, r0
	bx lr
	nop
	.type add, function
	.size add, .-add

	.global addCheckCarry
addCheckCarry:
	adds r1, r1, r0	@Discard the adding result: Must use adds to update CPSR
	bcc CflagNSet	@Branch: [CC] Carry flag clear
CflagSet:
	mov r0, #1
	bx lr
	nop
CflagNSet:
	mov r0, #0
	bx lr
	nop
	.type addCheckCarry, function
	.size addCheckCarry, .-addCheckCarry

	.global adc
adc:
	adds r1, r1, r2
	adc r0, r0, r2
	bx lr
	nop
	.type adc, function
	.size adc, .-adc
