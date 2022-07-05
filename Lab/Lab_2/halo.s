		THUMB
		AREA	DATA, ALIGN=4 
				
		AREA	|.text|, CODE, READONLY, ALIGN=2
		EXPORT  main
		   
main	NOP 
		MOV R0, #5		; Input Here
		MOV R1, #0		; counter
		MOV R2, #0		; even
		MOV R3, #0		; odd
loop	CMP R1, R0
		BGE exit
		ADD R1, R1 , #1
		ADD R3, R3, R1
		CMP R1, R0
		BGE exit
		ADD R1, R1 , #1
		ADD R2, R2, R1
		B loop
			

exit  	NOP

		ALIGN	  
		END