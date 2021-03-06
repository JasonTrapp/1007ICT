;Program to sort an array
	bra	start
	.org	$10
dataArr	.byte	2,5,7,4,3,0
i   	.byte	0
iAddr	.word	0
	.org	$20
j	.byte	0
jAddr	.word	0
k	.byte	0
kAddr	.word	0
	.org	$30
output	.byte	0
	.org	$50
;--- Start program ---
start	ldx	#dataArr ;load array into register X
loop	stx	kAddr
	ldaa	0,x 	;load element d into register A
	tsta	
	beq	stop	;test reg A
	staa	j
	stx	jAddr 	;if the value is 0 then end program
	jsr	iterate

;--- Sub-routine to iterate over array ---
iterate	inx	;increment x 
	ldab	0,x 	;store next value of x into reg B
	tstb		;test reg B
	beq	next	;goes back to loop when 0
	stab	i 	;stores B in i
	stx	iAddr
	cba		;compare reg A and B
	bmi	swap 	;branches if negative and swaps value
	bra 	iterate ;branches to iterate

swap 	ldx	iAddr	;load value of i into reg x
	staa	0,x	;staa 0,x
	tsta	
	ldx	jAddr	;now load up the left address, ldx jAddr
	stab	0,x
	ldaa	i	;stab 0,x
	bra 	iterate ;always branch to iterate

next	inc	k
	ldx	kAddr
	inx
	bra	loop
stop	.end
