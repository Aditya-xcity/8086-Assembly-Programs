; Write an 8086 assembly program to find the smallest of two 32-bit numbers
; and store the smaller value

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
; [1208H] = lower word of smaller number
; [120AH] = higher word of smaller number

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1202H]      ; Load higher word of first number
MOV BX, [1206H]      ; Load higher word of second number

CMP AX, BX           ; Compare higher words
JB L1                ; If first is smaller, jump to L1
JA L2                ; If second is smaller, jump to L2

MOV AX, [1200H]      ; Higher words are equal, compare lower words
MOV BX, [1204H]      ; Load lower word of second number
CMP AX, BX           ; Compare lower words
JBE L1               ; If first is smaller or equal, jump to L1

L2:
MOV AX, [1204H]      ; Load lower word of second number
MOV BX, [1206H]      ; Load higher word of second number
JMP L3               ; Skip first number path

L1:
MOV AX, [1200H]      ; Load lower word of first number
MOV BX, [1202H]      ; Load higher word of first number

L3:
MOV [1208H], AX      ; Store lower word of smaller number
MOV [120AH], BX      ; Store higher word of smaller number

HLT                  ; Stop execution
