; 程序起始位置
[org 0x7c00]

; 设置屏幕为文本模式，清楚屏幕
mov ax, 3
int 0x10

; 初始化段寄存器
mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
;栈
mov sp, 0x7c00
; 0xb800 文本显示器的内存区域起始位置
mov ax, 0xb800  
mov ds, ax
mov byte [0], 'H'

; 阻塞
jmp $

; 填充0
times 510 - ($ - $$) db 0

; 主引导扇区最后两个字节必须是下面
db 0x55, 0xaa
