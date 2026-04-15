; Write an 8086 assembly program to subtract two 16-bit numbers
; and store the result along with borrow

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for borrow)

MOV AX, [1200H]      ; Load minuend
MOV BX, [1202H]      ; Load subtrahend

SUB AX, BX           ; Subtract numbers

JNC L1               ; If no borrow, jump to L1
INC CX               ; If borrow, increment CX

L1:
MOV [1206H], CX      ; Store borrow
MOV [1204H], AX      ; Store result

HLT                  ; Stop execution