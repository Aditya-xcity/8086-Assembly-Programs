; Write an 8086 assembly program to subtract two 32-bit numbers
; and store the 32-bit result with borrow

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for final borrow)

MOV AX, [1200H]      ; Load lower word of first number
MOV BX, [1204H]      ; Load lower word of second number
SUB AX, BX           ; Subtract lower words
MOV [1208H], AX      ; Store lower word of result

MOV AX, [1202H]      ; Load higher word of first number
MOV BX, [1206H]      ; Load higher word of second number
SBB AX, BX           ; Subtract higher words with borrow
MOV [120AH], AX      ; Store higher word of result

JNC L1               ; If no final borrow, jump to L1
INC CX               ; Store borrow = 1

L1:
MOV [120CH], CX      ; Store final borrow

HLT                  ; Stop execution
