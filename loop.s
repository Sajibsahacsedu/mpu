    area my,data,readwrite

numbers dcd 1,2,3,4,5 ;data 

    AREA MYDATA, code, READONLY
    EXPORT main
    
main
            ldr r5,=numbers
			mov r0,#0
			mov r1,#5
			mov r2,#5
			
loop			;loop basic 
			ldr r3,[r5],#4
			add r0,r3,r0
			subs r1,#1
			bne loop   ; if r1 becomes 0 then loop break 
	
	        sdiv r7,r0,r2


STOP B STOP

    END
