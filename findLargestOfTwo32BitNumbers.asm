; Write an 8086 assembly program to find the largest of two 32-bit numbers
; and store the larger value

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

; Inputs:
; [1200H] = lower word of first number
; [1202H] = higher word of first number
; [1204H] = lower word of second number
; [1206H] = higher word of second number
; Output:
; [1208H] = lower word of larger number
; [120AH] = higher word of larger number

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1202H]      ; Load higher word of first number
MOV BX, [1206H]      ; Load higher word of second number

CMP AX, BX           ; Compare higher words
JA L1                ; If first is larger, jump to L1
JB L2                ; If second is larger, jump to L2

MOV AX, [1200H]      ; Higher words are equal, compare lower words
MOV BX, [1204H]      ; Load lower word of second number
CMP AX, BX           ; Compare lower words
JAE L1               ; If first is larger or equal, jump to L1

L2:
MOV AX, [1204H]      ; Store lower word of second number
MOV BX, [1206H]      ; Store higher word of second number
JMP L3               ; Skip first number path

L1:
MOV AX, [1200H]      ; Store lower word of first number
MOV BX, [1202H]      ; Store higher word of first number

L3:
MOV [1208H], AX      ; Store lower word of larger number
MOV [120AH], BX      ; Store higher word of larger number

HLT                  ; Stop execution