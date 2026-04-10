; Write an 8086 assembly program to find the largest of two 16-bit numbers
; and store the larger value

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

CMP AX, BX           ; Compare AX with BX
JNC L1               ; If AX >= BX, jump to L1

MOV AX, BX           ; Else move larger number to AX

L1:
MOV [1204H], AX      ; Store largest number

HLT                  ; Stop execution
