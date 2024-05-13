    area my,data,readwrite

X   EQU 5
Y   EQU 6
Z   EQU 8
    AREA MYDATA, code, READONLY
    EXPORT main
    EXPORT label
main
             MOV r0, #X
			 bl label
label
             mov  r0,#Y
			 bx lr 

STOP B STOP

    END
