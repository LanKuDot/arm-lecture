	.text
	.global rev
rev:
	rev r0, r0
	bx lr
	nop
	.type rev, function
	.size rev, .-rev

	.global revsh
revsh:
	revsh r0, r0
	bx lr
	nop
	.type revsh, function
	.size revsh, .-revsh
