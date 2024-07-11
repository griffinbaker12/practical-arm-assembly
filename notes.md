# 1
Register -> small storage located close to the processor for quick access
Top 6 registers (R0-R6) are general purpose 
R7 holds sys call # that tells processor which one we want to run
    - On 32-bit 
    - The general point though is that you load the sys call number into a certain register
sp -> next available location on the stack
pc -> incremented for every instruction we run
.global makes "_start" label visible outside the program for the linker
_start label contains certain location in memory
