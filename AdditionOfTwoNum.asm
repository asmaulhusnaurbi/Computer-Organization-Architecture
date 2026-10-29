.model small 
.stack 100h 
.data 
msg1 db 'Enter first number: $' 
msg2 db 0dh,0ah,'Enter second number: $' 
msg3 db 0dh,0ah,'Sum is: $' 
num1 db ? 
num2 db ? 
sum db ? 
.code 
main: 
mov ax,@data 
mov ds,ax 
mov ah,09h 
lea dx,msg1 
int 21h 
mov ah,01h 
int 21h 
sub al,30h 
mov num1,al 
mov ah,09h 
lea dx,msg2 
int 21h 
mov ah,01h 
int 21h 
sub al,30h 
mov num2,al 
mov al,num1 
add al,num2 
mov sum,al 
mov ah,09h 
lea dx,msg3 
int 21h 
mov al,sum 
add al,30h 
mov dl,al 
mov ah,02h 
int 21h 
mov ah,4ch 
int 21h 
end main 