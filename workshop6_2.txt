	bra	start
	.org	$10
string	.str	"Jason"
	.org	$20
code	.byte	0
	
	.org	$30
start	ldaa	string
	eora	$2a
	staa	code
stop	.end
