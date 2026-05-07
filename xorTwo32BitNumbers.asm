; Write an 8086 assembly program to perform bitwise XOR on two 32-bit numbers
; and store the 32-bit result

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load lower word of first number
MOV BX, [1204H]      ; Load lower word of second number
XOR AX, BX           ; Bitwise XOR on lower words
MOV [1208H], AX      ; Store lower word of result

MOV AX, [1202H]      ; Load higher word of first number
MOV BX, [1206H]      ; Load higher word of second number
XOR AX, BX           ; Bitwise XOR on higher words
MOV [120AH], AX      ; Store higher word of result

HLT                  ; Stop execution