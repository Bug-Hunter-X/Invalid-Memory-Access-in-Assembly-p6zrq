mov ecx, ebx   ;Store ebx in ecx for safety checks
add ecx, esi ;Add esi to ebx
imul esi, 4  ;multiply esi by 4
add ecx, esi ;add esi to ebx 
add ecx, 0x10 ;add 0x10

;Check the bounds of the memory address
cmp ecx, memory_limit  ;Compare calculated address with the memory limit
jge memory_error     ;Jump to error handler if address is out of bounds

mov eax, [ecx]      ;Access memory safely only if within limits

; ... rest of your code ...

memory_error:
;Handle the memory error (e.g., display an error message, exit the program)
mov eax, -1          ;Return error value
jmp end              ;Jump to the end

end: