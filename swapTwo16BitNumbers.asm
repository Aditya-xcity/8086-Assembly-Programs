; Write an 8086 assembly program to swap two 16-bit numbers
; stored at memory locations

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load first number
MOV BX, [1202H]      ; Load second number

XCHG AX, BX          ; Swap AX and BX

MOV [1200H], AX      ; Store swapped first number
MOV [1202H], BX      ; Store swapped second number

HLT                  ; Stop execution
