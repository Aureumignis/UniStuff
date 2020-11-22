		LOC 	Data_Segment
		GREG 	@
A 		BYTE 	255
X 		BYTE 	0
B 		OCTA 	12345
SUM 	OCTA 	0

		LOC 	#100
addr 	IS 		$0
a 		IS 		$1
au 		IS 		$2
b 		IS 		$3
x 		IS 		$4
sum 	IS 		$5
tmp 	IS 		$6


Main 	LDA 	addr,A

		LDB 	a,A
		LDBU	au,A
		LDO 	b,B
		SET		x,48
		LDO		x,X
		ADD		sum,a,b
		STO		sum,SUM

End 	TRAP 	0,Halt,0