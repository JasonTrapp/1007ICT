	bra		start
	.org	$10
dataarr	.byte	$12,$5,$f,$3c,-1
	.org	$20
sum	.rmb	1
	
	.org	$30
start	ldx	#dataarr
sumLoop	ldab	0,x
	tstb
	bmi	endLoop
	aba
	inx
	bra	sumLoop
endLoop	staa	sum
	com	sum	
	bra	stop
stop	.end
