;Reverse & Print Vertically (Lowercase)
;ABC -> c
      ; b
      ; a
      
.model small
.stack 100h
.data

msg1 db 'Enter Three Letter in Uppercase : $'
nl db 0dh,0ah, '$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;display first line
    lea dx,msg1
    mov ah,09h
    int 21h 
    
    ;input 1st char
    mov ah,01h
    int 21h        
    mov bl,al
    
    ;input 2nd char
    mov ah,01h
    int 21h
    mov bh,al
    
    ;input 3rd char
    mov ah,01h
    int 21h
    mov cl,al
    
    ;new line
    lea dx,nl
    mov ah,09h
    int 21h  
    
    ;print 3rd char in lowercase
    add cl,20h
    mov dl,cl                  
    mov ah,02h
    int 21h
    
    ;new line
    lea dx,nl
    mov ah,09h
    int 21h
    
    ;print 2nd char in lowercase
    add bh,20h
    mov dl,bh
    mov ah,02h
    int 21h
    
    ;new line 
    lea dx,nl
    mov ah,09h
    int 21h
    
    ;print 1st char in lowercase
    add bl,20h
    mov dl,bl
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
      
    
    
             
            
    
    
    
    
    
    