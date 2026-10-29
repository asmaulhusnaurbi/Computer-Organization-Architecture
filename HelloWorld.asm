.MODEL SMALL
.STACK 100H
.DATA
 MSG DB 'Hello World$' ; '$' terminates the string
.CODE
MAIN PROC
 MOV AX, @DATA ; initialize data segment
 MOV DS, AX
 LEA DX, MSG ; DX = address of string
 MOV AH, 09H ; DOS function: print string
 INT 21H
 MOV AH, 4CH ; DOS function: exit
 INT 21H
MAIN ENDP
END MAIN
