org 	100h

section .text

	call 	grafico	; Llamada a iniciar modo grafico 13h

	xor 	si, si
	xor 	di, di


	mov 	si, 25d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_v

	mov 	si, 25d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_h

	mov 	si, 50d ; X -> Columna
	mov 	di, 50d ; Y -> Fila
	call 	linea_h

	mov 	si, 50d ; X -> Columna
	mov 	di, 100d ; Y -> Fila
	call 	linea_v

	mov 	si, 100d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_v_s

	mov 	si, 50d ; X -> Columna
	mov 	di, 50d ; Y -> Fila
	call 	linea_v_s2

	mov 	si, 75d ; X -> Columna
	mov 	di, 75d ; Y -> Fila
	call 	linea_v_s3

	mov 	si, 50d ; X -> Columna
	mov 	di, 75d ; Y -> Fila
	call 	linea_h_s2

	mov 	si, 50d ; X -> Columna
	mov 	di, 100d ; Y -> Fila
	call 	linea_h_s2

	mov 	si, 25d ; X -> Columna
	mov 	di, 150d ; Y -> Fila
	call 	linea_h_s3


	call 	kb		; Utilizamos espera de alguna tecla

	int 	20h

grafico:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1010b
	int 	10h
	ret

linea_h: 
lupi_h:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 100d
	jne 	lupi_h
	ret



linea_v:
lupi_v:	mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 150d
	jne 	lupi_v
	ret

linea_h_s: 
lupi_h_s:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 25d
	jne 	lupi_h_s
	ret

linea_h_s2: 
lupi_h_s2:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 75d
	jne 	lupi_h_s2
	ret

linea_h_s3: 
lupi_h_s3:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 50d
	jne 	lupi_h_s3
	ret

linea_v_s:
lupi_v_s:	mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 50d
	jne 	lupi_v_s
	ret

linea_v_s2:
lupi_v_s2:	mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 75d
	jne 	lupi_v_s2
	ret

linea_v_s3:
lupi_v_s3:	mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 100d
	jne 	lupi_v_s3
	ret
	


kb: 	mov	ah, 00h
	int 	16h
	ret

section .data