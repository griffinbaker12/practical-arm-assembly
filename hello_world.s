.global _main
.align 2

.data
message:
    .ascii "Hello, World!\n"
    len = . - message

.text
_main:
    // Set up the parameters for write system call
    mov x0, #1          // File descriptor 1 is stdout
    adrp x1, message@PAGE
    add x1, x1, message@PAGEOFF  // Address of the message
    mov x2, #len        // Length of the message
    mov x16, #4         // System call number for write
    svc #0x80           // Make the system call

    // Exit the program
    mov x0, #0          // Exit status 0
    mov x16, #1         // System call number for exit
    svc #0x80           // Make the system call
