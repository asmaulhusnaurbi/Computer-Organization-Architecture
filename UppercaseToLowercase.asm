.MODEL SMALL
.STACK 100H
.DATA
 MSG1 DB 'Enter an UPPERCASE letter: $'
 MSG2 DB 0DH,0AH,'Lowercase letter is : $'
.CODE
MAIN PROC
 MOV AX, @DATA
 MOV DS, AX
 LEA DX, MSG1 ; prompt
 MOV AH, 09H
 INT 21H
 MOV AH, 01H ; read one character -> AL
 INT 21H
 ADD AL, 20H ; 'A'(41H) + 20H = 'a'(61H)
 MOV BL, AL ; save result
 LEA DX, MSG2
 MOV AH, 09H
 INT 21H
 MOV DL, BL ; print converted character
 MOV AH, 02H
 INT 21H
 MOV AH, 4CH ; exit
 INT 21H
MAIN ENDP
END MAIN
