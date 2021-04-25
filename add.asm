.ORIG x3000
AND R0, R0, #0
ADD R0, R0, #1
LEA R1, init 
LDW R2, R1, #0
STW R0, R2, #0
LEA R1, total
LDW R2, R1, #0
LEA R1, start
LDW R3, R1, #0
AND R0, R0, #0


Loop LDB R4, R3, #0
	 ADD R0, R0, R4
	 ADD R3, R3, #1
	 ADD R2, R2, #-1
	 BRp Loop

STW  R0, R3, #0

init  .FILL x4000
total .FILL #20
start .FILL xC000 
