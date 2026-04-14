; Write an 8086 assembly program to increment a 32-bit number by 1
; and store the 32-bit result with final carry

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

; Input:
; [1200H] = lower word of 32-bit number
; [1202H] = higher word of 32-bit number
; Outputs:
; [1204H] = lower word of result
; [1206H] = higher word of result
; [1208H] = final carry (0000H or 0001H)

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for final carry)

MOV AX, [1200H]      ; Load lower word
ADD AX, 0001H        ; Increment lower word
MOV [1204H], AX      ; Store lower word of result

MOV AX, [1202H]      ; Load higher word
ADC AX, 0000H        ; Add carry from lower-word increment
MOV [1206H], AX      ; Store higher word of result

JNC L1               ; If no final carry, jump to L1
INC CX               ; Store final carry = 1

L1:
MOV [1208H], CX      ; Store final carry

HLT                  ; Stop execution
