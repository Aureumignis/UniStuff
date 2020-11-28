                LOC     Data_Segment
                GREG    @
X               BYTE    #ca
A				BYTE	#aa
B				BYTE	#f0
C				BYTE	#55
D				BYTE	#0f
G				BYTE	#55

                LOC     #100
x               IS      $0
a				IS		$1
b				IS		$2
c				IS		$3
d				IS		$4


Main            LDBU    x,X

				LDBU	a,A
				AND		$1,a,x

				LDBU	b,B
				AND		$2,b,x

				LDBU	c,C
				OR		$3,c,x

				LDBU	d,D
				OR		$4,d,x

				SL		$5,x,1
				SL		$6,x,2

				MUL		$7,x,8

				SR		$8,x,2

				AND		$10,x,#e0
				SR		$9,$10,3

                [...]
End             TRAP    0,Halt,0