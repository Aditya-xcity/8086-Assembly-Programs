; Write an 8086 assembly program to swap two 32-bit numbers
; stored at memory locations

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load lower word of first number
MOV BX, [1202H]      ; Load higher word of first number
MOV CX, [1204H]      ; Load lower word of second number
MOV DX, [1206H]      ; Load higher word of second number

MOV [1200H], CX      ; Store second number in first location
MOV [1202H], DX      ; Store second higher word in first location
MOV [1204H], AX      ; Store first number in second location
MOV [1206H], BX      ; Store first higher word in second location

HLT                  ; Stop execution