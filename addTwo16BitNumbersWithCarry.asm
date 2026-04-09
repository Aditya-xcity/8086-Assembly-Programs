; Write an 8086 assembly program to add two 16-bit numbers 
; and store the result along with carry

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for carry)

MOV AX, [1200H]      ; Load first number
MOV BX, [1202H]      ; Load second number

ADD AX, BX           ; Add numbers

JNC L1               ; If no carry, jump to L1

INC CX               ; If carry, increment CX

L1:
MOV [1206H], CX      ; Store carry
MOV [1204H], AX      ; Store result

HLT                  ; Stop execution