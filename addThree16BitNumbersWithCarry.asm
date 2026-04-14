; Write an 8086 assembly program to add three 16-bit numbers
; and store the result along with carry

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

; Inputs:
; [1200H] = first number
; [1202H] = second number
; [1204H] = third number
; Outputs:
; [1208H] = 16-bit result
; [120AH] = carry (0000H or 0001H)

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for carry)

MOV AX, [1200H]      ; Load first number
ADD AX, [1202H]      ; Add second number
ADC AX, [1204H]      ; Add third number with carry from previous add

JNC L1               ; If no final carry, jump to L1
INC CX               ; If carry, increment CX

L1:
MOV [1208H], AX      ; Store result
MOV [120AH], CX      ; Store carry

HLT                  ; Stop execution
