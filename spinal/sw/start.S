	.section .text
	.global start
	.global main

start:
	/* set stack pointer */
	lui sp,(128*1024)>>12

	/* jump to main C code */
	jal ra,main

	/* trap */
	ebreak

.org 0x20
irq: 
    j irq

