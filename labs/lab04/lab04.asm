 ; lab04.asm
 SECTION .data ; Начало секции данных
 	lab04: DB 'DAniil Gorichev',10
 	
 	lab04Len: EQU $-lab04 ; Длина строки lab04
 	
 SECTION .text ; Начало секции кода
 	GLOBAL _start
 	
 _start: ; ТОчка входа в программу
 	mov eax,4 ; Системный вызов для записи (sys_write)
 	mov ebx,1 ; Описание файла '1' - стандартный вывод
 	mov ecx,lab04 ; Адрес строки lab04 в ecx
 	mov edx,lab04Len ; Размер строки lab
 	int 60h ; Вызов ядра
 	
 	mov eax,1 ; Системный вызов для выхода (sys_exit)
 	mov ebx,0 ; Выход с кодом возврата '0' (без ошибок)
 	int 80h ; Вызов ядра
