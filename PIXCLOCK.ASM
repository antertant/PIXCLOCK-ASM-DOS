clock_data segment 'data'
    ; Date Data Segment
    Element_title_year db "System Date: "
    Year db 4 dup(0),'/'
    Mon db 2 dup(0),'/'
    Day db 2 dup(0),0ah,0dh,'$' 
    
    ; Time Data Segment (colon included)
    aElement_title_hour db "System Time: "
    aHour db 2 dup(0),':'
    aMin db 2 dup(0),':'
    aSec db 2 dup(0),'$' 
    
    ; Time Data Segment (colon not included)
    bElement_title_hour db "System Time: "
    bHour db 2 dup(0),' '
    bMin db 2 dup(0),' '
    bSec db 2 dup(0),'$'
    
    ; Temporary Time Data Segment
    Time_temp db 8 dup(0)    
                    
    ; Timer Data Segment (colon included)
    aElement_title_hourc db "Timer: "                
    aHour_c db 2 dup('0'),':' 
    aMin_c db 2 dup('0'),':'
    aSec_c db 2 dup('0'),'$'
    
    ; Timer Data Segment (colon not included)
    bElement_title_hourc db "Timer: "                
    bHour_c db 2 dup('0'),' ' 
    bMin_c db 2 dup('0'),' '
    bSec_c db 2 dup('0'),'$'
    
    ; Loading Animation Data Segment
    Load_col_count db 70
    Load_row_count db 10    
    
    ; Interruption Address Storage Data Segment
    kpcs dw 0
    kpip dw 0
    
    ; Custom Signal Bit Data Segment
    cflag db 0     ; Timer Start Signal
    pausef db 0    ; Timer Pause Signal
    quitf db 0     ; Timer Exit Signal
    
    ; Timer Data Segment
    counthz db 18   ; Accurate Second Counter (1CH is invoked 18.2 times per second)
    delay_count db 2 ; Accurate 100 Millisecond Counter
    
    ; String Data Segment
    Boundry1 db ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$"
    Title1 db "PixTimer V3.1 Powered by Haocheng Wu$"
    Quits1 db "Press 'c' to start timer. Press 'q' to quit. Press 'x' to reset timer.$"
    Quits2 db "Press 'p' to pause timer.                    Press 'r' to resume timer.$"
    Boundry2 db "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<$"
    Loads1_1 db "Welcome to PixTimer V3.1!$"
    Loads1_2 db "Programe Loading...$"
    Loads2 db "Programe Loading Completed!$" 
    Tail1 db "Copyright (C), Haocheng Wu @ BUPT 2018, All rights reserved.$"
    
    ; Drawing Auxiliary Data Segment
    tedt dw 1h,2h,3h,4h,5h,6h,7h,8h,9h,0ah,0bh
    pixlocal dw 80, 140, 200, 260, 320, 380, 440, 500
    pixtemp_local dw 0
    pixtemp_char db 0
    pixchange_flag db 0
    pixchange_temp db 0
    
    ; Number 1 Drawing
    Pixcr_w1 dw 14h, 00h,  0ah, 0ah,  14h, 0ah,  00h, 14h,  14h, 14h,  14h, 1eh,  14h, 28h,  14h, 32h,  0ah, 3ch,  14h, 3ch,  1eh, 3ch     
    Pixcr_w1_count db 11, 0
    Pixcr_g1 dw 1eh, 0,  1eh, 10,  1eh, 20,  1eh, 30,  1eh, 40,  1eh, 50,  28h, 60,  0ah, 70,  14h, 70,  1eh, 70
    Pixcr_g1_count db 10, 0
    
    ; Number 2 Drawing
    Pixcr_w2 dw 10, 00,  20, 00,  0, 10,  30, 10,  30, 20,  20, 30,  10, 40,  0, 50,  0, 60,  10, 60,  20, 60,  30, 60   
    Pixcr_w2_count db 12, 0
    Pixcr_g2 dw 30, 00,  40, 10,  40, 20,  30, 30,  20, 40,  10, 50,  40, 60,  0, 70,  10, 70,  20, 70,  30, 70
    Pixcr_g2_count db 11, 0
    
    ; Number 3 Drawing
    Pixcr_w3 dw 10, 00,  20, 00,  00, 10,  30, 10,  30, 20,  10, 30,  20, 30,  30, 40,  00, 50,  30, 50,  10, 60,  20, 60
    Pixcr_w3_count db 12, 0
    Pixcr_g3 dw 30, 00,  40, 10,  40, 20,  30, 30,  40, 40,  40, 50,  00, 60,  30, 60,  10, 70,  20, 70
    Pixcr_g3_count db 10, 0      
    
    ; Number 4 Drawing
    Pixcr_w4 dw 00, 00,  30, 00,  00, 10,  30, 10,  00, 20,  30, 20,  10, 30,  20, 30,  30, 30,  30, 40,  30, 50,  30, 60            
    Pixcr_g4 dw 40, 00,  40, 10,  40, 20,  40, 30,  40, 40,  40, 50,  40, 60,  30, 70
    Pixcr_w4_count db 12, 0
    Pixcr_g4_count db 8, 0 
    
    ; Number 5 Drawing
    Pixcr_w5 dw 00,00,  10,00,  20,00,  30,00,  00,10,  00,20,  10,20,  20,20,  30,30,  30,40,  00,50,  30,50,  10,60,  20,60 
    Pixcr_g5 dw 40,00,  10,10,  20,10,  30,10,  30,20,  40,30,  40,40,  40,50,  00,60,  30,60,  10,70,  20,70
    Pixcr_w5_count db 14, 0
    Pixcr_g5_count db 12, 0
    
    ; Number 6 Drawing
    Pixcr_w6 dw 10,00,  20,00,  00,10,  30,10,  00,20,  00,30,  10,30,  20,30,  00,40,  30,40,  00,50,  30,50,  10,60,  20,60
    Pixcr_g6 dw 30,00,  40,10,  30,20,  30,30,  40,40,  40,50,  00,60,  30,60,  10,70,  20,70
    Pixcr_w6_count db 14, 0
    Pixcr_g6_count db 10, 0
    
    ; Number 7 Drawing
    Pixcr_w7 dw 00,00,  10,00,  20,00,  30,00,  30,10,  30,20,  20,30,  20,40,  10,50,  10,60
    Pixcr_g7 dw 40,00,  40,10,  40,20,  30,30,  30,40,  20,50,  20,60,  10,70
    Pixcr_w7_count db 10, 0
    Pixcr_g7_count db 8, 0
    
    ; Number 8 Drawing
    Pixcr_w8 dw 10,00,  20,00,  00,10,  30,10,  00,20,  30,20,  10,30,  20,30,  00,40,  30,40,  00,50,  30,50,  10,60,  20,60
    Pixcr_g8 dw 30,00,  40,10,  40,20,  30,30,  40,40,  40,50,  00,60,  30,60,  10,70,  20,70
    Pixcr_w8_count db 14, 0
    Pixcr_g8_count db 10, 0
    
    ; Number 9 Drawing
    Pixcr_w9 dw 10,00,  20,00,  00,10,  30,10,  00,20,  30,20,  10,30,  20,30,  30,30,  30,40,  00,50,  30,50,  10,60,  20,60
    Pixcr_g9 dw 30,00,  40,10,  40,20,  40,30,  40,40,  40,50,  00,60,  30,60,  10,70,  20,70
    Pixcr_w9_count db 14, 0
    Pixcr_g9_count db 10, 0
    
    ; Number 0 Drawing
    Pixcr_w0 dw 10,00,  20,00,  00,10,  30,10,  00,20,  30,20,  00,30,  30,30,  00,40,  30,40,  00,50,  30,50,  10,60,  20,60
    Pixcr_g0 dw 30,00,  40,10,  40,20,  40,30,  40,40,  40,50,  00,60,  30,60,  10,70,  20,70
    Pixcr_w0_count db 14, 0
    Pixcr_g0_count db 10, 0
    
    ; Colon Drawing
    Pixcr_wa dw 10,10,  20,10,  10,20,  20,20,  10,50,  20,50,  10,60,  20,60
    Pixcr_ga dw 30,10,  30,20,  30,50,  30,60
    Pixcr_wa_count db 8, 0
    Pixcr_ga_count db 4, 0
    
    Pixcr_temp dw 3 dup(0)
    
    ; Number Drawing Sub-Program Data Segment
    pnum db 0
    pcol_n dw 0
    prow_n dw 0     
    
clock_data ends

clock_stack segment stack
    dw 256 dup(0)
clock_stack ends

code segment 'code'
    assume ds:clock_data, ss:clock_stack, cs:code
start:
    mov ax, clock_data
    mov ds, ax
    mov es, ax
    
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; Push Stack Protection Macro
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    Sprotect macro
        push ax
        push bx
        push cx
        push dx
        push si
        push di
    endm
    
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; Pop Stack Protection Cancellation Macro
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    Srelease macro
        pop di
        pop si
        pop dx
        pop cx
        pop bx
        pop ax
    endm
    
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; Number Picture Selection Macro
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    WrPVar macro num, col, row
        lea bx, pnum
        mov al, num
        mov [bx], al
        
        lea bx, pcol_n
        mov ax, col
        mov [bx], ax
        
        lea bx, prow_n
        mov ax, row
        mov [bx], ax
    endm
    
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; System Date Acquisition Macro Program
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    Get_Years macro
    
        mov ah,2AH
        int 21h
     
     ; Year Acquisition
        push dx
        push ax       ; Protect dx & ax

        mov ax, cx  
        mov cx, 0AH
        lea si, Year     ; Get Year Offset Address
        add si, 3

    GetYjp_y:
        xor dx, dx            ; clear dx
        div cx
        or dl, 30h            ; ASCII Transforamtion
        mov [si], dl          ; Save Year
        dec si
        and dx, 0fh           ; End Loop When Remainder is 0
        jnz GetYjp_y
    
        or ax, 30h
        mov [si], al    
    
    ; Recover ax and dx
        pop ax
        pop dx
        
    ; Month Acquisition
        
        lea si, Mon
        push dx
        
        mov cl, 0ah
        xor ax, ax
        mov al, dh  
        div cl
        or al, 30h
        or ah, 30h
        mov [si+1], ah
        mov [si], al             
         
        
    ; Day Acquisition
        
        lea si, Day
        pop dx
        
        mov cl, 0ah
        xor ax, ax
        mov al, dl  
        div cl
        or al, 30h
        or ah, 30h
        mov [si+1], ah
        mov [si], al       

    endm
    
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; System Time Acquisition Macro Program
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    Get_Time macro 
        
        mov ah, 2ch
        int 21h
     
    ; Hour Acquisition
        lea si, aHour
        xor ax, ax
        mov bl, 0ah
        mov al, ch
        div bl
        or al, 30h
        or ah, 30h
        mov [si+1], ah
        mov [si], al
        lea si, bHour
        mov [si+1], ah
        mov [si], al
    
    ; Minute Acquisition
        lea si, aMin
        xor ax, ax
        mov al, cl
        div bl
        or al, 30h
        or ah, 30h
        mov [si+1], ah
        mov [si], al
        lea si, bMin
        mov [si+1], ah
        mov [si], al
        
     ; Second Acquisition
        lea si, aSec
        xor ax, ax
        mov al, dh
        div bl
        or al, 30h 
        or ah, 30h
        mov [si+1], ah
        mov [si], al
        lea si, bSec
        mov [si+1], ah
        mov [si], al

    endm
    
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; Loading Animation Macro Program
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
Loadstick macro
    
    ; Loading Message

    mov ah, 02h
    mov bx, 1h
    mov dx, 0a1bh   ; Row 10 Column 28
    int 10h    
    
    lea dx, Loads1_1
    mov ah, 9
    int 21h
    
    mov ah, 02h
    mov bx, 1h
    mov dx, 0b1bh   ; Row 10 Column 28
    int 10h    
    
    lea dx, Loads1_2
    mov ah, 9
    int 21h
    
    ; Loading Bar
    mov bx, 10ah  ; Bar X Coordinate
    mov dx, 0cah  ; Bar Y Coordinate

loadp1:    
    mov ax, 0c0fh   
    mov cx, bx
    int 10h
    inc dx
    dec Load_row_count
    jnz loadp1
    mov byte ptr Load_row_count, 10
    mov dx, 0cah      ; Reset Y Coordinate
    inc bx
    
    mov delay_count, 2
load_lock1:    
    cmp delay_count, 1
    jne load_lock1
   
    dec Load_col_count    ; Loading Bar Length
    jnz loadp1
    
    ; Loading Completed Message
    mov ah, 02h
    mov bx, 1h
    mov dx, 0b1bh   ; Row 11 Column 28
    int 10h    
    
    lea dx, Loads2
    mov ah, 9
    int 21h
    
    mov counthz, 18
load_lock2:    
    cmp counthz, 1
    jne load_lock2
    
 endm    
    
    ; Change the Graphic Mode
    mov ax, 4f02h
    mov bx, 101h
    int 10h
    
    ;>>>>>>>>>>>>>>>>>>>>>>>
    ;    Initialization     
    ;<<<<<<<<<<<<<<<<<<<<<<<
    
    lea bx, cflag    ; Set Timer Starter Signal
    mov byte ptr[bx], 1
    mov byte ptr pausef, 1 ; Set Timer Pause Signal  
    
    ; Save Interruption Program
    mov ah, 35h
    mov al, 1ch
    int 21h
    mov kpip, bx
    mov kpcs, es ; Save Interruption Vector 1CH Address
    
    cli
    ; Load New Interruption Program
    push ds
    lea dx, counter_int
    mov ax, seg counter_int  
    mov ds, ax
    mov ax, 251ch
    int 21h
    pop ds
  
    sti
    
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>
    ;   End of Initialization
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<
    
    Loadstick
    
    ; Enable Super VGA Graph Card Mode
    mov ax, 4f02h
    mov bx, 101h
    int 10h

    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ;         Main Loop
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<
lp_main:

    ; Boarder and Title Display
    mov ah, 02h
    mov bx, 1h
    mov dx, 0100h  ; Row 2 Column 1
    int 10h
     
    lea dx, Boundry1
    mov ah, 9
    int 21h
    
    mov ah, 02h
    mov bx, 1h
    mov dx, 0316h  ; Row 4 Column 25
    int 10h
     
    lea dx, Title1
    mov ah, 9
    int 21h
    
    mov ah, 02h
    mov bx, 1h
    mov dx, 0800h  ; Row 9 Column 1
    int 10h
     
    lea dx, Boundry2
    mov ah, 9
    int 21h
    
    mov ah, 02h
    mov bx, 1h
    mov dx, 1c0ah  ; Row 29 Column 11
    int 10h
     
    lea dx, Tail1
    mov ah, 9
    int 21h
    
    ; Help Message Display
    mov ah, 02h
    mov bx, 1h
    mov dx, 0505h  ; Row 6 Column 5
    int 10h
       
    lea dx, Quits1
    mov ah, 9
    int 21h
    
    mov ah, 02h
    mov bx, 1h
    mov dx, 0605h  ; Row 7 Column 5
    int 10h
                       
    lea dx, Quits2
    mov ah, 9
    int 21h 

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>    
    ; System Date
    Get_years

    ; Display Position
    mov ah, 02h
    mov bx, 1h
    mov dx, 131ah  ; Row 16 Column 26
    int 10h
    
    ; String Display
    lea dx, Element_title_year
    mov ah, 9
    int 21h
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; System Time
          
    Get_time
    
    ; Address Variable Storage
    lea bx, Time_temp
    lea si, aHour
    lea di, pixlocal
    mov cx, 8    ; Loop 8 times
    
pixtime:    
    mov dl, [si]
    cmp dl, [bx]
    je pix_nochange  ; Numbers unchanged, don't refresh
    
    mov [bx], dl      ; Update temporary segment data
    mov pixtemp_char, dl ; Put number data into temporary variable
    mov dx, [di]
    mov pixtemp_local, dx  ; Put coordinate data into temporary variable
    
    ; Drawing
    WrPVar pixtemp_char, pixtemp_local, 0ceh ; Drawing Variables
    call Pixel_num                          ; Invoke Drawing sub-program
     
pix_nochange:    
    inc bx                             
    inc si
    inc di
    inc di
    loop pixtime
pixchange_pass2:
    
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; Timer
    ; Timer Position
    mov ah, 02h
    mov bx, 1h
    mov dx, 1420h  ; Row 18 Column 31
    int 10h
    
    ; String Display (colon included)
    cmp pausef, 1
    je own_ani_c   
    lea si, aSec_c
    inc si
    mov al, [si]
    xor ah, ah
    mov cl, 2
    div cl
    cmp ah, 0 
    je own_ani_c
    lea dx, bElement_title_hourc
    mov ah, 9
    int 21h
    jmp hour_end_c
own_ani_c:
    lea dx, aElement_title_hourc
    mov ah, 9
    int 21h
hour_end_c:
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
    
    mov ah, 0bh
    int 21h
    cmp al,0ffh
    je judge                ; Keyboard input detection
    jmp lp_main

end_main:
    mov byte ptr quitf, 1  ; quit signal
    call counter_end 
    dec quitf
    mov byte ptr cflag, 0  ; clear start signal      
    mov ax, 0003h          ; set display mode as words mode
    int 10h    
    mov ah, 4ch
    int 21h

    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; Push button switch cases
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<
judge:
    mov ah, 08h
    int 21h
    
    cmp al, 'c'
    je counter_start
    
    cmp al, 'x'
    je counter_ends
    
    cmp al, 'p'
    je counter_pause
    
    cmp al, 'r'
    je counter_restart
    
    cmp al, 'q'
    jne lp_main
    jmp end_main
counter_ends:
    call counter_end
    jmp lp_main
counter_pause:
    mov byte ptr pausef, 1
    jmp lp_main
counter_restart:
    mov byte ptr pausef, 0
    jmp lp_main    

    ;>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; Timer start sub-program
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<
counter_start:

    lea bx, cflag      ; Timer start signal
    mov byte ptr[bx], 1     
    
    cli
    ; Create Interruption program
    push ds
    lea dx, counter_int
    mov ax, seg counter_int  
    mov ds, ax
    mov ax, 251ch
    int 21h
    pop ds
  
    sti

counter_start_pass: 
    mov byte ptr pausef, 0      ; Timer start
    jmp lp_main
      

    ;>>>>>>>>>>>>>>>>>>>>>>>
    ; Timer end sub-program
    ;<<<<<<<<<<<<<<<<<<<<<<<
counter_end proc
    
    ; Timer register clearance
    lea bx, aHour_c
    mov byte ptr[bx], 30h
    mov byte ptr[bx+1], 30h
    mov byte ptr[bx+3], 30h
    mov byte ptr[bx+4], 30h
    mov byte ptr[bx+6], 30h
    mov byte ptr[bx+7], 30h
    
    lea bx, bHour_c
    mov byte ptr[bx], 30h
    mov byte ptr[bx+1], 30h
    mov byte ptr[bx+3], 30h
    mov byte ptr[bx+4], 30h
    mov byte ptr[bx+6], 30h
    mov byte ptr[bx+7], 30h
    
    mov byte ptr pausef, 1
       
    cli
    
    ; Interruption recovery
    push ds
    mov  dx, kpip
    mov  ax, kpcs
    mov  ds, ax
    mov  ax, 251ch
    int  21h
    pop  ds    

    sti
    ret
        
    counter_end endp

    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ; Create Interruption Program
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
counter_int:
    ; Variable protection
    push ax
    push bx   
        
    ; Timer progress
    dec delay_count       ; Don't recover bit when timer difference < 0.1s
    jz reset_delay_count  ; Jump into recover sub-program

cint_main:
    dec counthz
    jnz cint_endb       ; End when timer difference < 1s
    mov counthz, 18     ; Reset Timer
    cmp pausef, 1       ; Skip timer sub-program when pause signal is enabled
    je cintpass
    
    ; Second
    lea bx, aSec_c
    inc bx
    mov al, [bx]
    inc al
    mov [bx], al
    cmp byte ptr[bx], 3ah
    jne cint_enda
    mov byte ptr[bx], 30h
    mov al, [bx-1]
    inc al
    mov [bx-1], al
    cmp byte ptr[bx-1], 36h
    jne cint_enda
    mov byte ptr[bx-1], 30h
    ; Minute
    lea bx, aMin_c
    mov al, [bx+1]
    inc al
    mov [bx+1], al
    cmp byte ptr[bx+1], 3ah
    jne cint_enda
    mov byte ptr[bx+1], 30h
    mov al, [bx]
    inc al
    mov [bx], al
    cmp byte ptr[bx], 36h
    jne cint_enda
    mov byte ptr[bx], 30h
    ; Hour
    lea bx, aHour_c
    mov al, [bx+1]
    inc al
    mov [bx+1], al
    cmp byte ptr[bx+1], 3ah
    jne cint_enda
    mov byte ptr[bx+1], 30h 
    mov al, [bx]
    inc al
    mov [bx], al
    cmp byte ptr[bx], 3ah
    jne cint_enda
    mov byte ptr[bx], 30h

cint_enda:    
    ; Storage without colon
    lea bx, bSec_c
    inc bx
    mov al, [bx]
    inc al
    mov [bx], al
    cmp byte ptr[bx], 3ah
    jne cint_endb
    mov byte ptr[bx], 30h
    mov al, [bx-1]
    inc al
    mov [bx-1], al
    cmp byte ptr[bx-1], 36h
    jne cint_endb
    mov byte ptr[bx-1], 30h
    ; Minute
    lea bx, bMin_c
    mov al, [bx+1]
    inc al
    mov [bx+1], al
    cmp byte ptr[bx+1], 3ah
    jne cint_endb
    mov byte ptr[bx+1], 30h
    mov al, [bx]
    inc al
    mov [bx], al
    cmp byte ptr[bx], 36h
    jne cint_endb
    mov byte ptr[bx], 30h
    ; Hour
    lea bx, bHour_c
    mov al, [bx+1]
    inc al
    mov [bx+1], al
    cmp byte ptr[bx+1], 3ah
    jne cint_endb
    mov byte ptr[bx+1], 30h 
    mov al, [bx]
    inc al
    mov [bx], al
    cmp byte ptr[bx], 3ah
    jne cint_endb
    mov byte ptr[bx], 30h
    
    ; Timer range 0s - 99h59m59s
cintpass:    
cint_endb:
    pop bx
    pop ax
    iret

reset_delay_count:
    mov delay_count, 2
    jmp cint_main
    
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ;       Graphic Sub-program
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
Pixel_num proc
    
    Sprotect
    mov al, pnum           
    xor al, 31h
    jz pix1
    mov al, pnum           
    xor al, 32h       
    jz pix2
    mov al, pnum           
    xor al, 33h       
    jz pix3 
    mov al, pnum           
    xor al, 34h       
    jz pix4
    mov al, pnum           
    xor al, 35h       
    jz pix5
    mov al, pnum           
    xor al, 36h       
    jz pix6
    mov al, pnum           
    xor al, 37h       
    jz pix7
    mov al, pnum           
    xor al, 38h       
    jz pix8
    mov al, pnum           
    xor al, 39h       
    jz pix9
    mov al, pnum           
    xor al, 30h       
    jz pix0
    mov al, pnum           
    xor al, ':'       
    jz pixa
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ; Number 1
    ;<<<<<<<<<<<<<<<<<
   
pix1:    
    mov cx, pcol_n      
Sclearlp2_1:        
    
    mov dx, prow_n
        
Sclearlp1_1:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx     
    jne Sclearlp1_1
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_1
 
    lea bx, Pixcr_w1
pix1wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_1:
    lea si, tedt
pixw1_1:
    mov ax, 0c0eh
    mov cx, ds:[di+4]
    add cx, [si]         
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_1
    inc dx
    cmp dx, ds:[di]
    jne pixw2_1    
    
    dec Pixcr_w1_count
    jnz pix1wlp
    lea bx, Pixcr_w1_count
    mov byte ptr[bx], 11
    
    lea bx, Pixcr_g1
pix1glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_1:
    lea si, tedt
pixg1_1:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_1
    inc dx
    cmp dx, ds:[di]
    jne pixg2_1    
    
    dec Pixcr_g1_count
    jnz pix1glp
    lea bx, Pixcr_g1_count
    mov byte ptr[bx], 10 
    
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ;    Number 2
    ;<<<<<<<<<<<<<<<<<
    
pix2:    
    mov cx, pcol_n   
Sclearlp2_2:        
    
    mov dx, prow_n
        
Sclearlp1_2:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_2
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_2

    lea bx, Pixcr_w2
pix2wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_2:
    lea si, tedt
pixw1_2:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_2
    inc dx
    cmp dx, ds:[di]
    jne pixw2_2    
    
    dec Pixcr_w2_count
    jnz pix2wlp
    lea bx, Pixcr_w2_count
    mov byte ptr[bx], 12
    
    lea bx, Pixcr_g2
pix2glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_2:
    lea si, tedt
pixg1_2:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_2
    inc dx
    cmp dx, ds:[di]
    jne pixg2_2    
    
    dec Pixcr_g2_count
    jnz pix2glp
    lea bx, Pixcr_g2_count
    mov byte ptr[bx], 11
    
    Srelease
    ret 
    
    ;>>>>>>>>>>>>>>>>>
    ;    Number 3
    ;<<<<<<<<<<<<<<<<<
    
pix3:    
    mov cx, pcol_n
Sclearlp2_3:        
    
    mov dx, prow_n
        
Sclearlp1_3:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_3
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_3

    lea bx, Pixcr_w3
pix3wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_3:
    lea si, tedt
pixw1_3:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_3
    inc dx
    cmp dx, ds:[di]
    jne pixw2_3    
    
    dec Pixcr_w3_count
    jnz pix3wlp
    lea bx, Pixcr_w3_count
    mov byte ptr[bx], 12
    
    lea bx, Pixcr_g3
pix3glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_3:
    lea si, tedt
pixg1_3:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_3
    inc dx
    cmp dx, ds:[di]
    jne pixg2_3    
    
    dec Pixcr_g3_count
    jnz pix3glp
    lea bx, Pixcr_g3_count
    mov byte ptr[bx], 10 
    
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ;     Number 4
    ;<<<<<<<<<<<<<<<<<
   
pix4:    
    mov cx, pcol_n  
Sclearlp2_4:        
    
    mov dx, prow_n
        
Sclearlp1_4:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_4
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_4
 
    lea bx, Pixcr_w4
pix4wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_4:
    lea si, tedt
pixw1_4:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_4
    inc dx
    cmp dx, ds:[di]
    jne pixw2_4   
    
    dec Pixcr_w4_count
    jnz pix4wlp
    lea bx, Pixcr_w4_count
    mov byte ptr[bx], 12
    
    lea bx, Pixcr_g4
pix4glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_4:
    lea si, tedt
pixg1_4:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_4
    inc dx
    cmp dx, ds:[di]
    jne pixg2_4    
    
    dec Pixcr_g4_count
    jnz pix4glp
    lea bx, Pixcr_g4_count
    mov byte ptr[bx], 8
    
    Srelease
    ret 
    
    ;>>>>>>>>>>>>>>>>>
    ;     Number 5
    ;<<<<<<<<<<<<<<<<<
   
pix5:    
    mov cx, pcol_n   
Sclearlp2_5:        
    
    mov dx, prow_n
        
Sclearlp1_5:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_5
    inc cx
    mov ax, pcol_n       
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_5
 
    lea bx, Pixcr_w5
pix5wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_5:
    lea si, tedt
pixw1_5:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_5
    inc dx
    cmp dx, ds:[di]
    jne pixw2_5   
    
    dec Pixcr_w5_count
    jnz pix5wlp
    lea bx, Pixcr_w5_count
    mov byte ptr[bx], 14
    
    lea bx, Pixcr_g5
pix5glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_5:
    lea si, tedt
pixg1_5:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_5
    inc dx
    cmp dx, ds:[di]
    jne pixg2_5    
    
    dec Pixcr_g5_count
    jnz pix5glp
    lea bx, Pixcr_g5_count
    mov byte ptr[bx], 12
    
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ;   Number 6
    ;<<<<<<<<<<<<<<<<<

pix6:    
    mov cx, pcol_n    
Sclearlp2_6:        
    
    mov dx, prow_n
        
Sclearlp1_6:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_6
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_6
    
    lea bx, Pixcr_w6
pix6wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_6:
    lea si, tedt
pixw1_6:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_6
    inc dx
    cmp dx, ds:[di]
    jne pixw2_6   
    
    dec Pixcr_w6_count
    jnz pix6wlp
    lea bx, Pixcr_w6_count
    mov byte ptr[bx], 14
    
    lea bx, Pixcr_g6
pix6glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_6:
    lea si, tedt
pixg1_6:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_6
    inc dx
    cmp dx, ds:[di]
    jne pixg2_6    
    
    dec Pixcr_g6_count
    jnz pix6glp
    lea bx, Pixcr_g6_count
    mov byte ptr[bx], 10
    
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ;    Number 7
    ;<<<<<<<<<<<<<<<<<

pix7:    
    mov cx, pcol_n   
Sclearlp2_7:        
    
    mov dx, prow_n
        
Sclearlp1_7:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_7
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_7
    
    lea bx, Pixcr_w7
pix7wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_7:
    lea si, tedt
pixw1_7:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_7
    inc dx
    cmp dx, ds:[di]
    jne pixw2_7   
    
    dec Pixcr_w7_count
    jnz pix7wlp
    lea bx, Pixcr_w7_count
    mov byte ptr[bx], 10
    
    lea bx, Pixcr_g7
pix7glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_7:
    lea si, tedt
pixg1_7:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_7
    inc dx
    cmp dx, ds:[di]
    jne pixg2_7    
    
    dec Pixcr_g7_count
    jnz pix7glp
    lea bx, Pixcr_g7_count
    mov byte ptr[bx], 8
    
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ;  Number 8
    ;<<<<<<<<<<<<<<<<<

pix8:    
    mov cx, pcol_n   
Sclearlp2_8:        
    
    mov dx, prow_n
        
Sclearlp1_8:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_8
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_8
    
    lea bx, Pixcr_w8
pix8wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_8:
    lea si, tedt
pixw1_8:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_8
    inc dx
    cmp dx, ds:[di]
    jne pixw2_8   
    
    dec Pixcr_w8_count
    jnz pix8wlp
    lea bx, Pixcr_w8_count
    mov byte ptr[bx], 14
    
    lea bx, Pixcr_g8
pix8glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_8:
    lea si, tedt
pixg1_8:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_8
    inc dx
    cmp dx, ds:[di]
    jne pixg2_8    
    
    dec Pixcr_g8_count
    jnz pix8glp
    lea bx, Pixcr_g8_count
    mov byte ptr[bx], 10
    
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ;   Number 9
    ;<<<<<<<<<<<<<<<<<

pix9:
    mov cx, pcol_n 
Sclearlp2_9:        
    
    mov dx, prow_n
        
Sclearlp1_9:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_9
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_9
    
    lea bx, Pixcr_w9
pix9wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_9:
    lea si, tedt
pixw1_9:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_9
    inc dx
    cmp dx, ds:[di]
    jne pixw2_9   
    
    dec Pixcr_w9_count
    jnz pix9wlp
    lea bx, Pixcr_w9_count
    mov byte ptr[bx], 14
    
    lea bx, Pixcr_g9
pix9glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_9:
    lea si, tedt
pixg1_9:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_9
    inc dx
    cmp dx, ds:[di]
    jne pixg2_9    
    
    dec Pixcr_g9_count
    jnz pix9glp
    lea bx, Pixcr_g9_count
    mov byte ptr[bx], 10
    
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ;    Number 0
    ;<<<<<<<<<<<<<<<<<

pix0:    
    mov cx, pcol_n  
Sclearlp2_0:        
    
    mov dx, prow_n
        
Sclearlp1_0:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_0
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_0
    
    lea bx, Pixcr_w0
pix0wlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_0:
    lea si, tedt
pixw1_0:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_0
    inc dx
    cmp dx, ds:[di]
    jne pixw2_0   
    
    dec Pixcr_w0_count
    jnz pix0wlp
    lea bx, Pixcr_w0_count
    mov byte ptr[bx], 14
    
    lea bx, Pixcr_g0
pix0glp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_0:
    lea si, tedt
pixg1_0:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_0
    inc dx
    cmp dx, ds:[di]
    jne pixg2_0    
    
    dec Pixcr_g0_count
    jnz pix0glp
    lea bx, Pixcr_g0_count
    mov byte ptr[bx], 10
    
    Srelease
    ret
    
    ;>>>>>>>>>>>>>>>>>
    ;      Colon
    ;<<<<<<<<<<<<<<<<<

pixa:
    mov cx, pcol_n  
Sclearlp2_a:        
    
    mov dx, prow_n
        
Sclearlp1_a:    
    mov ax, 0c00h
    int 10h
    inc dx
    mov bx, prow_n
    add bx, 80
    cmp dx, bx 
    jne Sclearlp1_a
    inc cx
    mov ax, pcol_n
    add ax, 55
    cmp cx, ax
    jne Sclearlp2_a
    
    lea bx, Pixcr_wa
pixawlp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixw2_a:
    lea si, tedt
pixw1_a:
    mov ax, 0c0eh
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixw1_a
    inc dx
    cmp dx, ds:[di]
    jne pixw2_a   
    
    dec Pixcr_wa_count
    jnz pixawlp
    lea bx, Pixcr_wa_count
    mov byte ptr[bx], 8
    
    lea bx, Pixcr_ga
pixaglp:
    mov di, [bx]
    add di, pcol_n
    push di
    inc bx
    inc bx
    mov di, [bx]
    add di, prow_n
    push di
    mov di, [bx]
    add di, prow_n
    add di, 10
    push di
    inc bx
    inc bx
    lea di, Pixcr_temp
    pop ds:[di]
    pop ds:[di+2]
    pop ds:[di+4]
    
    mov dx, ds:[di+2]
pixg2_a:
    lea si, tedt
pixg1_a:
    mov ax, 0c08h
    mov cx, ds:[di+4]    
    add cx, [si]
    int 10h
    inc si
    inc si
    cmp [si], 11
    jne pixg1_a
    inc dx
    cmp dx, ds:[di]
    jne pixg2_a    
    
    dec Pixcr_ga_count
    jnz pixaglp
    lea bx, Pixcr_ga_count
    mov byte ptr[bx], 4
    
    Srelease
    ret                                                             
    
    Pixel_num endp        

code ends     
end start
