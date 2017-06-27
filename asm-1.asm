	bra	start
	.org	$10
x	.byte	3
y	.byte	5
temp	.byte	0
	 .org	$20
output	.byte	0
	.org	$50
start	ldaa	x	
	adda	x
	ldab	y
	addb	y
	addb	y
	stab	temp
	oraa	temp
	coma
	staa	output
	bra	stop
stop	.end
