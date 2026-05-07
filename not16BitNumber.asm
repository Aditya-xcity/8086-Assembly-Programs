; Write an 8086 assembly program to perform bitwise NOT on one 16-bit number
; and store the result

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load 16-bit number
NOT AX               ; Perform bitwise NOT
MOV [1202H], AX      ; Store result

HLT                  ; Stop execution