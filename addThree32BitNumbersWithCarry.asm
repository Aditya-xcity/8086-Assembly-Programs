; Write an 8086 assembly program to add three 32-bit numbers
; and store the 32-bit result with carry

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
; [1208H] = lower word of third number
; [120AH] = higher word of third number
; Outputs:
; [120CH] = lower word of result
; [120EH] = higher word of result
; [1210H] = final carry (0000H or 0001H)

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for final carry)

MOV AX, [1200H]      ; Load lower word of first number
MOV BX, [1204H]      ; Load lower word of second number
ADD AX, BX           ; Add first two lower words
MOV BX, [1208H]      ; Load lower word of third number
ADD AX, BX           ; Add third lower word
MOV [120CH], AX      ; Store lower word of result

MOV AX, [1202H]      ; Load higher word of first number
MOV BX, [1206H]      ; Load higher word of second number
ADC AX, BX           ; Add first two higher words with carry
MOV BX, [120AH]      ; Load higher word of third number
ADC AX, BX           ; Add third higher word with carry
MOV [120EH], AX      ; Store higher word of result

JNC L1               ; If no final carry, jump to L1
INC CX               ; Store final carry = 1

L1:
MOV [1210H], CX      ; Store final carry

HLT                  ; Stop execution