.386
.MODEL FLAT, stdcall
.STACK 4096

.data
    answer DWORD 0
    counter DWORD 0


.code
main PROC

    mov eax, 0
    mov ebx, 1
    mov ecx, 0
    
    theLoop:

        test eax, 1 
        jz skip
        
        add ecx, eax

        skip:

        
        cmp eax, 0
        je start
        jne notstart
        

        start:
        mov eax, ebx
        add ebx, eax
        jmp therest
    
        notstart:
        xchg eax, ebx
        add ebx, eax


        therest:
        cmp eax, 1000000
        je end_loop
        jle theLoop
        
     
        
    end_loop:
        mov answer, ecx
    


    
main ENDP

END ; End of code segment
