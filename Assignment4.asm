L SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:L
ORG 1000H

START:
MOV AL,80H
OUT 1FH,AL

MOV AL,0FFH
OUT 19H,AL

MOV BX,04H


MOV SI,OFFSET DATA
L1:MOV AL,BYTE PTR CS:[SI]
OUT 1BH,AL

MOV CX,0FFFFH
L2:LOOP L2


MOV CX,0FFFFH
L3:LOOP L3


MOV CX,0FFFFH
L4:LOOP L4

INC SI
DEC BX
CMP Bx,0H
JE END
JMP L1

DATA:

DB 03H
DB 02H
DB 06H

END:
L ENDS
END START

DATA 