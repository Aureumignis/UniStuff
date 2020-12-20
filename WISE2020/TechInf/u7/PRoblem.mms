                LOC     Data_Segment
                GREG    @
MIN             OCTA    0
MAX             OCTA    0
SUM             OCTA    0
LENGTH          OCTA    16
ARRAY           OCTA    -42,42,1337,-1337,1,2,3,4
                OCTA    5,6,7,8,9,10,11,12


                LOC     #100
len             IS      $0
arr             IS      $1
pos             IS      $2
end             IS      $3
min             IS      $4
max             IS      $5
sum             IS      $6
val             IS      $7
tmp             IS      $8

Main            LDO     len,LENGTH
                LDA     arr,ARRAY
                SET     max,0
                SET     min,0       % min = 0
                SUBU    min,min,1   % min = 0xffffffffffffffff
                SETH    tmp,#8000   % tmp = 0x8000000000000000
                XOR     min,min,tmp % min = 0x7fffffffffffffff
                SET     pos,0
                SET     sum,0
                SL      end,len,3
Loop            CMP     tmp,pos,end

%load var from array
				%LDO		%var aus dem array

%add to sum, compare to min/max und ändere min/max gegenbenfalls
				

%varcounter erhoehen

				BP		length,Loop
                
                JMP     Loop
End             STO     min,MIN
                STO     max,MAX
                STO     sum,SUM
                TRAP    0,Halt,0