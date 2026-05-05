; Write an 8086 assembly program to increment a 16-bit number by 1
; and store the result along with carry

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

; Input:
; [1200H] = 16-bit number
; Outputs:
; [1202H] = incremented result
; [1204H] = final carry (0000H or 0001H)

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for final carry)

MOV AX, [1200H]      ; Load number
ADD AX, 0001H        ; Increment number
MOV [1202H], AX      ; Store incremented result

JNC L1               ; If no carry, jump to L1
INC CX               ; Store final carry = 1

L1:
MOV [1204H], CX      ; Store final carry

HLT                  ; Stop execution
