; Write an 8086 assembly program to multiply two 16-bit numbers 
; and store the result (32-bit)

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load first 16-bit number into AX
MOV BX, [1202H]      ; Load second 16-bit number into BX

MUL BX               ; Unsigned multiply AX * BX
                     ; Result: DX:AX (DX = high, AX = low)

MOV [1204H], AX      ; Store lower 16 bits
MOV [1206H], DX      ; Store upper 16 bits

HLT                  ; Stop execution