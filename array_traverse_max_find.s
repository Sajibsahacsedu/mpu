    area my,data,readwrite

numbers dcd 1,2,3,4,5

    AREA MYDATA, code, READONLY
    EXPORT main
	EXPORT high_find
    
main
            ldr r5,=numbers
			mov r0,#0
			mov r1,#5
			mov r2,#5
			bl high_find
high_find
			
loop			
			ldr r3,[r5],#4
			cmp r3,r0
			bgt update
			subs r1,#1
			bne loop
	
update 
            mov r0,r3
			subs r1,#1
			bne loop
			bx lr


STOP B STOP

    END
