; Write an 8086 assembly program to divide two 16-bit numbers 
; and store quotient and remainder

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load dividend (16-bit)
MOV BX, [1202H]      ; Load divisor (16-bit)

MOV DX, 0000H        ; Clear DX (important for 16-bit division)

DIV BX               ; AX ÷ BX
                     ; Quotient → AX
                     ; Remainder → DX

MOV [1204H], AX      ; Store quotient
MOV [1206H], DX      ; Store remainder

HLT                  ; Stop execution