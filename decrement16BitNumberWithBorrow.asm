; Write an 8086 assembly program to decrement a 16-bit number by 1
; and store the result along with borrow

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

; Input:
; [1200H] = 16-bit number
; Outputs:
; [1202H] = decremented result
; [1204H] = final borrow (0000H or 0001H)

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for final borrow)

MOV AX, [1200H]      ; Load number
SUB AX, 0001H        ; Decrement number
MOV [1202H], AX      ; Store decremented result

JNC L1               ; If no borrow, jump to L1
INC CX               ; Store final borrow = 1

L1:
MOV [1204H], CX      ; Store final borrow

HLT                  ; Stop execution
