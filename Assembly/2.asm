assume cs:code

code segment

    mov ax,0ffffh
    mov ds,ax
    mov bx,6       ;���ϣ�����ds:bxָ��ffff:6

    mov al,[bx]
    mov ah,0	   ;���ϣ�����(al)=((ds*16)+(bx)),(ah)=0

    mov dx,0	   ;�ۼӼĴ�����0

    mov cx,123	   ;ѭ��123��
  s:add dx,ax
    loop s	   ;�����ۼӼ���(ax)*123

    mov ax,4c00h   ;���򷵻�
    int 21h

code ends

end