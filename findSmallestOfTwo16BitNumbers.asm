; Write an 8086 assembly program to find the smallest of two 16-bit numbers
; and store the smaller value

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

; Inputs:
; [1200H] = first number
; [1202H] = second number
; Output:
; [1204H] = smallest number

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load first number
MOV BX, [1202H]      ; Load second number

CMP AX, BX           ; Compare AX with BX
JC L1                ; If AX < BX, AX is already smaller
MOV AX, BX           ; Else BX is smaller (or equal)

L1:
MOV [1204H], AX      ; Store smallest number

HLT                  ; Stop execution
