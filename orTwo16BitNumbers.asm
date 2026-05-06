; Write an 8086 assembly program to perform bitwise OR on two 16-bit numbers
; and store the result

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

ORG 2000H

MOV AX, 0000H        ; Clear AX
MOV DS, AX           ; Initialize DS

MOV AX, [1200H]      ; Load first 16-bit number into AX
MOV BX, [1202H]      ; Load second 16-bit number into BX

OR AX, BX            ; Bitwise OR: AX = AX OR BX

MOV [1204H], AX      ; Store result

HLT                  ; Stop execution
