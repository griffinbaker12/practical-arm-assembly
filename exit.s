.global _start

.align 2 .global _start
.text
_main:
    # move the value 42 into register x0
    mov x0, #42     
    # move sys call number for exit into register x16
    mov x16, #0x01
    # signal to kernel we want to pass over execution 
    svc 0
