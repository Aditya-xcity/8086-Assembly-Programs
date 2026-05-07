; Write an 8086 assembly program to perform bitwise NOT on one 32-bit number
; and store the result

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load lower word of number
NOT AX               ; Perform bitwise NOT on lower word
MOV [1204H], AX      ; Store lower word of result

MOV AX, [1202H]      ; Load higher word of number
NOT AX               ; Perform bitwise NOT on higher word
MOV [1206H], AX      ; Store higher word of result

HLT                  ; Stop execution