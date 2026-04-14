; Write an 8086 assembly program to decrement a 32-bit number by 1
; and store the 32-bit result with final borrow

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
; [1208H] = final borrow (0000H or 0001H)

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV CX, 0000H        ; Clear CX (for final borrow)

MOV AX, [1200H]      ; Load lower word
SUB AX, 0001H        ; Decrement lower word
MOV [1204H], AX      ; Store lower word of result

MOV AX, [1202H]      ; Load higher word
SBB AX, 0000H        ; Subtract borrow from lower-word decrement
MOV [1206H], AX      ; Store higher word of result

JNC L1               ; If no final borrow, jump to L1
INC CX               ; Store final borrow = 1

L1:
MOV [1208H], CX      ; Store final borrow

HLT                  ; Stop execution
