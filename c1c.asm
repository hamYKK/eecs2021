s0: DC "Rectangle area calculation.\0"
s1: DC "Enter a:\0"
s2: DC "Enter b:\0"
s3: DC "Rectangle area="
s4: DC "area of the house"
	addi x5, x0, s0
	ecall x0, x5, 4 ;out info
	addi x5, x0, s1
	ecall x1, x5, 4 ;prompt a
	ecall x6, x0, 5 ;inp a
	addi x5, x0, s2
	ecall x1, x5, 4 ;prompt b
	ecall x7, x0, 5 ;inp b

	addi  x8, x0, s4 ; 
	ecall x9, x8, 4 ; prompt area
	ecall x9, x0, 5	; inp area
	mul x6, x6, x7 ;area=a*b
	mul x11, x6,x9 ; area * area input
	addi x5, x0, s3 ; 
	ecall x1, x5, 4 ;out area
	ecall x1, x11, 0 ;out result
