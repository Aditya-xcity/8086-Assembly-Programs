; Write an 8086 assembly program to add two 32-bit numbers
; with an external carry-in and store final carry

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
; [1208H] = carry-in (0000H or 0001H)
; Outputs:
; [120AH] = lower word of result
; [120CH] = higher word of result
; [120EH] = final carry (0000H or 0001H)

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for final carry)

MOV AX, [1200H]      ; Load lower word of first number
MOV BX, [1204H]      ; Load lower word of second number
ADD AX, BX           ; Add lower words

MOV BX, [1208H]      ; Load carry-in
ADD AX, BX           ; Add carry-in to lower word result
MOV [120AH], AX      ; Store lower word of result

MOV AX, [1202H]      ; Load higher word of first number
MOV BX, [1206H]      ; Load higher word of second number
ADC AX, BX           ; Add higher words with propagated carry
MOV [120CH], AX      ; Store higher word of result

JNC L1               ; If no final carry, jump to L1
INC CX               ; Store final carry = 1

L1:
MOV [120EH], CX      ; Store final carry

HLT                  ; Stop execution
