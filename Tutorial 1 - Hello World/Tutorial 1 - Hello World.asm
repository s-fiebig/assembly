.686
.model flat,c
.stack 100h
 
.data
msg     db "Hello World!",0
 
.code
includelib MSVCRT
extrn printf:near
extrn exit:near
 
public main
main proc
        push    offset msg
        call	printf
        push    0
        call	exit
main endp
 
end main