 ; hello.asm
 SECTION .data ; Начало секции данных
 	hello: DB 'Hello world!',10; 'Hello world!' плюс
 	; символ перевода строки
 	helloLen: EQU $-hello ; Длина строки hello
 	
 SECTION .text ; Начало секции кода
 	GLOBAL _start
 	
 _start: ; ТОчка входа в программу
 	mov eax,4 ; Системный вызов для записи (sys_write)
 	mov ebx,1 ; Описание файла '1' - стандартный вывод
 	mov ecx,hello ; Адрес строки hello в ecx
 	mov edx,helloLen ; Размер строки hello
 	int 60h ; Вызов ядра
 	
 	mov eax,1 ; Системный вызов для вызода
 	mov ebx,0 ; Выход с кодом возврата '0' (без ошибок)
 	int 80h ; Вызов ядра
