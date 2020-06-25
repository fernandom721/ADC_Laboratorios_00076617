org 	100h

section .text

reset:	xor 	si, si 
lupi:	call 	kb
	cmp 	al, "$"
	
	mov	[300h+si], al 
    sub al, 30h  
	mov [210h+si], al 
    cmp 	si, 04h
    je      nota
	inc 	si
	jmp 	lupi

mostrar:
    
    call w_strng
    mov	byte [300h+si], "$"
    mov dx,300h
	call 	w_strng
	call 	kb
	int 	20h

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

kb: 	mov	ah, 7h
	int 	21h
	ret

w_strng:mov	ah, 09h
	mov 	dx, 300h
	int 	21h
	ret

nota: mov ax, [210h]
    add ax, [211h] 
    add ax, [212h]
    add ax, [213h]
    add ax, [214h]
    mov ah, 00h
    mov bl, 5d 
    div bl
    mov [220h], al
    
    mov dx, msg1 
    cmp al, 01h
    je w_strng

    mov dx, msg2
    cmp al, 02h
    je w_strng

    mov dx, msg3
    cmp al, 03h
    je w_strng

    mov dx, msg4
    cmp al, 04h
    je w_strng

    mov dx, msg5
    cmp al, 05h
    je w_strng

    mov dx, msg6
    cmp al, 06h
    je w_strng

    mov dx, msg7
    cmp al, 07h
    je w_strng

    mov dx, msg8
    cmp al, 08h
    je w_strng

    mov dx, msg9
    cmp al, 09h
    je w_strng

    mov dx, msg10
    cmp al, 0Ah
    je w_strng



section .data
msg1 	db 	" Solo necesito el 0 $"
nl1	db 	0xA, 0xD, "$"

section .data
msg2 	db 	" Aun se pasa $"
nl2	db 	0xA, 0xD, "$"

section .data
msg3 	db 	" Hay salud $"
nl3	db 	0xA, 0xD, "$"

section .data
msg4 	db 	" Me recupero $"
nl4	db 	0xA, 0xD, "$"

section .data
msg5 	db 	" En el segundo $"
nl5	db 	0xA, 0xD, "$"

section .data
msg6 	db 	" Peor es nada $"
nl6	db 	0xA, 0xD, "$"

section .data
msg7 	db 	" Muy bien $"
nl7	db 	0xA, 0xD, "$"

section .data
msg8 	db 	" Colocho $"
nl8	db 	0xA, 0xD, "$"

section .data
msg9 	db 	" Siempre me esfuerzo $"
nl9	db 	0xA, 0xD, "$"

section .data
msg10 	db 	" PERFECTO SOLO DIOS $"
nl10	db 	0xA, 0xD, "$"