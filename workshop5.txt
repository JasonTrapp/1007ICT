        bra	start
	.org	$10
f	.byte	20
v	.byte	12
e       .byte  	30
        .org   	$20
output	.byte  	0
      	.org   	$50
start 	ldaa   	f
	adda   	v
	suba   	e
	staa   	output
        bra    	stop
stop    .end
