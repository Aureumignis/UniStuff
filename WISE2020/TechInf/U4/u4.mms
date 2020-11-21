                LOC     Data_Segment
                GREG    @
A               OCTA    5
B               OCTA    -1
C               OCTA    3
X               OCTA    -7
Y               OCTA    2
Z               OCTA    11

                LOC     #100
addr            IS      $0
a               IS      $1
b               IS      $2
c               IS      $3
x               IS      $4
y               IS      $5
z               IS      $6
tmp1            IS      $7
tmp2            IS      $8

Main            LDA     addr,A
                ...
		%a)
				LDO		a,A
				LDO		b,B
				LDO		c,C
				LDO		x,X
				LDO		y,Y
				LDO		z,Z

		%b)
				ADD		$11,a,b
				SUB		$12,a,b
				MUL		$13,a,b
				DIV		$14,a,b

		%c)
				ADDU	$21,a,b
				SUBU	$22,a,b
				MULU	$23,a,b
				DIVU	$24,a,b
		%e)
				ADD		tmp1,a,b
				ADD		tmp2,x,y
				MUL		$31,tmp1,tmp2


				MUL		tmp1,b,c
				MUL		tmp2,x,y
				ADD		tmp1,a,tmp1
				SUB		tmp1,tmp1,tmp2
				SUB		tmp2,y,z
				MUL		tmp2,tmp2,c
				DIV		$32,tmp1,tmp2

				MUL		tmp1,x,x
				MUL		tmp1,tmp1,a
				MUL		tmp2,b,x
				ADD		tmp1,tmp1,tmp2
				ADD		$33,tmp1,c


End             TRAP    0,Halt,0