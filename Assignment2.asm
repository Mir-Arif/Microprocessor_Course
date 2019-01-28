B SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: B
ORG 1000H
START:
;control register turn on
    MOV AL,80H
    OUT 1FH,AL
;turn of the segment display first 
   MOV AL,0FFH
   OUT 19H,AL

;G and R1 turn on
   	MOV AL,03H
  	OUT 1BH, AL

;for delay
	MOV CX,0FFFFH
	L1:LOOP L1
;for delay
	MOV CX,0FFFFH
	L2:LOOP L2
;for delay
	MOV CX,0FFFFH
	L3:LOOP L3
;for delay
	MOV CX,0FFFFH
	L4:LOOP L4
;for delay
	MOV CX,0FFFFH
	L5:LOOP L5

;r1 will turn off G will stay on
	MOV AL,02H
  	OUT 1BH, AL
;for delay
	MOV CX,0FFFFH
	L6:LOOP L6
;for delay
	MOV CX,0FFFFH
	L7:LOOP L7
;for delay
	MOV CX,0FFFFH
	L8:LOOP L8
;for delay
	MOV CX,0FFFFH
	L9:LOOP L9
;for delay
	MOV CX,0FFFFH
	L10:LOOP L10

;y and G will turn on
	MOV AL,06H
  	OUT 1BH, AL

B ENDS
END START