;Program to amplify values in an array by 20

	bra	start
	.org	$10
size	.byte	20
dsig	.byte	-80,-77,-60,-55,-44,-37,-33,-25,-20,-17,-15,-12,-5,-1,0,10,15,20,27,30
gain	.byte	12
	.org	$50

;--- Start program ---
Start 	ldx	#dsig
	ldab	size
loop	ldaa	0,x
	beq	zero
	bmi	minus
	bpl	pos

;sub routine if value is 0
zero	inx
	decb
	tstb
	beq	stop
	bra	loop

;sub routine if value is negative
minus	suba	gain
	staa	0,x
	inx	
	decb
	tstb
	beq	stop
	bra	loop

;sub routine if value is positive
pos	adda	gain
	staa	0,x
	inx
	decb
	tstb
	beq	stop
	bra 	loop
stop	.end
