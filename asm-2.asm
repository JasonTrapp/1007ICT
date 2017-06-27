	bra	start
	.org	$10
m	.byte	3
n	.byte	5
temp	.byte	0
	 .org	$20
output	.byte	0
	.org	$50
start	ldaa	n	
	adda	n
	inca	
	staa	temp
	subb	temp	
	stab	output
	bra	stop
stop	.end
