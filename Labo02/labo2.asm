org 100h ;necesario para ensamblar archivos .COM

mov     ax, 8A4Fh ;mov ah, 8Ah          mov al,4Fh
mov     bh, 5Dh
mov     cl, "A"
mov     [200h], ax; mov [200h], al mov [201h], ah

;200 201 202 203 204 205 206 207 208 209 20a 20b 20c 20d 20e 20f 210

mov     cl, "C"
mov [203h], cl
mov     cl, "A"
mov [204h], cl
mov     cl, "B"
mov [205h], cl
mov     cl, "A"
mov [206h], cl
mov     cl, "N"
mov [207h], cl
mov     cl, "A"
mov [208h], cl
mov     cl, "S"
mov [209h], cl

mov     cl, "N"
mov [218h], cl
mov     cl, "O"
mov [219h], cl

mov     cl, "E"
mov [223h], cl
mov     cl, "X"
mov [224h], cl
mov     cl, "I"
mov [225h], cl
mov     cl, "S"
mov [226h], cl
mov     cl, "T"
mov [227h], cl
mov     cl, "E"
mov [228h], cl

int 20h