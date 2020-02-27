   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"spel.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "Z:/MOP/3.3_codelite/lab_5/spel.c"
   1:Z:/MOP/3.3_codelite/lab_5\spel.c **** /*
   2:Z:/MOP/3.3_codelite/lab_5\spel.c ****  * 	startup.c
   3:Z:/MOP/3.3_codelite/lab_5\spel.c ****  *
   4:Z:/MOP/3.3_codelite/lab_5\spel.c ****  */
   5:Z:/MOP/3.3_codelite/lab_5\spel.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
   7:Z:/MOP/3.3_codelite/lab_5\spel.c **** void startup ( void )
   8:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:Z:/MOP/3.3_codelite/lab_5\spel.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "Z:/MOP/3.3_codelite/lab_5/spel.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	" MOV SP,R0\n"
  12:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	" BL main\n"				/* call main */
  13:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	"_exit: B .\n"				/* never return */
  14:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	) ;
  15:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
  40              		.loc 1 15 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.section	.rodata
  48              		.align	2
  49              	.LC0:
  50 0000 01       		.byte	1
  51 0001 02       		.byte	2
  52 0002 03       		.byte	3
  53 0003 0A       		.byte	10
  54 0004 04       		.byte	4
  55 0005 05       		.byte	5
  56 0006 06       		.byte	6
  57 0007 0B       		.byte	11
  58 0008 07       		.byte	7
  59 0009 08       		.byte	8
  60 000a 09       		.byte	9
  61 000b 0C       		.byte	12
  62 000c 0E       		.byte	14
  63 000d 00       		.byte	0
  64 000e 0F       		.byte	15
  65 000f 0D       		.byte	13
  66              		.text
  67              		.align	1
  68              		.global	keyb
  69              		.syntax unified
  70              		.code	16
  71              		.thumb_func
  72              		.fpu softvfp
  74              	keyb:
  75              	.LFB1:
  16:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  17:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  18:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef unsigned char uint8_t;
  19:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  20:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define PORT_DISPLAY_BASE 0x40021000 // MD407 port E
  21:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portModer ((volatile unsigned int *)   (PORT_DISPLAY_BASE))
  22:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portOtyper ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x4)) 
  23:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portOspeedr ((volatile unsigned int*)   (PORT_DISPLAY_BASE+0x8)) 
  24:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portPupdr ((volatile unsigned int*)   (PORT_DISPLAY_BASE+0xC)) 
  25:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portIdr ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x10)) 
  26:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portIdrHigh ((volatile unsigned char *)  (PORT_DISPLAY_BASE+0x11))
  27:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portOdrLow ((volatile unsigned char *)  (PORT_DISPLAY_BASE+0x14)) 
  28:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portOdrHigh ((volatile unsigned char *)  (PORT_DISPLAY_BASE+0x14+1))
  29:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  30:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define B_E      0x40 // Enable
  31:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define B_RST    0x20 // Reset
  32:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define B_CS2    0x10 // Controller Select2
  33:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define B_CS1    8    // Controller Select1
  34:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define B_SELECT 4    // 0 Graphics, 1 ASCII
  35:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define B_RW     2    // 0 Write, 1 Read
  36:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define B_RS     1    // 0 Command, 1 Data
  37:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  38:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  39:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  40:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define LCD_ON          0x3F // Display on
  41:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define LCD_OFF         0x3E // Display off
  42:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define LCD_SET_ADD     0x40 // Set horizontalcoordinate
  43:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define LCD_SET_PAGE    0xB8 // Set verticalcoordinate
  44:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define LCD_DISP_START  0xC0 // Start address
  45:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define LCD_BUSY 0x80 // Read busystatus
  46:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  47:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define STK_CTRL ((volatile unsigned int*)(0xE000E010)) 
  48:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define STK_LOAD ((volatile unsigned int*)(0xE000E014)) 
  49:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define STK_VAL ((volatile unsigned int*)(0xE000E018)) 
  50:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  51:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define SIMULATOR
  52:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define CTRL_RD *(portIdrLow)
  53:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define CTRL_WR *(portOdrLow)
  54:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define DATA_RD *(portIdrHigh)
  55:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define DATA_WR *(portOdrHigh)
  56:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  57:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef unsigned int uint32_t;
  58:Z:/MOP/3.3_codelite/lab_5\spel.c ****  
  59:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define PORT_D_BASE 0x40020C00
  60:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_Moder ((volatile uint32_t *) (PORT_D_BASE))
  61:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_Otyper ((volatile unsigned short *) (PORT_D_BASE+0x4))
  62:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_Ospeedr ((volatile unsigned int *) (PORT_D_BASE+0x8))
  63:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_Pupdr ((volatile unsigned int *) (PORT_D_BASE+0xC))
  64:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_IdrLow ((volatile unsigned char *) (PORT_D_BASE+0x10))
  65:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_IdrHigh ((volatile unsigned char *) (PORT_D_BASE+0x11))
  66:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_OdrLow ((volatile unsigned char *) (PORT_D_BASE+0x14))
  67:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_OdrHigh ((volatile unsigned char *) (PORT_D_BASE+0x15))
  68:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  69:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  70:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  71:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  72:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char keyb(void) {
  76              		.loc 1 72 0
  77              		.cfi_startproc
  78              		@ args = 0, pretend = 0, frame = 24
  79              		@ frame_needed = 1, uses_anonymous_args = 0
  80 0000 90B5     		push	{r4, r7, lr}
  81              		.cfi_def_cfa_offset 12
  82              		.cfi_offset 4, -12
  83              		.cfi_offset 7, -8
  84              		.cfi_offset 14, -4
  85 0002 87B0     		sub	sp, sp, #28
  86              		.cfi_def_cfa_offset 40
  87 0004 00AF     		add	r7, sp, #0
  88              		.cfi_def_cfa_register 7
  73:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
  89              		.loc 1 73 0
  90 0006 3B00     		movs	r3, r7
  91 0008 164A     		ldr	r2, .L8
  92 000a 13CA     		ldmia	r2!, {r0, r1, r4}
  93 000c 13C3     		stmia	r3!, {r0, r1, r4}
  94 000e 1268     		ldr	r2, [r2]
  95 0010 1A60     		str	r2, [r3]
  74:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	int row, col;
  75:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	for (row=1; row <=4 ; row++ ) {
  96              		.loc 1 75 0
  97 0012 0123     		movs	r3, #1
  98 0014 7B61     		str	r3, [r7, #20]
  99 0016 1AE0     		b	.L3
 100              	.L6:
 101              	.LBB2:
  76:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		kbdActivate( row );
 102              		.loc 1 76 0
 103 0018 7B69     		ldr	r3, [r7, #20]
 104 001a 1800     		movs	r0, r3
 105 001c FFF7FEFF 		bl	kbdActivate
 106              	.LBB3:
  77:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		if( (col = kbdGetCol () ) != 0 ){
 107              		.loc 1 77 0
 108 0020 FFF7FEFF 		bl	kbdGetCol
 109 0024 0300     		movs	r3, r0
 110 0026 3B61     		str	r3, [r7, #16]
 111 0028 3B69     		ldr	r3, [r7, #16]
 112 002a 002B     		cmp	r3, #0
 113 002c 0CD0     		beq	.L4
  78:Z:/MOP/3.3_codelite/lab_5\spel.c **** 			kbdActivate(row);
 114              		.loc 1 78 0
 115 002e 7B69     		ldr	r3, [r7, #20]
 116 0030 1800     		movs	r0, r3
 117 0032 FFF7FEFF 		bl	kbdActivate
  79:Z:/MOP/3.3_codelite/lab_5\spel.c **** 			return key [4*(row-1)+(col-1) ];
 118              		.loc 1 79 0
 119 0036 7B69     		ldr	r3, [r7, #20]
 120 0038 013B     		subs	r3, r3, #1
 121 003a 9A00     		lsls	r2, r3, #2
 122 003c 3B69     		ldr	r3, [r7, #16]
 123 003e 013B     		subs	r3, r3, #1
 124 0040 D318     		adds	r3, r2, r3
 125 0042 3A00     		movs	r2, r7
 126 0044 D35C     		ldrb	r3, [r2, r3]
 127 0046 09E0     		b	.L7
 128              	.L4:
 129              	.LBE3:
 130              	.LBE2:
  75:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		kbdActivate( row );
 131              		.loc 1 75 0 discriminator 2
 132 0048 7B69     		ldr	r3, [r7, #20]
 133 004a 0133     		adds	r3, r3, #1
 134 004c 7B61     		str	r3, [r7, #20]
 135              	.L3:
  75:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		kbdActivate( row );
 136              		.loc 1 75 0 is_stmt 0 discriminator 1
 137 004e 7B69     		ldr	r3, [r7, #20]
 138 0050 042B     		cmp	r3, #4
 139 0052 E1DD     		ble	.L6
  80:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		}
  81:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		
  82:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
  83:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
  84:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	*portD_OdrHigh = 0;
 140              		.loc 1 84 0 is_stmt 1
 141 0054 044B     		ldr	r3, .L8+4
 142 0056 0022     		movs	r2, #0
 143 0058 1A70     		strb	r2, [r3]
  85:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	return 0xFF;
 144              		.loc 1 85 0
 145 005a FF23     		movs	r3, #255
 146              	.L7:
  86:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
  87:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
  88:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 147              		.loc 1 88 0 discriminator 1
 148 005c 1800     		movs	r0, r3
 149 005e BD46     		mov	sp, r7
 150 0060 07B0     		add	sp, sp, #28
 151              		@ sp needed
 152 0062 90BD     		pop	{r4, r7, pc}
 153              	.L9:
 154              		.align	2
 155              	.L8:
 156 0064 00000000 		.word	.LC0
 157 0068 150C0240 		.word	1073875989
 158              		.cfi_endproc
 159              	.LFE1:
 161              		.align	1
 162              		.global	kbdActivate
 163              		.syntax unified
 164              		.code	16
 165              		.thumb_func
 166              		.fpu softvfp
 168              	kbdActivate:
 169              	.LFB2:
  89:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  90:Z:/MOP/3.3_codelite/lab_5\spel.c **** void kbdActivate( unsigned int row ){
 170              		.loc 1 90 0
 171              		.cfi_startproc
 172              		@ args = 0, pretend = 0, frame = 8
 173              		@ frame_needed = 1, uses_anonymous_args = 0
 174 006c 80B5     		push	{r7, lr}
 175              		.cfi_def_cfa_offset 8
 176              		.cfi_offset 7, -8
 177              		.cfi_offset 14, -4
 178 006e 82B0     		sub	sp, sp, #8
 179              		.cfi_def_cfa_offset 16
 180 0070 00AF     		add	r7, sp, #0
 181              		.cfi_def_cfa_register 7
 182 0072 7860     		str	r0, [r7, #4]
  91:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	switch( row ) {
 183              		.loc 1 91 0
 184 0074 7B68     		ldr	r3, [r7, #4]
 185 0076 042B     		cmp	r3, #4
 186 0078 19D8     		bhi	.L18
 187 007a 7B68     		ldr	r3, [r7, #4]
 188 007c 9A00     		lsls	r2, r3, #2
 189 007e 0E4B     		ldr	r3, .L19
 190 0080 D318     		adds	r3, r2, r3
 191 0082 1B68     		ldr	r3, [r3]
 192 0084 9F46     		mov	pc, r3
 193              		.section	.rodata
 194              		.align	2
 195              	.L13:
 196 0010 A6000000 		.word	.L12
 197 0014 86000000 		.word	.L14
 198 0018 8E000000 		.word	.L15
 199 001c 96000000 		.word	.L16
 200 0020 9E000000 		.word	.L17
 201              		.text
 202              	.L14:
  92:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 1: *portD_OdrHigh = 0x10 ; break;
 203              		.loc 1 92 0
 204 0086 0D4B     		ldr	r3, .L19+4
 205 0088 1022     		movs	r2, #16
 206 008a 1A70     		strb	r2, [r3]
 207 008c 0FE0     		b	.L11
 208              	.L15:
  93:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 2: *portD_OdrHigh = 0x20 ; break;
 209              		.loc 1 93 0
 210 008e 0B4B     		ldr	r3, .L19+4
 211 0090 2022     		movs	r2, #32
 212 0092 1A70     		strb	r2, [r3]
 213 0094 0BE0     		b	.L11
 214              	.L16:
  94:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 3: *portD_OdrHigh = 0x40 ; break;
 215              		.loc 1 94 0
 216 0096 094B     		ldr	r3, .L19+4
 217 0098 4022     		movs	r2, #64
 218 009a 1A70     		strb	r2, [r3]
 219 009c 07E0     		b	.L11
 220              	.L17:
  95:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 4: *portD_OdrHigh = 0x80 ; break;
 221              		.loc 1 95 0
 222 009e 074B     		ldr	r3, .L19+4
 223 00a0 8022     		movs	r2, #128
 224 00a2 1A70     		strb	r2, [r3]
 225 00a4 03E0     		b	.L11
 226              	.L12:
  96:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 0: *portD_OdrHigh = 0x00; break;
 227              		.loc 1 96 0
 228 00a6 054B     		ldr	r3, .L19+4
 229 00a8 0022     		movs	r2, #0
 230 00aa 1A70     		strb	r2, [r3]
 231 00ac C046     		nop
 232              	.L11:
 233              	.L18:
  97:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
  98:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 234              		.loc 1 98 0
 235 00ae C046     		nop
 236 00b0 BD46     		mov	sp, r7
 237 00b2 02B0     		add	sp, sp, #8
 238              		@ sp needed
 239 00b4 80BD     		pop	{r7, pc}
 240              	.L20:
 241 00b6 C046     		.align	2
 242              	.L19:
 243 00b8 10000000 		.word	.L13
 244 00bc 150C0240 		.word	1073875989
 245              		.cfi_endproc
 246              	.LFE2:
 248              		.align	1
 249              		.global	kbdGetCol
 250              		.syntax unified
 251              		.code	16
 252              		.thumb_func
 253              		.fpu softvfp
 255              	kbdGetCol:
 256              	.LFB3:
  99:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 100:Z:/MOP/3.3_codelite/lab_5\spel.c **** int kbdGetCol ( void ){
 257              		.loc 1 100 0
 258              		.cfi_startproc
 259              		@ args = 0, pretend = 0, frame = 8
 260              		@ frame_needed = 1, uses_anonymous_args = 0
 261 00c0 80B5     		push	{r7, lr}
 262              		.cfi_def_cfa_offset 8
 263              		.cfi_offset 7, -8
 264              		.cfi_offset 14, -4
 265 00c2 82B0     		sub	sp, sp, #8
 266              		.cfi_def_cfa_offset 16
 267 00c4 00AF     		add	r7, sp, #0
 268              		.cfi_def_cfa_register 7
 101:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	unsigned char c;
 102:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	c = *portD_IdrHigh;
 269              		.loc 1 102 0
 270 00c6 124A     		ldr	r2, .L27
 271 00c8 FB1D     		adds	r3, r7, #7
 272 00ca 1278     		ldrb	r2, [r2]
 273 00cc 1A70     		strb	r2, [r3]
 103:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if ( c & 0x8 ) return 4;
 274              		.loc 1 103 0
 275 00ce FB1D     		adds	r3, r7, #7
 276 00d0 1B78     		ldrb	r3, [r3]
 277 00d2 0822     		movs	r2, #8
 278 00d4 1340     		ands	r3, r2
 279 00d6 01D0     		beq	.L22
 280              		.loc 1 103 0 is_stmt 0 discriminator 1
 281 00d8 0423     		movs	r3, #4
 282 00da 15E0     		b	.L23
 283              	.L22:
 104:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if ( c & 0x4 ) return 3;
 284              		.loc 1 104 0 is_stmt 1
 285 00dc FB1D     		adds	r3, r7, #7
 286 00de 1B78     		ldrb	r3, [r3]
 287 00e0 0422     		movs	r2, #4
 288 00e2 1340     		ands	r3, r2
 289 00e4 01D0     		beq	.L24
 290              		.loc 1 104 0 is_stmt 0 discriminator 1
 291 00e6 0323     		movs	r3, #3
 292 00e8 0EE0     		b	.L23
 293              	.L24:
 105:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if ( c & 0x2 ) return 2;
 294              		.loc 1 105 0 is_stmt 1
 295 00ea FB1D     		adds	r3, r7, #7
 296 00ec 1B78     		ldrb	r3, [r3]
 297 00ee 0222     		movs	r2, #2
 298 00f0 1340     		ands	r3, r2
 299 00f2 01D0     		beq	.L25
 300              		.loc 1 105 0 is_stmt 0 discriminator 1
 301 00f4 0223     		movs	r3, #2
 302 00f6 07E0     		b	.L23
 303              	.L25:
 106:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if ( c & 0x1 ) return 1;
 304              		.loc 1 106 0 is_stmt 1
 305 00f8 FB1D     		adds	r3, r7, #7
 306 00fa 1B78     		ldrb	r3, [r3]
 307 00fc 0122     		movs	r2, #1
 308 00fe 1340     		ands	r3, r2
 309 0100 01D0     		beq	.L26
 310              		.loc 1 106 0 is_stmt 0 discriminator 1
 311 0102 0123     		movs	r3, #1
 312 0104 00E0     		b	.L23
 313              	.L26:
 107:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	return 0;
 314              		.loc 1 107 0 is_stmt 1
 315 0106 0023     		movs	r3, #0
 316              	.L23:
 108:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 317              		.loc 1 108 0
 318 0108 1800     		movs	r0, r3
 319 010a BD46     		mov	sp, r7
 320 010c 02B0     		add	sp, sp, #8
 321              		@ sp needed
 322 010e 80BD     		pop	{r7, pc}
 323              	.L28:
 324              		.align	2
 325              	.L27:
 326 0110 110C0240 		.word	1073875985
 327              		.cfi_endproc
 328              	.LFE3:
 330              		.global	ball_geometry
 331              		.data
 332              		.align	2
 335              	ball_geometry:
 336 0000 0C000000 		.word	12
 337 0004 04000000 		.word	4
 338 0008 04000000 		.word	4
 339 000c 00       		.byte	0
 340 000d 01       		.byte	1
 341 000e 00       		.byte	0
 342 000f 02       		.byte	2
 343 0010 01       		.byte	1
 344 0011 00       		.byte	0
 345 0012 01       		.byte	1
 346 0013 01       		.byte	1
 347 0014 01       		.byte	1
 348 0015 02       		.byte	2
 349 0016 01       		.byte	1
 350 0017 03       		.byte	3
 351 0018 02       		.byte	2
 352 0019 00       		.byte	0
 353 001a 02       		.byte	2
 354 001b 01       		.byte	1
 355 001c 02       		.byte	2
 356 001d 02       		.byte	2
 357 001e 02       		.byte	2
 358 001f 03       		.byte	3
 359 0020 03       		.byte	3
 360 0021 01       		.byte	1
 361 0022 03       		.byte	3
 362 0023 02       		.byte	2
 363 0024 00000000 		.space	16360
 363      00000000 
 363      00000000 
 363      00000000 
 363      00000000 
 364              		.global	bar_1_geometry
 365              		.align	2
 368              	bar_1_geometry:
 369 400c 34000000 		.word	52
 370 4010 02000000 		.word	2
 371 4014 1A000000 		.word	26
 372 4018 00       		.byte	0
 373 4019 00       		.byte	0
 374 401a 01       		.byte	1
 375 401b 00       		.byte	0
 376 401c 00       		.byte	0
 377 401d 01       		.byte	1
 378 401e 01       		.byte	1
 379 401f 01       		.byte	1
 380 4020 00       		.byte	0
 381 4021 02       		.byte	2
 382 4022 01       		.byte	1
 383 4023 02       		.byte	2
 384 4024 00       		.byte	0
 385 4025 03       		.byte	3
 386 4026 01       		.byte	1
 387 4027 03       		.byte	3
 388 4028 00       		.byte	0
 389 4029 04       		.byte	4
 390 402a 01       		.byte	1
 391 402b 04       		.byte	4
 392 402c 00       		.byte	0
 393 402d 05       		.byte	5
 394 402e 01       		.byte	1
 395 402f 05       		.byte	5
 396 4030 00       		.byte	0
 397 4031 06       		.byte	6
 398 4032 01       		.byte	1
 399 4033 06       		.byte	6
 400 4034 00       		.byte	0
 401 4035 07       		.byte	7
 402 4036 01       		.byte	1
 403 4037 07       		.byte	7
 404 4038 00       		.byte	0
 405 4039 08       		.byte	8
 406 403a 01       		.byte	1
 407 403b 08       		.byte	8
 408 403c 00       		.byte	0
 409 403d 09       		.byte	9
 410 403e 01       		.byte	1
 411 403f 09       		.byte	9
 412 4040 00       		.byte	0
 413 4041 0A       		.byte	10
 414 4042 01       		.byte	1
 415 4043 0A       		.byte	10
 416 4044 00       		.byte	0
 417 4045 0B       		.byte	11
 418 4046 01       		.byte	1
 419 4047 0B       		.byte	11
 420 4048 00       		.byte	0
 421 4049 0C       		.byte	12
 422 404a 01       		.byte	1
 423 404b 0C       		.byte	12
 424 404c 00       		.byte	0
 425 404d 0D       		.byte	13
 426 404e 01       		.byte	1
 427 404f 0D       		.byte	13
 428 4050 00       		.byte	0
 429 4051 0E       		.byte	14
 430 4052 01       		.byte	1
 431 4053 0E       		.byte	14
 432 4054 00       		.byte	0
 433 4055 0F       		.byte	15
 434 4056 01       		.byte	1
 435 4057 0F       		.byte	15
 436 4058 00       		.byte	0
 437 4059 10       		.byte	16
 438 405a 01       		.byte	1
 439 405b 10       		.byte	16
 440 405c 00       		.byte	0
 441 405d 11       		.byte	17
 442 405e 01       		.byte	1
 443 405f 11       		.byte	17
 444 4060 00       		.byte	0
 445 4061 12       		.byte	18
 446 4062 01       		.byte	1
 447 4063 12       		.byte	18
 448 4064 00       		.byte	0
 449 4065 13       		.byte	19
 450 4066 01       		.byte	1
 451 4067 13       		.byte	19
 452 4068 00       		.byte	0
 453 4069 14       		.byte	20
 454 406a 01       		.byte	1
 455 406b 14       		.byte	20
 456 406c 00       		.byte	0
 457 406d 15       		.byte	21
 458 406e 01       		.byte	1
 459 406f 15       		.byte	21
 460 4070 00       		.byte	0
 461 4071 16       		.byte	22
 462 4072 01       		.byte	1
 463 4073 16       		.byte	22
 464 4074 00       		.byte	0
 465 4075 17       		.byte	23
 466 4076 01       		.byte	1
 467 4077 17       		.byte	23
 468 4078 00       		.byte	0
 469 4079 18       		.byte	24
 470 407a 01       		.byte	1
 471 407b 18       		.byte	24
 472 407c 00       		.byte	0
 473 407d 19       		.byte	25
 474 407e 01       		.byte	1
 475 407f 19       		.byte	25
 476 4080 00000000 		.space	16280
 476      00000000 
 476      00000000 
 476      00000000 
 476      00000000 
 477              		.global	bar_2_geometry
 478              		.align	2
 481              	bar_2_geometry:
 482 8018 34000000 		.word	52
 483 801c 02000000 		.word	2
 484 8020 1A000000 		.word	26
 485 8024 7E       		.byte	126
 486 8025 00       		.byte	0
 487 8026 7F       		.byte	127
 488 8027 00       		.byte	0
 489 8028 7E       		.byte	126
 490 8029 01       		.byte	1
 491 802a 7F       		.byte	127
 492 802b 01       		.byte	1
 493 802c 7E       		.byte	126
 494 802d 02       		.byte	2
 495 802e 7F       		.byte	127
 496 802f 02       		.byte	2
 497 8030 7E       		.byte	126
 498 8031 03       		.byte	3
 499 8032 7F       		.byte	127
 500 8033 03       		.byte	3
 501 8034 7E       		.byte	126
 502 8035 04       		.byte	4
 503 8036 7F       		.byte	127
 504 8037 04       		.byte	4
 505 8038 7E       		.byte	126
 506 8039 05       		.byte	5
 507 803a 7F       		.byte	127
 508 803b 05       		.byte	5
 509 803c 7E       		.byte	126
 510 803d 06       		.byte	6
 511 803e 7F       		.byte	127
 512 803f 06       		.byte	6
 513 8040 7E       		.byte	126
 514 8041 07       		.byte	7
 515 8042 7F       		.byte	127
 516 8043 07       		.byte	7
 517 8044 7E       		.byte	126
 518 8045 08       		.byte	8
 519 8046 7F       		.byte	127
 520 8047 08       		.byte	8
 521 8048 7E       		.byte	126
 522 8049 09       		.byte	9
 523 804a 7F       		.byte	127
 524 804b 09       		.byte	9
 525 804c 7E       		.byte	126
 526 804d 0A       		.byte	10
 527 804e 7F       		.byte	127
 528 804f 0A       		.byte	10
 529 8050 7E       		.byte	126
 530 8051 0B       		.byte	11
 531 8052 7F       		.byte	127
 532 8053 0B       		.byte	11
 533 8054 7E       		.byte	126
 534 8055 0C       		.byte	12
 535 8056 7F       		.byte	127
 536 8057 0C       		.byte	12
 537 8058 7E       		.byte	126
 538 8059 0D       		.byte	13
 539 805a 7F       		.byte	127
 540 805b 0D       		.byte	13
 541 805c 7E       		.byte	126
 542 805d 0E       		.byte	14
 543 805e 7F       		.byte	127
 544 805f 0E       		.byte	14
 545 8060 7E       		.byte	126
 546 8061 0F       		.byte	15
 547 8062 7F       		.byte	127
 548 8063 0F       		.byte	15
 549 8064 7E       		.byte	126
 550 8065 10       		.byte	16
 551 8066 7F       		.byte	127
 552 8067 10       		.byte	16
 553 8068 7E       		.byte	126
 554 8069 11       		.byte	17
 555 806a 7F       		.byte	127
 556 806b 11       		.byte	17
 557 806c 7E       		.byte	126
 558 806d 12       		.byte	18
 559 806e 7F       		.byte	127
 560 806f 12       		.byte	18
 561 8070 7E       		.byte	126
 562 8071 13       		.byte	19
 563 8072 7F       		.byte	127
 564 8073 13       		.byte	19
 565 8074 7E       		.byte	126
 566 8075 14       		.byte	20
 567 8076 7F       		.byte	127
 568 8077 14       		.byte	20
 569 8078 7E       		.byte	126
 570 8079 15       		.byte	21
 571 807a 7F       		.byte	127
 572 807b 15       		.byte	21
 573 807c 7E       		.byte	126
 574 807d 16       		.byte	22
 575 807e 7F       		.byte	127
 576 807f 16       		.byte	22
 577 8080 7E       		.byte	126
 578 8081 17       		.byte	23
 579 8082 7F       		.byte	127
 580 8083 17       		.byte	23
 581 8084 7E       		.byte	126
 582 8085 18       		.byte	24
 583 8086 7F       		.byte	127
 584 8087 18       		.byte	24
 585 8088 7E       		.byte	126
 586 8089 19       		.byte	25
 587 808a 7F       		.byte	127
 588 808b 19       		.byte	25
 589 808c 00000000 		.space	16280
 589      00000000 
 589      00000000 
 589      00000000 
 589      00000000 
 590              		.text
 591              		.align	1
 592              		.global	init_app
 593              		.syntax unified
 594              		.code	16
 595              		.thumb_func
 596              		.fpu softvfp
 598              	init_app:
 599              	.LFB4:
 109:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 110:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef struct tPoint
 111:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 112:Z:/MOP/3.3_codelite/lab_5\spel.c ****     unsigned char x;
 113:Z:/MOP/3.3_codelite/lab_5\spel.c ****     unsigned char y;
 114:Z:/MOP/3.3_codelite/lab_5\spel.c **** } POINT;
 115:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 116:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define MAX_POINTS 8192
 117:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 118:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef struct tGeometry
 119:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 120:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int numpoints;
 121:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int sizex;
 122:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int sizey;
 123:Z:/MOP/3.3_codelite/lab_5\spel.c ****     POINT px[MAX_POINTS];
 124:Z:/MOP/3.3_codelite/lab_5\spel.c **** } GEOMETRY, *PGEOMETRY;
 125:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 126:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef struct tObj
 127:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 128:Z:/MOP/3.3_codelite/lab_5\spel.c ****     PGEOMETRY geo;
 129:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int dirx,diry;
 130:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int posx,posy;
 131:Z:/MOP/3.3_codelite/lab_5\spel.c ****     void (*draw)(struct tObj*);
 132:Z:/MOP/3.3_codelite/lab_5\spel.c ****     void (*clear)(struct tObj*);
 133:Z:/MOP/3.3_codelite/lab_5\spel.c ****     void (*move)(struct tObj*);
 134:Z:/MOP/3.3_codelite/lab_5\spel.c ****     void (*set_speed)(struct tObj*, int, int);
 135:Z:/MOP/3.3_codelite/lab_5\spel.c **** } OBJECT, *POBJECT;
 136:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 137:Z:/MOP/3.3_codelite/lab_5\spel.c **** /*void graphic_initialize(void);
 138:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 139:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
 140:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 141:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
 142:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 143:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_write(uint8_t value, uint8_t controller);
 144:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 145:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_ctrl_bit_clear(uint8_t x);
 146:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 147:Z:/MOP/3.3_codelite/lab_5\spel.c **** void move_object(POBJECT O);
 148:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 149:Z:/MOP/3.3_codelite/lab_5\spel.c **** void clear_object(POBJECT O);
 150:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 151:Z:/MOP/3.3_codelite/lab_5\spel.c **** void draw_object(POBJECT O);
 152:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 153:Z:/MOP/3.3_codelite/lab_5\spel.c **** void set_object_speed(POBJECT O, int speedx, int speedy);
 154:Z:/MOP/3.3_codelite/lab_5\spel.c **** */
 155:Z:/MOP/3.3_codelite/lab_5\spel.c **** GEOMETRY ball_geometry ={
 156:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 157:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.numpoints = 12,
 158:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizex = 4,
 159:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizey = 4,
 160:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	{
 161:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		/* px[0,1,2 ....] */
 162:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
 163:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
 164:Z:/MOP/3.3_codelite/lab_5\spel.c ****         {3,1}, {3,2}
 165:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 166:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 167:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 168:Z:/MOP/3.3_codelite/lab_5\spel.c **** GEOMETRY bar_1_geometry ={
 169:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.numpoints = 52,
 170:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizex = 2,
 171:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizey = 26,
 172:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	{
 173:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,0},{1,0},
 174:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,1},{1,1},
 175:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,2},{1,2},
 176:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,3},{1,3},
 177:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,4},{1,4},
 178:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,5},{1,5},
 179:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,6},{1,6},
 180:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,7},{1,7},
 181:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,8},{1,8},
 182:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,9},{1,9},
 183:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,10},{1,10},
 184:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,11},{1,11},
 185:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,12},{1,12},
 186:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,13},{1,13},
 187:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,14},{1,14},
 188:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,15},{1,15},
 189:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,16},{1,16},
 190:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,17},{1,17},
 191:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,18},{1,18},
 192:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,19},{1,19},
 193:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,20},{1,20},
 194:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,21},{1,21},
 195:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,22},{1,22},
 196:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,23},{1,23},
 197:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,24},{1,24},
 198:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,25},{1,25}
 199:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		
 200:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		
 201:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 202:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 203:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 204:Z:/MOP/3.3_codelite/lab_5\spel.c **** GEOMETRY bar_2_geometry ={
 205:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.numpoints = 52,
 206:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizex = 2,
 207:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizey = 26,
 208:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	{
 209:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,0},{127,0},
 210:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,1},{127,1},
 211:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,2},{127,2},
 212:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,3},{127,3},
 213:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,4},{127,4},
 214:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,5},{127,5},
 215:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,6},{127,6},
 216:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,7},{127,7},
 217:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,8},{127,8},
 218:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,9},{127,9},
 219:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,10},{127,10},
 220:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,11},{127,11},
 221:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,12},{127,12},
 222:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,13},{127,13},
 223:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,14},{127,14},
 224:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,15},{127,15},
 225:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,16},{127,16},
 226:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,17},{127,17},
 227:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,18},{127,18},
 228:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,19},{127,19},
 229:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,20},{127,20},
 230:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,21},{127,21},
 231:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,22},{127,22},
 232:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,23},{127,23},
 233:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,24},{127,24},
 234:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{126,25},{127,25}
 235:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 236:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 237:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 238:Z:/MOP/3.3_codelite/lab_5\spel.c **** void init_app(void){
 600              		.loc 1 238 0
 601              		.cfi_startproc
 602              		@ args = 0, pretend = 0, frame = 0
 603              		@ frame_needed = 1, uses_anonymous_args = 0
 604 0114 80B5     		push	{r7, lr}
 605              		.cfi_def_cfa_offset 8
 606              		.cfi_offset 7, -8
 607              		.cfi_offset 14, -4
 608 0116 00AF     		add	r7, sp, #0
 609              		.cfi_def_cfa_register 7
 239:Z:/MOP/3.3_codelite/lab_5\spel.c **** *(portModer) = 0x55555555;
 610              		.loc 1 239 0
 611 0118 0F4B     		ldr	r3, .L30
 612 011a 104A     		ldr	r2, .L30+4
 613 011c 1A60     		str	r2, [r3]
 240:Z:/MOP/3.3_codelite/lab_5\spel.c **** *(portOspeedr) = 0x55555555;
 614              		.loc 1 240 0
 615 011e 104B     		ldr	r3, .L30+8
 616 0120 0E4A     		ldr	r2, .L30+4
 617 0122 1A60     		str	r2, [r3]
 241:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Moder = 0x55005555;
 618              		.loc 1 241 0
 619 0124 0F4B     		ldr	r3, .L30+12
 620 0126 104A     		ldr	r2, .L30+16
 621 0128 1A60     		str	r2, [r3]
 242:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Ospeedr = 0x55555555;
 622              		.loc 1 242 0
 623 012a 104B     		ldr	r3, .L30+20
 624 012c 0B4A     		ldr	r2, .L30+4
 625 012e 1A60     		str	r2, [r3]
 243:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Pupdr &= 0x0000FFFF; /* Input, pull down */
 626              		.loc 1 243 0
 627 0130 0F4B     		ldr	r3, .L30+24
 628 0132 1A68     		ldr	r2, [r3]
 629 0134 0E4B     		ldr	r3, .L30+24
 630 0136 1204     		lsls	r2, r2, #16
 631 0138 120C     		lsrs	r2, r2, #16
 632 013a 1A60     		str	r2, [r3]
 244:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Pupdr |= 0x00AA0000; /* Input, pull down */
 633              		.loc 1 244 0
 634 013c 0C4B     		ldr	r3, .L30+24
 635 013e 1A68     		ldr	r2, [r3]
 636 0140 0B4B     		ldr	r3, .L30+24
 637 0142 AA21     		movs	r1, #170
 638 0144 0904     		lsls	r1, r1, #16
 639 0146 0A43     		orrs	r2, r1
 640 0148 1A60     		str	r2, [r3]
 245:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Otyper = 0x0000; /* outputs are push/pull */
 641              		.loc 1 245 0
 642 014a 0A4B     		ldr	r3, .L30+28
 643 014c 0022     		movs	r2, #0
 644 014e 1A80     		strh	r2, [r3]
 246:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 247:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 645              		.loc 1 247 0
 646 0150 C046     		nop
 647 0152 BD46     		mov	sp, r7
 648              		@ sp needed
 649 0154 80BD     		pop	{r7, pc}
 650              	.L31:
 651 0156 C046     		.align	2
 652              	.L30:
 653 0158 00100240 		.word	1073876992
 654 015c 55555555 		.word	1431655765
 655 0160 08100240 		.word	1073877000
 656 0164 000C0240 		.word	1073875968
 657 0168 55550055 		.word	1426085205
 658 016c 080C0240 		.word	1073875976
 659 0170 0C0C0240 		.word	1073875980
 660 0174 040C0240 		.word	1073875972
 661              		.cfi_endproc
 662              	.LFE4:
 664              		.align	1
 665              		.global	set_object_speed
 666              		.syntax unified
 667              		.code	16
 668              		.thumb_func
 669              		.fpu softvfp
 671              	set_object_speed:
 672              	.LFB5:
 248:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 249:Z:/MOP/3.3_codelite/lab_5\spel.c **** void set_object_speed(POBJECT O, int speedx, int speedy){
 673              		.loc 1 249 0
 674              		.cfi_startproc
 675              		@ args = 0, pretend = 0, frame = 16
 676              		@ frame_needed = 1, uses_anonymous_args = 0
 677 0178 80B5     		push	{r7, lr}
 678              		.cfi_def_cfa_offset 8
 679              		.cfi_offset 7, -8
 680              		.cfi_offset 14, -4
 681 017a 84B0     		sub	sp, sp, #16
 682              		.cfi_def_cfa_offset 24
 683 017c 00AF     		add	r7, sp, #0
 684              		.cfi_def_cfa_register 7
 685 017e F860     		str	r0, [r7, #12]
 686 0180 B960     		str	r1, [r7, #8]
 687 0182 7A60     		str	r2, [r7, #4]
 250:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 251:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	O->dirx = speedx;
 688              		.loc 1 251 0
 689 0184 FB68     		ldr	r3, [r7, #12]
 690 0186 BA68     		ldr	r2, [r7, #8]
 691 0188 5A60     		str	r2, [r3, #4]
 252:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 253:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	O->diry = speedy;
 692              		.loc 1 253 0
 693 018a FB68     		ldr	r3, [r7, #12]
 694 018c 7A68     		ldr	r2, [r7, #4]
 695 018e 9A60     		str	r2, [r3, #8]
 254:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 255:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 696              		.loc 1 255 0
 697 0190 C046     		nop
 698 0192 BD46     		mov	sp, r7
 699 0194 04B0     		add	sp, sp, #16
 700              		@ sp needed
 701 0196 80BD     		pop	{r7, pc}
 702              		.cfi_endproc
 703              	.LFE5:
 705              		.align	1
 706              		.global	draw_object
 707              		.syntax unified
 708              		.code	16
 709              		.thumb_func
 710              		.fpu softvfp
 712              	draw_object:
 713              	.LFB6:
 256:Z:/MOP/3.3_codelite/lab_5\spel.c **** void draw_object(POBJECT O){
 714              		.loc 1 256 0
 715              		.cfi_startproc
 716              		@ args = 0, pretend = 0, frame = 16
 717              		@ frame_needed = 1, uses_anonymous_args = 0
 718 0198 80B5     		push	{r7, lr}
 719              		.cfi_def_cfa_offset 8
 720              		.cfi_offset 7, -8
 721              		.cfi_offset 14, -4
 722 019a 84B0     		sub	sp, sp, #16
 723              		.cfi_def_cfa_offset 24
 724 019c 00AF     		add	r7, sp, #0
 725              		.cfi_def_cfa_register 7
 726 019e 7860     		str	r0, [r7, #4]
 727              	.LBB4:
 257:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 258:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 728              		.loc 1 258 0
 729 01a0 0023     		movs	r3, #0
 730 01a2 FB60     		str	r3, [r7, #12]
 731 01a4 1CE0     		b	.L34
 732              	.L35:
 733              	.LBB5:
 259:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 260:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
 734              		.loc 1 260 0 discriminator 3
 735 01a6 7B68     		ldr	r3, [r7, #4]
 736 01a8 DA68     		ldr	r2, [r3, #12]
 737 01aa 7B68     		ldr	r3, [r7, #4]
 738 01ac 1968     		ldr	r1, [r3]
 739 01ae FB68     		ldr	r3, [r7, #12]
 740 01b0 0433     		adds	r3, r3, #4
 741 01b2 5B00     		lsls	r3, r3, #1
 742 01b4 CB18     		adds	r3, r1, r3
 743 01b6 0433     		adds	r3, r3, #4
 744 01b8 1B78     		ldrb	r3, [r3]
 745 01ba D018     		adds	r0, r2, r3
 746 01bc 7B68     		ldr	r3, [r7, #4]
 747 01be 1A69     		ldr	r2, [r3, #16]
 748 01c0 7B68     		ldr	r3, [r7, #4]
 749 01c2 1968     		ldr	r1, [r3]
 750 01c4 FB68     		ldr	r3, [r7, #12]
 751 01c6 0433     		adds	r3, r3, #4
 752 01c8 5B00     		lsls	r3, r3, #1
 753 01ca CB18     		adds	r3, r1, r3
 754 01cc 0533     		adds	r3, r3, #5
 755 01ce 1B78     		ldrb	r3, [r3]
 756 01d0 D318     		adds	r3, r2, r3
 757 01d2 0122     		movs	r2, #1
 758 01d4 1900     		movs	r1, r3
 759 01d6 FFF7FEFF 		bl	pixel
 760              	.LBE5:
 258:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 761              		.loc 1 258 0 discriminator 3
 762 01da FB68     		ldr	r3, [r7, #12]
 763 01dc 0133     		adds	r3, r3, #1
 764 01de FB60     		str	r3, [r7, #12]
 765              	.L34:
 258:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 766              		.loc 1 258 0 is_stmt 0 discriminator 1
 767 01e0 FB68     		ldr	r3, [r7, #12]
 768 01e2 034A     		ldr	r2, .L36
 769 01e4 9342     		cmp	r3, r2
 770 01e6 DEDD     		ble	.L35
 771              	.LBE4:
 261:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 262:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 263:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 264:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 772              		.loc 1 264 0 is_stmt 1
 773 01e8 C046     		nop
 774 01ea BD46     		mov	sp, r7
 775 01ec 04B0     		add	sp, sp, #16
 776              		@ sp needed
 777 01ee 80BD     		pop	{r7, pc}
 778              	.L37:
 779              		.align	2
 780              	.L36:
 781 01f0 FF1F0000 		.word	8191
 782              		.cfi_endproc
 783              	.LFE6:
 785              		.align	1
 786              		.global	clear_object
 787              		.syntax unified
 788              		.code	16
 789              		.thumb_func
 790              		.fpu softvfp
 792              	clear_object:
 793              	.LFB7:
 265:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 266:Z:/MOP/3.3_codelite/lab_5\spel.c **** void clear_object(POBJECT O){
 794              		.loc 1 266 0
 795              		.cfi_startproc
 796              		@ args = 0, pretend = 0, frame = 16
 797              		@ frame_needed = 1, uses_anonymous_args = 0
 798 01f4 80B5     		push	{r7, lr}
 799              		.cfi_def_cfa_offset 8
 800              		.cfi_offset 7, -8
 801              		.cfi_offset 14, -4
 802 01f6 84B0     		sub	sp, sp, #16
 803              		.cfi_def_cfa_offset 24
 804 01f8 00AF     		add	r7, sp, #0
 805              		.cfi_def_cfa_register 7
 806 01fa 7860     		str	r0, [r7, #4]
 807              	.LBB6:
 267:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 268:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 808              		.loc 1 268 0
 809 01fc 0023     		movs	r3, #0
 810 01fe FB60     		str	r3, [r7, #12]
 811 0200 1CE0     		b	.L39
 812              	.L40:
 813              	.LBB7:
 269:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 270:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
 814              		.loc 1 270 0 discriminator 3
 815 0202 7B68     		ldr	r3, [r7, #4]
 816 0204 DA68     		ldr	r2, [r3, #12]
 817 0206 7B68     		ldr	r3, [r7, #4]
 818 0208 1968     		ldr	r1, [r3]
 819 020a FB68     		ldr	r3, [r7, #12]
 820 020c 0433     		adds	r3, r3, #4
 821 020e 5B00     		lsls	r3, r3, #1
 822 0210 CB18     		adds	r3, r1, r3
 823 0212 0433     		adds	r3, r3, #4
 824 0214 1B78     		ldrb	r3, [r3]
 825 0216 D018     		adds	r0, r2, r3
 826 0218 7B68     		ldr	r3, [r7, #4]
 827 021a 1A69     		ldr	r2, [r3, #16]
 828 021c 7B68     		ldr	r3, [r7, #4]
 829 021e 1968     		ldr	r1, [r3]
 830 0220 FB68     		ldr	r3, [r7, #12]
 831 0222 0433     		adds	r3, r3, #4
 832 0224 5B00     		lsls	r3, r3, #1
 833 0226 CB18     		adds	r3, r1, r3
 834 0228 0533     		adds	r3, r3, #5
 835 022a 1B78     		ldrb	r3, [r3]
 836 022c D318     		adds	r3, r2, r3
 837 022e 0022     		movs	r2, #0
 838 0230 1900     		movs	r1, r3
 839 0232 FFF7FEFF 		bl	pixel
 840              	.LBE7:
 268:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 841              		.loc 1 268 0 discriminator 3
 842 0236 FB68     		ldr	r3, [r7, #12]
 843 0238 0133     		adds	r3, r3, #1
 844 023a FB60     		str	r3, [r7, #12]
 845              	.L39:
 268:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 846              		.loc 1 268 0 is_stmt 0 discriminator 1
 847 023c FB68     		ldr	r3, [r7, #12]
 848 023e 034A     		ldr	r2, .L41
 849 0240 9342     		cmp	r3, r2
 850 0242 DEDD     		ble	.L40
 851              	.LBE6:
 271:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 272:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 273:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 274:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 852              		.loc 1 274 0 is_stmt 1
 853 0244 C046     		nop
 854 0246 BD46     		mov	sp, r7
 855 0248 04B0     		add	sp, sp, #16
 856              		@ sp needed
 857 024a 80BD     		pop	{r7, pc}
 858              	.L42:
 859              		.align	2
 860              	.L41:
 861 024c FF1F0000 		.word	8191
 862              		.cfi_endproc
 863              	.LFE7:
 865              		.align	1
 866              		.global	move_object
 867              		.syntax unified
 868              		.code	16
 869              		.thumb_func
 870              		.fpu softvfp
 872              	move_object:
 873              	.LFB8:
 275:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 276:Z:/MOP/3.3_codelite/lab_5\spel.c **** void move_object(POBJECT O){
 874              		.loc 1 276 0
 875              		.cfi_startproc
 876              		@ args = 0, pretend = 0, frame = 8
 877              		@ frame_needed = 1, uses_anonymous_args = 0
 878 0250 80B5     		push	{r7, lr}
 879              		.cfi_def_cfa_offset 8
 880              		.cfi_offset 7, -8
 881              		.cfi_offset 14, -4
 882 0252 82B0     		sub	sp, sp, #8
 883              		.cfi_def_cfa_offset 16
 884 0254 00AF     		add	r7, sp, #0
 885              		.cfi_def_cfa_register 7
 886 0256 7860     		str	r0, [r7, #4]
 277:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 278:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	clear_object(O);
 887              		.loc 1 278 0
 888 0258 7B68     		ldr	r3, [r7, #4]
 889 025a 1800     		movs	r0, r3
 890 025c FFF7FEFF 		bl	clear_object
 279:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 280:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	O->posx += O->dirx;
 891              		.loc 1 280 0
 892 0260 7B68     		ldr	r3, [r7, #4]
 893 0262 DA68     		ldr	r2, [r3, #12]
 894 0264 7B68     		ldr	r3, [r7, #4]
 895 0266 5B68     		ldr	r3, [r3, #4]
 896 0268 D218     		adds	r2, r2, r3
 897 026a 7B68     		ldr	r3, [r7, #4]
 898 026c DA60     		str	r2, [r3, #12]
 281:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 282:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	O->posy += O->diry;
 899              		.loc 1 282 0
 900 026e 7B68     		ldr	r3, [r7, #4]
 901 0270 1A69     		ldr	r2, [r3, #16]
 902 0272 7B68     		ldr	r3, [r7, #4]
 903 0274 9B68     		ldr	r3, [r3, #8]
 904 0276 D218     		adds	r2, r2, r3
 905 0278 7B68     		ldr	r3, [r7, #4]
 906 027a 1A61     		str	r2, [r3, #16]
 283:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 284:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if(O->posx < 1 || O->posx > 128){
 907              		.loc 1 284 0
 908 027c 7B68     		ldr	r3, [r7, #4]
 909 027e DB68     		ldr	r3, [r3, #12]
 910 0280 002B     		cmp	r3, #0
 911 0282 03DD     		ble	.L44
 912              		.loc 1 284 0 is_stmt 0 discriminator 1
 913 0284 7B68     		ldr	r3, [r7, #4]
 914 0286 DB68     		ldr	r3, [r3, #12]
 915 0288 802B     		cmp	r3, #128
 916 028a 05DD     		ble	.L45
 917              	.L44:
 285:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 286:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		O->dirx = -(O->dirx);
 918              		.loc 1 286 0 is_stmt 1
 919 028c 7B68     		ldr	r3, [r7, #4]
 920 028e 5B68     		ldr	r3, [r3, #4]
 921 0290 5A42     		rsbs	r2, r3, #0
 922 0292 7B68     		ldr	r3, [r7, #4]
 923 0294 5A60     		str	r2, [r3, #4]
 924 0296 11E0     		b	.L46
 925              	.L45:
 287:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 288:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 289:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 290:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	else if(O->posy < 1 || O->posy > 64 - O->geo->sizey){
 926              		.loc 1 290 0
 927 0298 7B68     		ldr	r3, [r7, #4]
 928 029a 1B69     		ldr	r3, [r3, #16]
 929 029c 002B     		cmp	r3, #0
 930 029e 08DD     		ble	.L47
 931              		.loc 1 290 0 is_stmt 0 discriminator 1
 932 02a0 7B68     		ldr	r3, [r7, #4]
 933 02a2 1A69     		ldr	r2, [r3, #16]
 934 02a4 7B68     		ldr	r3, [r7, #4]
 935 02a6 1B68     		ldr	r3, [r3]
 936 02a8 9B68     		ldr	r3, [r3, #8]
 937 02aa 4021     		movs	r1, #64
 938 02ac CB1A     		subs	r3, r1, r3
 939 02ae 9A42     		cmp	r2, r3
 940 02b0 04DD     		ble	.L46
 941              	.L47:
 291:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 292:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		O->diry = -(O->diry);
 942              		.loc 1 292 0 is_stmt 1
 943 02b2 7B68     		ldr	r3, [r7, #4]
 944 02b4 9B68     		ldr	r3, [r3, #8]
 945 02b6 5A42     		rsbs	r2, r3, #0
 946 02b8 7B68     		ldr	r3, [r7, #4]
 947 02ba 9A60     		str	r2, [r3, #8]
 948              	.L46:
 293:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 294:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 295:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 296:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	draw_object(O);
 949              		.loc 1 296 0
 950 02bc 7B68     		ldr	r3, [r7, #4]
 951 02be 1800     		movs	r0, r3
 952 02c0 FFF7FEFF 		bl	draw_object
 297:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 298:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 953              		.loc 1 298 0
 954 02c4 C046     		nop
 955 02c6 BD46     		mov	sp, r7
 956 02c8 02B0     		add	sp, sp, #8
 957              		@ sp needed
 958 02ca 80BD     		pop	{r7, pc}
 959              		.cfi_endproc
 960              	.LFE8:
 962              		.data
 963              		.align	2
 966              	ball:
 967 c024 00000000 		.word	ball_geometry
 968 c028 00000000 		.word	0
 969 c02c 00000000 		.word	0
 970 c030 01000000 		.word	1
 971 c034 01000000 		.word	1
 972 c038 00000000 		.word	draw_object
 973 c03c 00000000 		.word	clear_object
 974 c040 00000000 		.word	move_object
 975 c044 00000000 		.word	set_object_speed
 976              		.align	2
 979              	bar_1:
 980 c048 00000000 		.word	bar_1_geometry
 981 c04c 00000000 		.space	8
 981      00000000 
 982 c054 00000000 		.word	0
 983 c058 05000000 		.word	5
 984 c05c 00000000 		.word	draw_object
 985 c060 00000000 		.space	12
 985      00000000 
 985      00000000 
 986              		.align	2
 989              	bar_2:
 990 c06c 00000000 		.word	bar_2_geometry
 991 c070 00000000 		.space	8
 991      00000000 
 992 c078 7F000000 		.word	127
 993 c07c 05000000 		.word	5
 994 c080 00000000 		.word	draw_object
 995 c084 00000000 		.space	12
 995      00000000 
 995      00000000 
 996              		.text
 997              		.align	1
 998              		.syntax unified
 999              		.code	16
 1000              		.thumb_func
 1001              		.fpu softvfp
 1003              	graphic_ctrl_bit_set:
 1004              	.LFB9:
 299:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 300:Z:/MOP/3.3_codelite/lab_5\spel.c **** static OBJECT ball = 
 301:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 302:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.geo = &ball_geometry,
 303:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.dirx = 0,
 304:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.diry = 0,
 305:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posx = 1,
 306:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posy = 1,
 307:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	draw_object,
 308:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	clear_object,
 309:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	move_object,
 310:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	set_object_speed
 311:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 312:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 313:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 314:Z:/MOP/3.3_codelite/lab_5\spel.c **** static OBJECT bar_1 = 
 315:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 316:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.geo = &bar_1_geometry,
 317:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//.dirx = 0,
 318:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//.diry = 0,
 319:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posx = 0,
 320:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posy = 5,
 321:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	draw_object,
 322:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//clear_object,
 323:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//move_object,
 324:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//set_object_speed
 325:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
 326:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 327:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 328:Z:/MOP/3.3_codelite/lab_5\spel.c **** static OBJECT bar_2 = 
 329:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 330:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.geo = &bar_2_geometry,
 331:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//.dirx = 0,
 332:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//.diry = 0,
 333:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posx = 127,
 334:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posy = 5,
 335:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	draw_object,
 336:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//clear_object,
 337:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//move_object,
 338:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//set_object_speed
 339:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
 340:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 341:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 342:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 343:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_ctrl_bit_set(uint8_t x){
 1005              		.loc 1 343 0
 1006              		.cfi_startproc
 1007              		@ args = 0, pretend = 0, frame = 16
 1008              		@ frame_needed = 1, uses_anonymous_args = 0
 1009 02cc 80B5     		push	{r7, lr}
 1010              		.cfi_def_cfa_offset 8
 1011              		.cfi_offset 7, -8
 1012              		.cfi_offset 14, -4
 1013 02ce 84B0     		sub	sp, sp, #16
 1014              		.cfi_def_cfa_offset 24
 1015 02d0 00AF     		add	r7, sp, #0
 1016              		.cfi_def_cfa_register 7
 1017 02d2 0200     		movs	r2, r0
 1018 02d4 FB1D     		adds	r3, r7, #7
 1019 02d6 1A70     		strb	r2, [r3]
 344:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t c;
 345:Z:/MOP/3.3_codelite/lab_5\spel.c **** c =*portOdrLow;
 1020              		.loc 1 345 0
 1021 02d8 0F4A     		ldr	r2, .L49
 1022 02da 0F20     		movs	r0, #15
 1023 02dc 3B18     		adds	r3, r7, r0
 1024 02de 1278     		ldrb	r2, [r2]
 1025 02e0 1A70     		strb	r2, [r3]
 346:Z:/MOP/3.3_codelite/lab_5\spel.c **** c &=~B_SELECT;
 1026              		.loc 1 346 0
 1027 02e2 3B18     		adds	r3, r7, r0
 1028 02e4 3A18     		adds	r2, r7, r0
 1029 02e6 1278     		ldrb	r2, [r2]
 1030 02e8 0421     		movs	r1, #4
 1031 02ea 8A43     		bics	r2, r1
 1032 02ec 1A70     		strb	r2, [r3]
 347:Z:/MOP/3.3_codelite/lab_5\spel.c ****     c |=(~B_SELECT &x);
 1033              		.loc 1 347 0
 1034 02ee FB1D     		adds	r3, r7, #7
 1035 02f0 1B78     		ldrb	r3, [r3]
 1036 02f2 5BB2     		sxtb	r3, r3
 1037 02f4 0422     		movs	r2, #4
 1038 02f6 9343     		bics	r3, r2
 1039 02f8 5AB2     		sxtb	r2, r3
 1040 02fa 3B18     		adds	r3, r7, r0
 1041 02fc 1B78     		ldrb	r3, [r3]
 1042 02fe 5BB2     		sxtb	r3, r3
 1043 0300 1343     		orrs	r3, r2
 1044 0302 5AB2     		sxtb	r2, r3
 1045 0304 3B18     		adds	r3, r7, r0
 1046 0306 1A70     		strb	r2, [r3]
 348:Z:/MOP/3.3_codelite/lab_5\spel.c ****     *portOdrLow= c;
 1047              		.loc 1 348 0
 1048 0308 034A     		ldr	r2, .L49
 1049 030a 3B18     		adds	r3, r7, r0
 1050 030c 1B78     		ldrb	r3, [r3]
 1051 030e 1370     		strb	r3, [r2]
 349:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1052              		.loc 1 349 0
 1053 0310 C046     		nop
 1054 0312 BD46     		mov	sp, r7
 1055 0314 04B0     		add	sp, sp, #16
 1056              		@ sp needed
 1057 0316 80BD     		pop	{r7, pc}
 1058              	.L50:
 1059              		.align	2
 1060              	.L49:
 1061 0318 14100240 		.word	1073877012
 1062              		.cfi_endproc
 1063              	.LFE9:
 1065              		.align	1
 1066              		.syntax unified
 1067              		.code	16
 1068              		.thumb_func
 1069              		.fpu softvfp
 1071              	graphic_ctrl_bit_clear:
 1072              	.LFB10:
 350:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 351:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_ctrl_bit_clear(uint8_t x){
 1073              		.loc 1 351 0
 1074              		.cfi_startproc
 1075              		@ args = 0, pretend = 0, frame = 16
 1076              		@ frame_needed = 1, uses_anonymous_args = 0
 1077 031c 80B5     		push	{r7, lr}
 1078              		.cfi_def_cfa_offset 8
 1079              		.cfi_offset 7, -8
 1080              		.cfi_offset 14, -4
 1081 031e 84B0     		sub	sp, sp, #16
 1082              		.cfi_def_cfa_offset 24
 1083 0320 00AF     		add	r7, sp, #0
 1084              		.cfi_def_cfa_register 7
 1085 0322 0200     		movs	r2, r0
 1086 0324 FB1D     		adds	r3, r7, #7
 1087 0326 1A70     		strb	r2, [r3]
 352:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t c;
 353:Z:/MOP/3.3_codelite/lab_5\spel.c **** c = *portOdrLow;
 1088              		.loc 1 353 0
 1089 0328 0F4A     		ldr	r2, .L52
 1090 032a 0F20     		movs	r0, #15
 1091 032c 3B18     		adds	r3, r7, r0
 1092 032e 1278     		ldrb	r2, [r2]
 1093 0330 1A70     		strb	r2, [r3]
 354:Z:/MOP/3.3_codelite/lab_5\spel.c **** c &=~B_SELECT;
 1094              		.loc 1 354 0
 1095 0332 3B18     		adds	r3, r7, r0
 1096 0334 3A18     		adds	r2, r7, r0
 1097 0336 1278     		ldrb	r2, [r2]
 1098 0338 0421     		movs	r1, #4
 1099 033a 8A43     		bics	r2, r1
 1100 033c 1A70     		strb	r2, [r3]
 355:Z:/MOP/3.3_codelite/lab_5\spel.c **** c &=~x;
 1101              		.loc 1 355 0
 1102 033e FB1D     		adds	r3, r7, #7
 1103 0340 1B78     		ldrb	r3, [r3]
 1104 0342 5BB2     		sxtb	r3, r3
 1105 0344 DB43     		mvns	r3, r3
 1106 0346 5BB2     		sxtb	r3, r3
 1107 0348 3A18     		adds	r2, r7, r0
 1108 034a 1278     		ldrb	r2, [r2]
 1109 034c 52B2     		sxtb	r2, r2
 1110 034e 1340     		ands	r3, r2
 1111 0350 5AB2     		sxtb	r2, r3
 1112 0352 3B18     		adds	r3, r7, r0
 1113 0354 1A70     		strb	r2, [r3]
 356:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portOdrLow=c;
 1114              		.loc 1 356 0
 1115 0356 044A     		ldr	r2, .L52
 1116 0358 3B18     		adds	r3, r7, r0
 1117 035a 1B78     		ldrb	r3, [r3]
 1118 035c 1370     		strb	r3, [r2]
 357:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1119              		.loc 1 357 0
 1120 035e C046     		nop
 1121 0360 BD46     		mov	sp, r7
 1122 0362 04B0     		add	sp, sp, #16
 1123              		@ sp needed
 1124 0364 80BD     		pop	{r7, pc}
 1125              	.L53:
 1126 0366 C046     		.align	2
 1127              	.L52:
 1128 0368 14100240 		.word	1073877012
 1129              		.cfi_endproc
 1130              	.LFE10:
 1132              		.align	1
 1133              		.syntax unified
 1134              		.code	16
 1135              		.thumb_func
 1136              		.fpu softvfp
 1138              	select_controller:
 1139              	.LFB11:
 358:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 359:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void select_controller(uint8_t controller){
 1140              		.loc 1 359 0
 1141              		.cfi_startproc
 1142              		@ args = 0, pretend = 0, frame = 8
 1143              		@ frame_needed = 1, uses_anonymous_args = 0
 1144 036c 80B5     		push	{r7, lr}
 1145              		.cfi_def_cfa_offset 8
 1146              		.cfi_offset 7, -8
 1147              		.cfi_offset 14, -4
 1148 036e 82B0     		sub	sp, sp, #8
 1149              		.cfi_def_cfa_offset 16
 1150 0370 00AF     		add	r7, sp, #0
 1151              		.cfi_def_cfa_register 7
 1152 0372 0200     		movs	r2, r0
 1153 0374 FB1D     		adds	r3, r7, #7
 1154 0376 1A70     		strb	r2, [r3]
 360:Z:/MOP/3.3_codelite/lab_5\spel.c **** switch(controller){
 1155              		.loc 1 360 0
 1156 0378 FB1D     		adds	r3, r7, #7
 1157 037a 1B78     		ldrb	r3, [r3]
 1158 037c 082B     		cmp	r3, #8
 1159 037e 0CD0     		beq	.L56
 1160 0380 02DC     		bgt	.L57
 1161 0382 002B     		cmp	r3, #0
 1162 0384 05D0     		beq	.L58
 361:Z:/MOP/3.3_codelite/lab_5\spel.c **** case 0:graphic_ctrl_bit_clear(B_CS1|B_CS2); break;
 362:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS1 :graphic_ctrl_bit_set(B_CS1);
 363:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS2); break;
 364:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS2 :graphic_ctrl_bit_set(B_CS2);
 365:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS1); break;
 366:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS1|B_CS2 :graphic_ctrl_bit_set(B_CS1|B_CS2); break;
 367:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 368:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1163              		.loc 1 368 0
 1164 0386 1AE0     		b	.L61
 1165              	.L57:
 360:Z:/MOP/3.3_codelite/lab_5\spel.c **** switch(controller){
 1166              		.loc 1 360 0
 1167 0388 102B     		cmp	r3, #16
 1168 038a 0DD0     		beq	.L59
 1169 038c 182B     		cmp	r3, #24
 1170 038e 12D0     		beq	.L60
 1171              		.loc 1 368 0
 1172 0390 15E0     		b	.L61
 1173              	.L58:
 361:Z:/MOP/3.3_codelite/lab_5\spel.c **** case 0:graphic_ctrl_bit_clear(B_CS1|B_CS2); break;
 1174              		.loc 1 361 0
 1175 0392 1820     		movs	r0, #24
 1176 0394 FFF7C2FF 		bl	graphic_ctrl_bit_clear
 1177 0398 11E0     		b	.L55
 1178              	.L56:
 362:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS2); break;
 1179              		.loc 1 362 0
 1180 039a 0820     		movs	r0, #8
 1181 039c FFF796FF 		bl	graphic_ctrl_bit_set
 363:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS2 :graphic_ctrl_bit_set(B_CS2);
 1182              		.loc 1 363 0
 1183 03a0 1020     		movs	r0, #16
 1184 03a2 FFF7BBFF 		bl	graphic_ctrl_bit_clear
 1185 03a6 0AE0     		b	.L55
 1186              	.L59:
 364:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS1); break;
 1187              		.loc 1 364 0
 1188 03a8 1020     		movs	r0, #16
 1189 03aa FFF78FFF 		bl	graphic_ctrl_bit_set
 365:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS1|B_CS2 :graphic_ctrl_bit_set(B_CS1|B_CS2); break;
 1190              		.loc 1 365 0
 1191 03ae 0820     		movs	r0, #8
 1192 03b0 FFF7B4FF 		bl	graphic_ctrl_bit_clear
 1193 03b4 03E0     		b	.L55
 1194              	.L60:
 366:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1195              		.loc 1 366 0
 1196 03b6 1820     		movs	r0, #24
 1197 03b8 FFF788FF 		bl	graphic_ctrl_bit_set
 1198 03bc C046     		nop
 1199              	.L55:
 1200              	.L61:
 1201              		.loc 1 368 0
 1202 03be C046     		nop
 1203 03c0 BD46     		mov	sp, r7
 1204 03c2 02B0     		add	sp, sp, #8
 1205              		@ sp needed
 1206 03c4 80BD     		pop	{r7, pc}
 1207              		.cfi_endproc
 1208              	.LFE11:
 1210              		.align	1
 1211              		.syntax unified
 1212              		.code	16
 1213              		.thumb_func
 1214              		.fpu softvfp
 1216              	graphic_wait_ready:
 1217              	.LFB12:
 369:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 370:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 371:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_wait_ready(void){
 1218              		.loc 1 371 0
 1219              		.cfi_startproc
 1220              		@ args = 0, pretend = 0, frame = 8
 1221              		@ frame_needed = 1, uses_anonymous_args = 0
 1222 03c6 80B5     		push	{r7, lr}
 1223              		.cfi_def_cfa_offset 8
 1224              		.cfi_offset 7, -8
 1225              		.cfi_offset 14, -4
 1226 03c8 82B0     		sub	sp, sp, #8
 1227              		.cfi_def_cfa_offset 16
 1228 03ca 00AF     		add	r7, sp, #0
 1229              		.cfi_def_cfa_register 7
 372:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t c;
 373:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1230              		.loc 1 373 0
 1231 03cc 4020     		movs	r0, #64
 1232 03ce FFF7A5FF 		bl	graphic_ctrl_bit_clear
 374:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portModer =0x00005555;// 15-8 inputs, 7-0 outputs
 1233              		.loc 1 374 0
 1234 03d2 144B     		ldr	r3, .L68
 1235 03d4 144A     		ldr	r2, .L68+4
 1236 03d6 1A60     		str	r2, [r3]
 375:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_RS);
 1237              		.loc 1 375 0
 1238 03d8 0120     		movs	r0, #1
 1239 03da FFF79FFF 		bl	graphic_ctrl_bit_clear
 376:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_RW);
 1240              		.loc 1 376 0
 1241 03de 0220     		movs	r0, #2
 1242 03e0 FFF774FF 		bl	graphic_ctrl_bit_set
 377:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1243              		.loc 1 377 0
 1244 03e4 FFF7FEFF 		bl	delay_500ns
 1245              	.L65:
 378:Z:/MOP/3.3_codelite/lab_5\spel.c **** while(1){
 379:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 1246              		.loc 1 379 0
 1247 03e8 4020     		movs	r0, #64
 1248 03ea FFF76FFF 		bl	graphic_ctrl_bit_set
 380:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1249              		.loc 1 380 0
 1250 03ee FFF7FEFF 		bl	delay_500ns
 381:Z:/MOP/3.3_codelite/lab_5\spel.c **** c =*portIdrHigh &LCD_BUSY;
 1251              		.loc 1 381 0
 1252 03f2 0E4B     		ldr	r3, .L68+8
 1253 03f4 1B78     		ldrb	r3, [r3]
 1254 03f6 DAB2     		uxtb	r2, r3
 1255 03f8 FB1D     		adds	r3, r7, #7
 1256 03fa 7F21     		movs	r1, #127
 1257 03fc 8A43     		bics	r2, r1
 1258 03fe 1A70     		strb	r2, [r3]
 382:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1259              		.loc 1 382 0
 1260 0400 4020     		movs	r0, #64
 1261 0402 FFF78BFF 		bl	graphic_ctrl_bit_clear
 383:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1262              		.loc 1 383 0
 1263 0406 FFF7FEFF 		bl	delay_500ns
 384:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(c ==0) break;
 1264              		.loc 1 384 0
 1265 040a FB1D     		adds	r3, r7, #7
 1266 040c 1B78     		ldrb	r3, [r3]
 1267 040e 002B     		cmp	r3, #0
 1268 0410 00D0     		beq	.L67
 379:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1269              		.loc 1 379 0
 1270 0412 E9E7     		b	.L65
 1271              	.L67:
 1272              		.loc 1 384 0
 1273 0414 C046     		nop
 385:Z:/MOP/3.3_codelite/lab_5\spel.c **** }*portModer =0x55555555;// 15-0 outputs
 1274              		.loc 1 385 0
 1275 0416 034B     		ldr	r3, .L68
 1276 0418 054A     		ldr	r2, .L68+12
 1277 041a 1A60     		str	r2, [r3]
 386:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1278              		.loc 1 386 0
 1279 041c C046     		nop
 1280 041e BD46     		mov	sp, r7
 1281 0420 02B0     		add	sp, sp, #8
 1282              		@ sp needed
 1283 0422 80BD     		pop	{r7, pc}
 1284              	.L69:
 1285              		.align	2
 1286              	.L68:
 1287 0424 00100240 		.word	1073876992
 1288 0428 55550000 		.word	21845
 1289 042c 11100240 		.word	1073877009
 1290 0430 55555555 		.word	1431655765
 1291              		.cfi_endproc
 1292              	.LFE12:
 1294              		.align	1
 1295              		.global	graphic_write
 1296              		.syntax unified
 1297              		.code	16
 1298              		.thumb_func
 1299              		.fpu softvfp
 1301              	graphic_write:
 1302              	.LFB13:
 387:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 388:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 389:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_write(uint8_t value, uint8_t controller) {
 1303              		.loc 1 389 0
 1304              		.cfi_startproc
 1305              		@ args = 0, pretend = 0, frame = 8
 1306              		@ frame_needed = 1, uses_anonymous_args = 0
 1307 0434 80B5     		push	{r7, lr}
 1308              		.cfi_def_cfa_offset 8
 1309              		.cfi_offset 7, -8
 1310              		.cfi_offset 14, -4
 1311 0436 82B0     		sub	sp, sp, #8
 1312              		.cfi_def_cfa_offset 16
 1313 0438 00AF     		add	r7, sp, #0
 1314              		.cfi_def_cfa_register 7
 1315 043a 0200     		movs	r2, r0
 1316 043c FB1D     		adds	r3, r7, #7
 1317 043e 1A70     		strb	r2, [r3]
 1318 0440 BB1D     		adds	r3, r7, #6
 1319 0442 0A1C     		adds	r2, r1, #0
 1320 0444 1A70     		strb	r2, [r3]
 390:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 391:Z:/MOP/3.3_codelite/lab_5\spel.c **** DATA_WR = value;
 1321              		.loc 1 391 0
 1322 0446 1A4A     		ldr	r2, .L73
 1323 0448 FB1D     		adds	r3, r7, #7
 1324 044a 1B78     		ldrb	r3, [r3]
 1325 044c 1370     		strb	r3, [r2]
 392:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 393:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(controller);
 1326              		.loc 1 393 0
 1327 044e BB1D     		adds	r3, r7, #6
 1328 0450 1B78     		ldrb	r3, [r3]
 1329 0452 1800     		movs	r0, r3
 1330 0454 FFF78AFF 		bl	select_controller
 394:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 395:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1331              		.loc 1 395 0
 1332 0458 FFF7FEFF 		bl	delay_500ns
 396:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 397:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 1333              		.loc 1 397 0
 1334 045c 4020     		movs	r0, #64
 1335 045e FFF735FF 		bl	graphic_ctrl_bit_set
 398:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 399:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1336              		.loc 1 399 0
 1337 0462 FFF7FEFF 		bl	delay_500ns
 400:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 401:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1338              		.loc 1 401 0
 1339 0466 4020     		movs	r0, #64
 1340 0468 FFF758FF 		bl	graphic_ctrl_bit_clear
 402:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 403:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(controller & B_CS1) {
 1341              		.loc 1 403 0
 1342 046c BB1D     		adds	r3, r7, #6
 1343 046e 1B78     		ldrb	r3, [r3]
 1344 0470 0822     		movs	r2, #8
 1345 0472 1340     		ands	r3, r2
 1346 0474 04D0     		beq	.L71
 404:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 405:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(B_CS1);
 1347              		.loc 1 405 0
 1348 0476 0820     		movs	r0, #8
 1349 0478 FFF778FF 		bl	select_controller
 406:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 407:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_wait_ready();
 1350              		.loc 1 407 0
 1351 047c FFF7A3FF 		bl	graphic_wait_ready
 1352              	.L71:
 408:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 409:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 410:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 411:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(controller & B_CS2) {
 1353              		.loc 1 411 0
 1354 0480 BB1D     		adds	r3, r7, #6
 1355 0482 1B78     		ldrb	r3, [r3]
 1356 0484 1022     		movs	r2, #16
 1357 0486 1340     		ands	r3, r2
 1358 0488 04D0     		beq	.L72
 412:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 413:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(B_CS2);
 1359              		.loc 1 413 0
 1360 048a 1020     		movs	r0, #16
 1361 048c FFF76EFF 		bl	select_controller
 414:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 415:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_wait_ready();
 1362              		.loc 1 415 0
 1363 0490 FFF799FF 		bl	graphic_wait_ready
 1364              	.L72:
 416:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 417:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 418:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 419:Z:/MOP/3.3_codelite/lab_5\spel.c **** DATA_WR = 0;
 1365              		.loc 1 419 0
 1366 0494 064B     		ldr	r3, .L73
 1367 0496 0022     		movs	r2, #0
 1368 0498 1A70     		strb	r2, [r3]
 420:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 421:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 1369              		.loc 1 421 0
 1370 049a 4020     		movs	r0, #64
 1371 049c FFF716FF 		bl	graphic_ctrl_bit_set
 422:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 423:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(0);
 1372              		.loc 1 423 0
 1373 04a0 0020     		movs	r0, #0
 1374 04a2 FFF763FF 		bl	select_controller
 424:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 425:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1375              		.loc 1 425 0
 1376 04a6 C046     		nop
 1377 04a8 BD46     		mov	sp, r7
 1378 04aa 02B0     		add	sp, sp, #8
 1379              		@ sp needed
 1380 04ac 80BD     		pop	{r7, pc}
 1381              	.L74:
 1382 04ae C046     		.align	2
 1383              	.L73:
 1384 04b0 15100240 		.word	1073877013
 1385              		.cfi_endproc
 1386              	.LFE13:
 1388              		.align	1
 1389              		.global	graphic_clear_screen
 1390              		.syntax unified
 1391              		.code	16
 1392              		.thumb_func
 1393              		.fpu softvfp
 1395              	graphic_clear_screen:
 1396              	.LFB14:
 426:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 427:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_clear_screen(void){
 1397              		.loc 1 427 0
 1398              		.cfi_startproc
 1399              		@ args = 0, pretend = 0, frame = 8
 1400              		@ frame_needed = 1, uses_anonymous_args = 0
 1401 04b4 80B5     		push	{r7, lr}
 1402              		.cfi_def_cfa_offset 8
 1403              		.cfi_offset 7, -8
 1404              		.cfi_offset 14, -4
 1405 04b6 82B0     		sub	sp, sp, #8
 1406              		.cfi_def_cfa_offset 16
 1407 04b8 00AF     		add	r7, sp, #0
 1408              		.cfi_def_cfa_register 7
 428:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t i,j;
 429:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <8;j++){
 1409              		.loc 1 429 0
 1410 04ba BB1D     		adds	r3, r7, #6
 1411 04bc 0022     		movs	r2, #0
 1412 04be 1A70     		strb	r2, [r3]
 1413 04c0 23E0     		b	.L76
 1414              	.L79:
 1415              	.LBB8:
 430:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,B_CS1|B_CS2);
 1416              		.loc 1 430 0
 1417 04c2 BB1D     		adds	r3, r7, #6
 1418 04c4 1B78     		ldrb	r3, [r3]
 1419 04c6 4822     		movs	r2, #72
 1420 04c8 5242     		rsbs	r2, r2, #0
 1421 04ca 1343     		orrs	r3, r2
 1422 04cc DBB2     		uxtb	r3, r3
 1423 04ce 1821     		movs	r1, #24
 1424 04d0 1800     		movs	r0, r3
 1425 04d2 FFF7FEFF 		bl	graphic_write_command
 431:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD  |0,B_CS1|B_CS2);
 1426              		.loc 1 431 0
 1427 04d6 1821     		movs	r1, #24
 1428 04d8 4020     		movs	r0, #64
 1429 04da FFF7FEFF 		bl	graphic_write_command
 432:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++){
 1430              		.loc 1 432 0
 1431 04de FB1D     		adds	r3, r7, #7
 1432 04e0 0022     		movs	r2, #0
 1433 04e2 1A70     		strb	r2, [r3]
 1434 04e4 08E0     		b	.L77
 1435              	.L78:
 433:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(0,B_CS1|B_CS2);
 1436              		.loc 1 433 0 discriminator 3
 1437 04e6 1821     		movs	r1, #24
 1438 04e8 0020     		movs	r0, #0
 1439 04ea FFF7FEFF 		bl	graphic_write
 432:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++){
 1440              		.loc 1 432 0 discriminator 3
 1441 04ee FB1D     		adds	r3, r7, #7
 1442 04f0 1A78     		ldrb	r2, [r3]
 1443 04f2 FB1D     		adds	r3, r7, #7
 1444 04f4 0132     		adds	r2, r2, #1
 1445 04f6 1A70     		strb	r2, [r3]
 1446              	.L77:
 432:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++){
 1447              		.loc 1 432 0 is_stmt 0 discriminator 1
 1448 04f8 FB1D     		adds	r3, r7, #7
 1449 04fa 1B78     		ldrb	r3, [r3]
 1450 04fc 3F2B     		cmp	r3, #63
 1451 04fe F2D9     		bls	.L78
 1452              	.LBE8:
 429:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,B_CS1|B_CS2);
 1453              		.loc 1 429 0 is_stmt 1 discriminator 2
 1454 0500 BB1D     		adds	r3, r7, #6
 1455 0502 1A78     		ldrb	r2, [r3]
 1456 0504 BB1D     		adds	r3, r7, #6
 1457 0506 0132     		adds	r2, r2, #1
 1458 0508 1A70     		strb	r2, [r3]
 1459              	.L76:
 429:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,B_CS1|B_CS2);
 1460              		.loc 1 429 0 is_stmt 0 discriminator 1
 1461 050a BB1D     		adds	r3, r7, #6
 1462 050c 1B78     		ldrb	r3, [r3]
 1463 050e 072B     		cmp	r3, #7
 1464 0510 D7D9     		bls	.L79
 434:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 435:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 436:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1465              		.loc 1 436 0 is_stmt 1
 1466 0512 C046     		nop
 1467 0514 BD46     		mov	sp, r7
 1468 0516 02B0     		add	sp, sp, #8
 1469              		@ sp needed
 1470 0518 80BD     		pop	{r7, pc}
 1471              		.cfi_endproc
 1472              	.LFE14:
 1474              		.align	1
 1475              		.global	delay_250ns
 1476              		.syntax unified
 1477              		.code	16
 1478              		.thumb_func
 1479              		.fpu softvfp
 1481              	delay_250ns:
 1482              	.LFB15:
 437:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 438:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 439:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 440:Z:/MOP/3.3_codelite/lab_5\spel.c **** void delay_250ns(void){
 1483              		.loc 1 440 0
 1484              		.cfi_startproc
 1485              		@ args = 0, pretend = 0, frame = 0
 1486              		@ frame_needed = 1, uses_anonymous_args = 0
 1487 051a 80B5     		push	{r7, lr}
 1488              		.cfi_def_cfa_offset 8
 1489              		.cfi_offset 7, -8
 1490              		.cfi_offset 14, -4
 1491 051c 00AF     		add	r7, sp, #0
 1492              		.cfi_def_cfa_register 7
 441:Z:/MOP/3.3_codelite/lab_5\spel.c **** #ifdef SIMULATOR
 442:Z:/MOP/3.3_codelite/lab_5\spel.c **** return;
 1493              		.loc 1 442 0
 1494 051e C046     		nop
 443:Z:/MOP/3.3_codelite/lab_5\spel.c **** #endif
 444:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_CTRL = 0;
 445:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_LOAD = ((168/4)-1);
 446:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_VAL = 0;
 447:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_CTRL = 5;
 448:Z:/MOP/3.3_codelite/lab_5\spel.c **** while((*STK_CTRL & 0x10000) ==0){}
 449:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_CTRL=0;
 450:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 451:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1495              		.loc 1 451 0
 1496 0520 BD46     		mov	sp, r7
 1497              		@ sp needed
 1498 0522 80BD     		pop	{r7, pc}
 1499              		.cfi_endproc
 1500              	.LFE15:
 1502              		.align	1
 1503              		.global	delay_500ns
 1504              		.syntax unified
 1505              		.code	16
 1506              		.thumb_func
 1507              		.fpu softvfp
 1509              	delay_500ns:
 1510              	.LFB16:
 452:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 453:Z:/MOP/3.3_codelite/lab_5\spel.c **** void delay_500ns(unsigned int us){
 1511              		.loc 1 453 0
 1512              		.cfi_startproc
 1513              		@ args = 0, pretend = 0, frame = 8
 1514              		@ frame_needed = 1, uses_anonymous_args = 0
 1515 0524 80B5     		push	{r7, lr}
 1516              		.cfi_def_cfa_offset 8
 1517              		.cfi_offset 7, -8
 1518              		.cfi_offset 14, -4
 1519 0526 82B0     		sub	sp, sp, #8
 1520              		.cfi_def_cfa_offset 16
 1521 0528 00AF     		add	r7, sp, #0
 1522              		.cfi_def_cfa_register 7
 1523 052a 7860     		str	r0, [r7, #4]
 454:Z:/MOP/3.3_codelite/lab_5\spel.c ****     while(us--) {
 1524              		.loc 1 454 0
 1525 052c 03E0     		b	.L83
 1526              	.L84:
 455:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 1527              		.loc 1 455 0
 1528 052e FFF7FEFF 		bl	delay_250ns
 456:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 1529              		.loc 1 456 0
 1530 0532 FFF7FEFF 		bl	delay_250ns
 1531              	.L83:
 454:Z:/MOP/3.3_codelite/lab_5\spel.c ****     while(us--) {
 1532              		.loc 1 454 0
 1533 0536 7B68     		ldr	r3, [r7, #4]
 1534 0538 5A1E     		subs	r2, r3, #1
 1535 053a 7A60     		str	r2, [r7, #4]
 1536 053c 002B     		cmp	r3, #0
 1537 053e F6D1     		bne	.L84
 457:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 458:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 459:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1538              		.loc 1 459 0
 1539 0540 C046     		nop
 1540 0542 BD46     		mov	sp, r7
 1541 0544 02B0     		add	sp, sp, #8
 1542              		@ sp needed
 1543 0546 80BD     		pop	{r7, pc}
 1544              		.cfi_endproc
 1545              	.LFE16:
 1547              		.align	1
 1548              		.global	delay_micro
 1549              		.syntax unified
 1550              		.code	16
 1551              		.thumb_func
 1552              		.fpu softvfp
 1554              	delay_micro:
 1555              	.LFB17:
 460:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 461:Z:/MOP/3.3_codelite/lab_5\spel.c **** void delay_micro(unsigned int us){
 1556              		.loc 1 461 0
 1557              		.cfi_startproc
 1558              		@ args = 0, pretend = 0, frame = 8
 1559              		@ frame_needed = 1, uses_anonymous_args = 0
 1560 0548 80B5     		push	{r7, lr}
 1561              		.cfi_def_cfa_offset 8
 1562              		.cfi_offset 7, -8
 1563              		.cfi_offset 14, -4
 1564 054a 82B0     		sub	sp, sp, #8
 1565              		.cfi_def_cfa_offset 16
 1566 054c 00AF     		add	r7, sp, #0
 1567              		.cfi_def_cfa_register 7
 1568 054e 7860     		str	r0, [r7, #4]
 462:Z:/MOP/3.3_codelite/lab_5\spel.c **** while(us--) {
 1569              		.loc 1 462 0
 1570 0550 07E0     		b	.L86
 1571              	.L87:
 463:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 1572              		.loc 1 463 0
 1573 0552 FFF7FEFF 		bl	delay_250ns
 464:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 1574              		.loc 1 464 0
 1575 0556 FFF7FEFF 		bl	delay_250ns
 465:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 1576              		.loc 1 465 0
 1577 055a FFF7FEFF 		bl	delay_250ns
 466:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 1578              		.loc 1 466 0
 1579 055e FFF7FEFF 		bl	delay_250ns
 1580              	.L86:
 462:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 1581              		.loc 1 462 0
 1582 0562 7B68     		ldr	r3, [r7, #4]
 1583 0564 5A1E     		subs	r2, r3, #1
 1584 0566 7A60     		str	r2, [r7, #4]
 1585 0568 002B     		cmp	r3, #0
 1586 056a F2D1     		bne	.L87
 467:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 468:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1587              		.loc 1 468 0
 1588 056c C046     		nop
 1589 056e BD46     		mov	sp, r7
 1590 0570 02B0     		add	sp, sp, #8
 1591              		@ sp needed
 1592 0572 80BD     		pop	{r7, pc}
 1593              		.cfi_endproc
 1594              	.LFE17:
 1596              		.global	__aeabi_uidiv
 1597              		.align	1
 1598              		.global	delay_milli
 1599              		.syntax unified
 1600              		.code	16
 1601              		.thumb_func
 1602              		.fpu softvfp
 1604              	delay_milli:
 1605              	.LFB18:
 469:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 470:Z:/MOP/3.3_codelite/lab_5\spel.c **** void delay_milli(unsigned int ms){
 1606              		.loc 1 470 0
 1607              		.cfi_startproc
 1608              		@ args = 0, pretend = 0, frame = 8
 1609              		@ frame_needed = 1, uses_anonymous_args = 0
 1610 0574 80B5     		push	{r7, lr}
 1611              		.cfi_def_cfa_offset 8
 1612              		.cfi_offset 7, -8
 1613              		.cfi_offset 14, -4
 1614 0576 82B0     		sub	sp, sp, #8
 1615              		.cfi_def_cfa_offset 16
 1616 0578 00AF     		add	r7, sp, #0
 1617              		.cfi_def_cfa_register 7
 1618 057a 7860     		str	r0, [r7, #4]
 471:Z:/MOP/3.3_codelite/lab_5\spel.c **** #ifdef SIMULATOR
 472:Z:/MOP/3.3_codelite/lab_5\spel.c **** ms = ms/1000;
 1619              		.loc 1 472 0
 1620 057c 7A68     		ldr	r2, [r7, #4]
 1621 057e FA23     		movs	r3, #250
 1622 0580 9900     		lsls	r1, r3, #2
 1623 0582 1000     		movs	r0, r2
 1624 0584 FFF7FEFF 		bl	__aeabi_uidiv
 1625              	.LVL0:
 1626 0588 0300     		movs	r3, r0
 1627 058a 7B60     		str	r3, [r7, #4]
 473:Z:/MOP/3.3_codelite/lab_5\spel.c **** ms++;
 1628              		.loc 1 473 0
 1629 058c 7B68     		ldr	r3, [r7, #4]
 1630 058e 0133     		adds	r3, r3, #1
 1631 0590 7B60     		str	r3, [r7, #4]
 474:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 475:Z:/MOP/3.3_codelite/lab_5\spel.c **** #endif
 476:Z:/MOP/3.3_codelite/lab_5\spel.c **** while(ms--)
 1632              		.loc 1 476 0
 1633 0592 04E0     		b	.L89
 1634              	.L90:
 477:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_micro(1000);
 1635              		.loc 1 477 0
 1636 0594 FA23     		movs	r3, #250
 1637 0596 9B00     		lsls	r3, r3, #2
 1638 0598 1800     		movs	r0, r3
 1639 059a FFF7FEFF 		bl	delay_micro
 1640              	.L89:
 476:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_micro(1000);
 1641              		.loc 1 476 0
 1642 059e 7B68     		ldr	r3, [r7, #4]
 1643 05a0 5A1E     		subs	r2, r3, #1
 1644 05a2 7A60     		str	r2, [r7, #4]
 1645 05a4 002B     		cmp	r3, #0
 1646 05a6 F5D1     		bne	.L90
 478:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1647              		.loc 1 478 0
 1648 05a8 C046     		nop
 1649 05aa BD46     		mov	sp, r7
 1650 05ac 02B0     		add	sp, sp, #8
 1651              		@ sp needed
 1652 05ae 80BD     		pop	{r7, pc}
 1653              		.cfi_endproc
 1654              	.LFE18:
 1656              		.align	1
 1657              		.global	graphic_write_command
 1658              		.syntax unified
 1659              		.code	16
 1660              		.thumb_func
 1661              		.fpu softvfp
 1663              	graphic_write_command:
 1664              	.LFB19:
 479:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 480:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 481:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 482:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 483:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_write_command(uint8_t commandToWrite, uint8_t controller) {
 1665              		.loc 1 483 0
 1666              		.cfi_startproc
 1667              		@ args = 0, pretend = 0, frame = 8
 1668              		@ frame_needed = 1, uses_anonymous_args = 0
 1669 05b0 80B5     		push	{r7, lr}
 1670              		.cfi_def_cfa_offset 8
 1671              		.cfi_offset 7, -8
 1672              		.cfi_offset 14, -4
 1673 05b2 82B0     		sub	sp, sp, #8
 1674              		.cfi_def_cfa_offset 16
 1675 05b4 00AF     		add	r7, sp, #0
 1676              		.cfi_def_cfa_register 7
 1677 05b6 0200     		movs	r2, r0
 1678 05b8 FB1D     		adds	r3, r7, #7
 1679 05ba 1A70     		strb	r2, [r3]
 1680 05bc BB1D     		adds	r3, r7, #6
 1681 05be 0A1C     		adds	r2, r1, #0
 1682 05c0 1A70     		strb	r2, [r3]
 484:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 485:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1683              		.loc 1 485 0
 1684 05c2 4020     		movs	r0, #64
 1685 05c4 FFF7AAFE 		bl	graphic_ctrl_bit_clear
 486:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 487:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(controller);
 1686              		.loc 1 487 0
 1687 05c8 BB1D     		adds	r3, r7, #6
 1688 05ca 1B78     		ldrb	r3, [r3]
 1689 05cc 1800     		movs	r0, r3
 1690 05ce FFF7CDFE 		bl	select_controller
 488:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 489:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_RS | B_RW);
 1691              		.loc 1 489 0
 1692 05d2 0320     		movs	r0, #3
 1693 05d4 FFF7A2FE 		bl	graphic_ctrl_bit_clear
 490:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 491:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(commandToWrite, controller);
 1694              		.loc 1 491 0
 1695 05d8 BB1D     		adds	r3, r7, #6
 1696 05da 1A78     		ldrb	r2, [r3]
 1697 05dc FB1D     		adds	r3, r7, #7
 1698 05de 1B78     		ldrb	r3, [r3]
 1699 05e0 1100     		movs	r1, r2
 1700 05e2 1800     		movs	r0, r3
 1701 05e4 FFF7FEFF 		bl	graphic_write
 492:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 493:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1702              		.loc 1 493 0
 1703 05e8 C046     		nop
 1704 05ea BD46     		mov	sp, r7
 1705 05ec 02B0     		add	sp, sp, #8
 1706              		@ sp needed
 1707 05ee 80BD     		pop	{r7, pc}
 1708              		.cfi_endproc
 1709              	.LFE19:
 1711              		.align	1
 1712              		.global	graphic_write_data
 1713              		.syntax unified
 1714              		.code	16
 1715              		.thumb_func
 1716              		.fpu softvfp
 1718              	graphic_write_data:
 1719              	.LFB20:
 494:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 495:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_write_data(uint8_t data, uint8_t controller) {
 1720              		.loc 1 495 0
 1721              		.cfi_startproc
 1722              		@ args = 0, pretend = 0, frame = 8
 1723              		@ frame_needed = 1, uses_anonymous_args = 0
 1724 05f0 80B5     		push	{r7, lr}
 1725              		.cfi_def_cfa_offset 8
 1726              		.cfi_offset 7, -8
 1727              		.cfi_offset 14, -4
 1728 05f2 82B0     		sub	sp, sp, #8
 1729              		.cfi_def_cfa_offset 16
 1730 05f4 00AF     		add	r7, sp, #0
 1731              		.cfi_def_cfa_register 7
 1732 05f6 0200     		movs	r2, r0
 1733 05f8 FB1D     		adds	r3, r7, #7
 1734 05fa 1A70     		strb	r2, [r3]
 1735 05fc BB1D     		adds	r3, r7, #6
 1736 05fe 0A1C     		adds	r2, r1, #0
 1737 0600 1A70     		strb	r2, [r3]
 496:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1738              		.loc 1 496 0
 1739 0602 4020     		movs	r0, #64
 1740 0604 FFF78AFE 		bl	graphic_ctrl_bit_clear
 497:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(controller);
 1741              		.loc 1 497 0
 1742 0608 BB1D     		adds	r3, r7, #6
 1743 060a 1B78     		ldrb	r3, [r3]
 1744 060c 1800     		movs	r0, r3
 1745 060e FFF7ADFE 		bl	select_controller
 498:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_RS);
 1746              		.loc 1 498 0
 1747 0612 0120     		movs	r0, #1
 1748 0614 FFF75AFE 		bl	graphic_ctrl_bit_set
 499:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_RW);
 1749              		.loc 1 499 0
 1750 0618 0220     		movs	r0, #2
 1751 061a FFF77FFE 		bl	graphic_ctrl_bit_clear
 500:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(data, controller);
 1752              		.loc 1 500 0
 1753 061e BB1D     		adds	r3, r7, #6
 1754 0620 1A78     		ldrb	r2, [r3]
 1755 0622 FB1D     		adds	r3, r7, #7
 1756 0624 1B78     		ldrb	r3, [r3]
 1757 0626 1100     		movs	r1, r2
 1758 0628 1800     		movs	r0, r3
 1759 062a FFF7FEFF 		bl	graphic_write
 501:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1760              		.loc 1 501 0
 1761 062e C046     		nop
 1762 0630 BD46     		mov	sp, r7
 1763 0632 02B0     		add	sp, sp, #8
 1764              		@ sp needed
 1765 0634 80BD     		pop	{r7, pc}
 1766              		.cfi_endproc
 1767              	.LFE20:
 1769              		.align	1
 1770              		.syntax unified
 1771              		.code	16
 1772              		.thumb_func
 1773              		.fpu softvfp
 1775              	graphic_read:
 1776              	.LFB21:
 502:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 503:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 504:Z:/MOP/3.3_codelite/lab_5\spel.c **** static uint8_t graphic_read(uint8_t controller){
 1777              		.loc 1 504 0
 1778              		.cfi_startproc
 1779              		@ args = 0, pretend = 0, frame = 16
 1780              		@ frame_needed = 1, uses_anonymous_args = 0
 1781 0636 80B5     		push	{r7, lr}
 1782              		.cfi_def_cfa_offset 8
 1783              		.cfi_offset 7, -8
 1784              		.cfi_offset 14, -4
 1785 0638 84B0     		sub	sp, sp, #16
 1786              		.cfi_def_cfa_offset 24
 1787 063a 00AF     		add	r7, sp, #0
 1788              		.cfi_def_cfa_register 7
 1789 063c 0200     		movs	r2, r0
 1790 063e FB1D     		adds	r3, r7, #7
 1791 0640 1A70     		strb	r2, [r3]
 505:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t c;
 506:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1792              		.loc 1 506 0
 1793 0642 4020     		movs	r0, #64
 1794 0644 FFF76AFE 		bl	graphic_ctrl_bit_clear
 507:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portModer =0x00005555;// 15-8 inputs, 7-0 outputs
 1795              		.loc 1 507 0
 1796 0648 1C4B     		ldr	r3, .L97
 1797 064a 1D4A     		ldr	r2, .L97+4
 1798 064c 1A60     		str	r2, [r3]
 508:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_RS|B_RW);
 1799              		.loc 1 508 0
 1800 064e 0320     		movs	r0, #3
 1801 0650 FFF73CFE 		bl	graphic_ctrl_bit_set
 509:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(controller);
 1802              		.loc 1 509 0
 1803 0654 FB1D     		adds	r3, r7, #7
 1804 0656 1B78     		ldrb	r3, [r3]
 1805 0658 1800     		movs	r0, r3
 1806 065a FFF787FE 		bl	select_controller
 510:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns(1);
 1807              		.loc 1 510 0
 1808 065e 0120     		movs	r0, #1
 1809 0660 FFF7FEFF 		bl	delay_500ns
 511:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 1810              		.loc 1 511 0
 1811 0664 4020     		movs	r0, #64
 1812 0666 FFF731FE 		bl	graphic_ctrl_bit_set
 512:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns(1);
 1813              		.loc 1 512 0
 1814 066a 0120     		movs	r0, #1
 1815 066c FFF7FEFF 		bl	delay_500ns
 513:Z:/MOP/3.3_codelite/lab_5\spel.c **** c =*portIdrHigh;graphic_ctrl_bit_clear(B_E);
 1816              		.loc 1 513 0
 1817 0670 144A     		ldr	r2, .L97+8
 1818 0672 0F23     		movs	r3, #15
 1819 0674 FB18     		adds	r3, r7, r3
 1820 0676 1278     		ldrb	r2, [r2]
 1821 0678 1A70     		strb	r2, [r3]
 1822 067a 4020     		movs	r0, #64
 1823 067c FFF74EFE 		bl	graphic_ctrl_bit_clear
 514:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portModer =0x55555555;// 15-0 outputs
 1824              		.loc 1 514 0
 1825 0680 0E4B     		ldr	r3, .L97
 1826 0682 114A     		ldr	r2, .L97+12
 1827 0684 1A60     		str	r2, [r3]
 515:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(controller &B_CS1 ){
 1828              		.loc 1 515 0
 1829 0686 FB1D     		adds	r3, r7, #7
 1830 0688 1B78     		ldrb	r3, [r3]
 1831 068a 0822     		movs	r2, #8
 1832 068c 1340     		ands	r3, r2
 1833 068e 04D0     		beq	.L94
 516:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(B_CS1);
 1834              		.loc 1 516 0
 1835 0690 0820     		movs	r0, #8
 1836 0692 FFF76BFE 		bl	select_controller
 517:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_wait_ready();
 1837              		.loc 1 517 0
 1838 0696 FFF796FE 		bl	graphic_wait_ready
 1839              	.L94:
 518:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 519:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(controller &B_CS2 ){
 1840              		.loc 1 519 0
 1841 069a FB1D     		adds	r3, r7, #7
 1842 069c 1B78     		ldrb	r3, [r3]
 1843 069e 1022     		movs	r2, #16
 1844 06a0 1340     		ands	r3, r2
 1845 06a2 04D0     		beq	.L95
 520:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(B_CS2);
 1846              		.loc 1 520 0
 1847 06a4 1020     		movs	r0, #16
 1848 06a6 FFF761FE 		bl	select_controller
 521:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_wait_ready();
 1849              		.loc 1 521 0
 1850 06aa FFF78CFE 		bl	graphic_wait_ready
 1851              	.L95:
 522:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 523:Z:/MOP/3.3_codelite/lab_5\spel.c **** return c;
 1852              		.loc 1 523 0
 1853 06ae 0F23     		movs	r3, #15
 1854 06b0 FB18     		adds	r3, r7, r3
 1855 06b2 1B78     		ldrb	r3, [r3]
 524:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1856              		.loc 1 524 0
 1857 06b4 1800     		movs	r0, r3
 1858 06b6 BD46     		mov	sp, r7
 1859 06b8 04B0     		add	sp, sp, #16
 1860              		@ sp needed
 1861 06ba 80BD     		pop	{r7, pc}
 1862              	.L98:
 1863              		.align	2
 1864              	.L97:
 1865 06bc 00100240 		.word	1073876992
 1866 06c0 55550000 		.word	21845
 1867 06c4 11100240 		.word	1073877009
 1868 06c8 55555555 		.word	1431655765
 1869              		.cfi_endproc
 1870              	.LFE21:
 1872              		.align	1
 1873              		.syntax unified
 1874              		.code	16
 1875              		.thumb_func
 1876              		.fpu softvfp
 1878              	graphic_read_data:
 1879              	.LFB22:
 525:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 526:Z:/MOP/3.3_codelite/lab_5\spel.c **** static uint8_t graphic_read_data(uint8_t controller){
 1880              		.loc 1 526 0
 1881              		.cfi_startproc
 1882              		@ args = 0, pretend = 0, frame = 8
 1883              		@ frame_needed = 1, uses_anonymous_args = 0
 1884 06cc 80B5     		push	{r7, lr}
 1885              		.cfi_def_cfa_offset 8
 1886              		.cfi_offset 7, -8
 1887              		.cfi_offset 14, -4
 1888 06ce 82B0     		sub	sp, sp, #8
 1889              		.cfi_def_cfa_offset 16
 1890 06d0 00AF     		add	r7, sp, #0
 1891              		.cfi_def_cfa_register 7
 1892 06d2 0200     		movs	r2, r0
 1893 06d4 FB1D     		adds	r3, r7, #7
 1894 06d6 1A70     		strb	r2, [r3]
 527:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_read(controller);
 1895              		.loc 1 527 0
 1896 06d8 FB1D     		adds	r3, r7, #7
 1897 06da 1B78     		ldrb	r3, [r3]
 1898 06dc 1800     		movs	r0, r3
 1899 06de FFF7AAFF 		bl	graphic_read
 528:Z:/MOP/3.3_codelite/lab_5\spel.c **** return graphic_read(controller);
 1900              		.loc 1 528 0
 1901 06e2 FB1D     		adds	r3, r7, #7
 1902 06e4 1B78     		ldrb	r3, [r3]
 1903 06e6 1800     		movs	r0, r3
 1904 06e8 FFF7A5FF 		bl	graphic_read
 1905 06ec 0300     		movs	r3, r0
 529:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1906              		.loc 1 529 0
 1907 06ee 1800     		movs	r0, r3
 1908 06f0 BD46     		mov	sp, r7
 1909 06f2 02B0     		add	sp, sp, #8
 1910              		@ sp needed
 1911 06f4 80BD     		pop	{r7, pc}
 1912              		.cfi_endproc
 1913              	.LFE22:
 1915              		.align	1
 1916              		.global	pixel
 1917              		.syntax unified
 1918              		.code	16
 1919              		.thumb_func
 1920              		.fpu softvfp
 1922              	pixel:
 1923              	.LFB23:
 530:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 531:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 532:Z:/MOP/3.3_codelite/lab_5\spel.c **** /*void pixel(int x,int y,int set){
 533:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t mask, c,controller;
 534:Z:/MOP/3.3_codelite/lab_5\spel.c **** int index;
 535:Z:/MOP/3.3_codelite/lab_5\spel.c **** if((x < 1) || (y < 1) || (x >128)||(y >64))return;
 536:Z:/MOP/3.3_codelite/lab_5\spel.c **** index =(y-1)/8;
 537:Z:/MOP/3.3_codelite/lab_5\spel.c **** switch((y-1)%8){
 538:Z:/MOP/3.3_codelite/lab_5\spel.c **** case0:mask =1;break;
 539:Z:/MOP/3.3_codelite/lab_5\spel.c **** case1:mask =2;break;
 540:Z:/MOP/3.3_codelite/lab_5\spel.c **** case2:mask =4;break;
 541:Z:/MOP/3.3_codelite/lab_5\spel.c **** case3:mask =8;break;
 542:Z:/MOP/3.3_codelite/lab_5\spel.c **** case4:mask =0x10;break;
 543:Z:/MOP/3.3_codelite/lab_5\spel.c **** case5:mask =0x20;break;
 544:Z:/MOP/3.3_codelite/lab_5\spel.c **** case6:mask =0x40;break;
 545:Z:/MOP/3.3_codelite/lab_5\spel.c **** case7:mask =0x80;break;
 546:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 547:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 548:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set ==0)mask =~mask;
 549:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(x >64){
 550:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =B_CS2;
 551:Z:/MOP/3.3_codelite/lab_5\spel.c **** x =x -65;
 552:Z:/MOP/3.3_codelite/lab_5\spel.c **** } 
 553:Z:/MOP/3.3_codelite/lab_5\spel.c **** else {
 554:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =B_CS1;
 555:Z:/MOP/3.3_codelite/lab_5\spel.c **** x =x-1;
 556:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 557:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD  |x,controller );
 558:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |index,controller );
 559:Z:/MOP/3.3_codelite/lab_5\spel.c **** c =graphic_read_data(controller);
 560:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD |x,controller);
 561:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set)mask =mask |c;
 562:Z:/MOP/3.3_codelite/lab_5\spel.c **** else mask =mask &c;
 563:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(mask,controller);
 564:Z:/MOP/3.3_codelite/lab_5\spel.c **** }*/
 565:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 566:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 567:Z:/MOP/3.3_codelite/lab_5\spel.c **** void pixel(unsigned char x, unsigned char y, unsigned char set) {
 1924              		.loc 1 567 0
 1925              		.cfi_startproc
 1926              		@ args = 0, pretend = 0, frame = 16
 1927              		@ frame_needed = 1, uses_anonymous_args = 0
 1928 06f6 B0B5     		push	{r4, r5, r7, lr}
 1929              		.cfi_def_cfa_offset 16
 1930              		.cfi_offset 4, -16
 1931              		.cfi_offset 5, -12
 1932              		.cfi_offset 7, -8
 1933              		.cfi_offset 14, -4
 1934 06f8 84B0     		sub	sp, sp, #16
 1935              		.cfi_def_cfa_offset 32
 1936 06fa 00AF     		add	r7, sp, #0
 1937              		.cfi_def_cfa_register 7
 1938 06fc 0400     		movs	r4, r0
 1939 06fe 0800     		movs	r0, r1
 1940 0700 1100     		movs	r1, r2
 1941 0702 FB1D     		adds	r3, r7, #7
 1942 0704 221C     		adds	r2, r4, #0
 1943 0706 1A70     		strb	r2, [r3]
 1944 0708 BB1D     		adds	r3, r7, #6
 1945 070a 021C     		adds	r2, r0, #0
 1946 070c 1A70     		strb	r2, [r3]
 1947 070e 7B1D     		adds	r3, r7, #5
 1948 0710 0A1C     		adds	r2, r1, #0
 1949 0712 1A70     		strb	r2, [r3]
 568:Z:/MOP/3.3_codelite/lab_5\spel.c **** // Kontrollera att x och y Ã¤r i tillÃ¥tna intervall. 
 569:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(x > 128 || x < 1 || y > 64 || y < 1) return;
 1950              		.loc 1 569 0
 1951 0714 FB1D     		adds	r3, r7, #7
 1952 0716 1B78     		ldrb	r3, [r3]
 1953 0718 802B     		cmp	r3, #128
 1954 071a 00D9     		bls	.LCB1381
 1955 071c A4E0     		b	.L113	@long jump
 1956              	.LCB1381:
 1957              		.loc 1 569 0 is_stmt 0 discriminator 1
 1958 071e FB1D     		adds	r3, r7, #7
 1959 0720 1B78     		ldrb	r3, [r3]
 1960 0722 002B     		cmp	r3, #0
 1961 0724 00D1     		bne	.LCB1385
 1962 0726 9FE0     		b	.L113	@long jump
 1963              	.LCB1385:
 1964              		.loc 1 569 0 discriminator 2
 1965 0728 BB1D     		adds	r3, r7, #6
 1966 072a 1B78     		ldrb	r3, [r3]
 1967 072c 402B     		cmp	r3, #64
 1968 072e 00D9     		bls	.LCB1389
 1969 0730 9AE0     		b	.L113	@long jump
 1970              	.LCB1389:
 1971              		.loc 1 569 0 discriminator 3
 1972 0732 BB1D     		adds	r3, r7, #6
 1973 0734 1B78     		ldrb	r3, [r3]
 1974 0736 002B     		cmp	r3, #0
 1975 0738 00D1     		bne	.LCB1393
 1976 073a 95E0     		b	.L113	@long jump
 1977              	.LCB1393:
 570:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set != 0 && set != 1) return;
 1978              		.loc 1 570 0 is_stmt 1
 1979 073c 7B1D     		adds	r3, r7, #5
 1980 073e 1B78     		ldrb	r3, [r3]
 1981 0740 002B     		cmp	r3, #0
 1982 0742 04D0     		beq	.L105
 1983              		.loc 1 570 0 is_stmt 0 discriminator 1
 1984 0744 7B1D     		adds	r3, r7, #5
 1985 0746 1B78     		ldrb	r3, [r3]
 1986 0748 012B     		cmp	r3, #1
 1987 074a 00D0     		beq	.LCB1401
 1988 074c 8EE0     		b	.L114	@long jump
 1989              	.LCB1401:
 1990              	.L105:
 571:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 572:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t index = (y - 1) / 8;
 1991              		.loc 1 572 0 is_stmt 1
 1992 074e BB1D     		adds	r3, r7, #6
 1993 0750 1B78     		ldrb	r3, [r3]
 1994 0752 013B     		subs	r3, r3, #1
 1995 0754 002B     		cmp	r3, #0
 1996 0756 00DA     		bge	.L106
 1997 0758 0733     		adds	r3, r3, #7
 1998              	.L106:
 1999 075a DB10     		asrs	r3, r3, #3
 2000 075c 1A00     		movs	r2, r3
 2001 075e 0D23     		movs	r3, #13
 2002 0760 FB18     		adds	r3, r7, r3
 2003 0762 1A70     		strb	r2, [r3]
 573:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t mask;
 574:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask = 1 << ( (y - 1) % 8);
 2004              		.loc 1 574 0
 2005 0764 BB1D     		adds	r3, r7, #6
 2006 0766 1B78     		ldrb	r3, [r3]
 2007 0768 013B     		subs	r3, r3, #1
 2008 076a 424A     		ldr	r2, .L115
 2009 076c 1340     		ands	r3, r2
 2010 076e 04D5     		bpl	.L107
 2011 0770 013B     		subs	r3, r3, #1
 2012 0772 0822     		movs	r2, #8
 2013 0774 5242     		rsbs	r2, r2, #0
 2014 0776 1343     		orrs	r3, r2
 2015 0778 0133     		adds	r3, r3, #1
 2016              	.L107:
 2017 077a 1A00     		movs	r2, r3
 2018 077c 0123     		movs	r3, #1
 2019 077e 9340     		lsls	r3, r3, r2
 2020 0780 1A00     		movs	r2, r3
 2021 0782 0F23     		movs	r3, #15
 2022 0784 FB18     		adds	r3, r7, r3
 2023 0786 1A70     		strb	r2, [r3]
 575:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set == 0){
 2024              		.loc 1 575 0
 2025 0788 7B1D     		adds	r3, r7, #5
 2026 078a 1B78     		ldrb	r3, [r3]
 2027 078c 002B     		cmp	r3, #0
 2028 078e 05D1     		bne	.L108
 576:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask = ~mask; // biten ska nollstÃ¤llas
 2029              		.loc 1 576 0
 2030 0790 0F22     		movs	r2, #15
 2031 0792 BB18     		adds	r3, r7, r2
 2032 0794 BA18     		adds	r2, r7, r2
 2033 0796 1278     		ldrb	r2, [r2]
 2034 0798 D243     		mvns	r2, r2
 2035 079a 1A70     		strb	r2, [r3]
 2036              	.L108:
 577:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 578:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 579:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t controller;
 580:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 581:Z:/MOP/3.3_codelite/lab_5\spel.c **** // BestÃ¤m fysiska koordinater och vÃ¤lj styrkrets
 582:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(x > 64){
 2037              		.loc 1 582 0
 2038 079c FB1D     		adds	r3, r7, #7
 2039 079e 1B78     		ldrb	r3, [r3]
 2040 07a0 402B     		cmp	r3, #64
 2041 07a2 09D9     		bls	.L109
 583:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller = B_CS2;
 2042              		.loc 1 583 0
 2043 07a4 0E23     		movs	r3, #14
 2044 07a6 FB18     		adds	r3, r7, r3
 2045 07a8 1022     		movs	r2, #16
 2046 07aa 1A70     		strb	r2, [r3]
 584:Z:/MOP/3.3_codelite/lab_5\spel.c **** x = x - 65;
 2047              		.loc 1 584 0
 2048 07ac FB1D     		adds	r3, r7, #7
 2049 07ae FA1D     		adds	r2, r7, #7
 2050 07b0 1278     		ldrb	r2, [r2]
 2051 07b2 413A     		subs	r2, r2, #65
 2052 07b4 1A70     		strb	r2, [r3]
 2053 07b6 08E0     		b	.L110
 2054              	.L109:
 585:Z:/MOP/3.3_codelite/lab_5\spel.c **** }else{
 586:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller = B_CS1;
 2055              		.loc 1 586 0
 2056 07b8 0E23     		movs	r3, #14
 2057 07ba FB18     		adds	r3, r7, r3
 2058 07bc 0822     		movs	r2, #8
 2059 07be 1A70     		strb	r2, [r3]
 587:Z:/MOP/3.3_codelite/lab_5\spel.c **** x = x - 1;
 2060              		.loc 1 587 0
 2061 07c0 FB1D     		adds	r3, r7, #7
 2062 07c2 FA1D     		adds	r2, r7, #7
 2063 07c4 1278     		ldrb	r2, [r2]
 2064 07c6 013A     		subs	r2, r2, #1
 2065 07c8 1A70     		strb	r2, [r3]
 2066              	.L110:
 588:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 589:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD | x, controller);
 2067              		.loc 1 589 0
 2068 07ca FB1D     		adds	r3, r7, #7
 2069 07cc 1B78     		ldrb	r3, [r3]
 2070 07ce 4022     		movs	r2, #64
 2071 07d0 1343     		orrs	r3, r2
 2072 07d2 DAB2     		uxtb	r2, r3
 2073 07d4 0E25     		movs	r5, #14
 2074 07d6 7B19     		adds	r3, r7, r5
 2075 07d8 1B78     		ldrb	r3, [r3]
 2076 07da 1900     		movs	r1, r3
 2077 07dc 1000     		movs	r0, r2
 2078 07de FFF7FEFF 		bl	graphic_write_command
 590:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE | index, controller);
 2079              		.loc 1 590 0
 2080 07e2 0D23     		movs	r3, #13
 2081 07e4 FB18     		adds	r3, r7, r3
 2082 07e6 1B78     		ldrb	r3, [r3]
 2083 07e8 4822     		movs	r2, #72
 2084 07ea 5242     		rsbs	r2, r2, #0
 2085 07ec 1343     		orrs	r3, r2
 2086 07ee DAB2     		uxtb	r2, r3
 2087 07f0 7B19     		adds	r3, r7, r5
 2088 07f2 1B78     		ldrb	r3, [r3]
 2089 07f4 1900     		movs	r1, r3
 2090 07f6 1000     		movs	r0, r2
 2091 07f8 FFF7FEFF 		bl	graphic_write_command
 591:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t temp = graphic_read_data(controller);
 2092              		.loc 1 591 0
 2093 07fc 0C23     		movs	r3, #12
 2094 07fe FC18     		adds	r4, r7, r3
 2095 0800 7B19     		adds	r3, r7, r5
 2096 0802 1B78     		ldrb	r3, [r3]
 2097 0804 1800     		movs	r0, r3
 2098 0806 FFF761FF 		bl	graphic_read_data
 2099 080a 0300     		movs	r3, r0
 2100 080c 2370     		strb	r3, [r4]
 592:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD | x, controller);
 2101              		.loc 1 592 0
 2102 080e FB1D     		adds	r3, r7, #7
 2103 0810 1B78     		ldrb	r3, [r3]
 2104 0812 4022     		movs	r2, #64
 2105 0814 1343     		orrs	r3, r2
 2106 0816 DAB2     		uxtb	r2, r3
 2107 0818 7B19     		adds	r3, r7, r5
 2108 081a 1B78     		ldrb	r3, [r3]
 2109 081c 1900     		movs	r1, r3
 2110 081e 1000     		movs	r0, r2
 2111 0820 FFF7FEFF 		bl	graphic_write_command
 593:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 594:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set == 1){
 2112              		.loc 1 594 0
 2113 0824 7B1D     		adds	r3, r7, #5
 2114 0826 1B78     		ldrb	r3, [r3]
 2115 0828 012B     		cmp	r3, #1
 2116 082a 09D1     		bne	.L111
 595:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask = mask | temp;
 2117              		.loc 1 595 0
 2118 082c 0F22     		movs	r2, #15
 2119 082e BB18     		adds	r3, r7, r2
 2120 0830 B918     		adds	r1, r7, r2
 2121 0832 0C22     		movs	r2, #12
 2122 0834 BA18     		adds	r2, r7, r2
 2123 0836 0978     		ldrb	r1, [r1]
 2124 0838 1278     		ldrb	r2, [r2]
 2125 083a 0A43     		orrs	r2, r1
 2126 083c 1A70     		strb	r2, [r3]
 2127 083e 08E0     		b	.L112
 2128              	.L111:
 596:Z:/MOP/3.3_codelite/lab_5\spel.c **** }else{
 597:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask = mask & temp;
 2129              		.loc 1 597 0
 2130 0840 0F22     		movs	r2, #15
 2131 0842 BB18     		adds	r3, r7, r2
 2132 0844 BA18     		adds	r2, r7, r2
 2133 0846 0C21     		movs	r1, #12
 2134 0848 7918     		adds	r1, r7, r1
 2135 084a 1278     		ldrb	r2, [r2]
 2136 084c 0978     		ldrb	r1, [r1]
 2137 084e 0A40     		ands	r2, r1
 2138 0850 1A70     		strb	r2, [r3]
 2139              	.L112:
 598:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 599:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_data(mask, controller); 
 2140              		.loc 1 599 0
 2141 0852 0E23     		movs	r3, #14
 2142 0854 FB18     		adds	r3, r7, r3
 2143 0856 1A78     		ldrb	r2, [r3]
 2144 0858 0F23     		movs	r3, #15
 2145 085a FB18     		adds	r3, r7, r3
 2146 085c 1B78     		ldrb	r3, [r3]
 2147 085e 1100     		movs	r1, r2
 2148 0860 1800     		movs	r0, r3
 2149 0862 FFF7FEFF 		bl	graphic_write_data
 2150 0866 02E0     		b	.L101
 2151              	.L113:
 569:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set != 0 && set != 1) return;
 2152              		.loc 1 569 0
 2153 0868 C046     		nop
 2154 086a 00E0     		b	.L101
 2155              	.L114:
 570:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 2156              		.loc 1 570 0
 2157 086c C046     		nop
 2158              	.L101:
 600:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2159              		.loc 1 600 0
 2160 086e BD46     		mov	sp, r7
 2161 0870 04B0     		add	sp, sp, #16
 2162              		@ sp needed
 2163 0872 B0BD     		pop	{r4, r5, r7, pc}
 2164              	.L116:
 2165              		.align	2
 2166              	.L115:
 2167 0874 07000080 		.word	-2147483641
 2168              		.cfi_endproc
 2169              	.LFE23:
 2171              		.comm	backBuffer,1024,4
 2172              		.align	1
 2173              		.global	clear_backBuffer
 2174              		.syntax unified
 2175              		.code	16
 2176              		.thumb_func
 2177              		.fpu softvfp
 2179              	clear_backBuffer:
 2180              	.LFB24:
 601:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 602:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 603:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 604:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t backBuffer[1024];// 128 * 64 / 8
 605:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 606:Z:/MOP/3.3_codelite/lab_5\spel.c **** void clear_backBuffer(){
 2181              		.loc 1 606 0
 2182              		.cfi_startproc
 2183              		@ args = 0, pretend = 0, frame = 8
 2184              		@ frame_needed = 1, uses_anonymous_args = 0
 2185 0878 80B5     		push	{r7, lr}
 2186              		.cfi_def_cfa_offset 8
 2187              		.cfi_offset 7, -8
 2188              		.cfi_offset 14, -4
 2189 087a 82B0     		sub	sp, sp, #8
 2190              		.cfi_def_cfa_offset 16
 2191 087c 00AF     		add	r7, sp, #0
 2192              		.cfi_def_cfa_register 7
 607:Z:/MOP/3.3_codelite/lab_5\spel.c **** int i;
 608:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <1024;i++) backBuffer[i]=0;
 2193              		.loc 1 608 0
 2194 087e 0023     		movs	r3, #0
 2195 0880 7B60     		str	r3, [r7, #4]
 2196 0882 07E0     		b	.L118
 2197              	.L119:
 2198              		.loc 1 608 0 is_stmt 0 discriminator 3
 2199 0884 074A     		ldr	r2, .L120
 2200 0886 7B68     		ldr	r3, [r7, #4]
 2201 0888 D318     		adds	r3, r2, r3
 2202 088a 0022     		movs	r2, #0
 2203 088c 1A70     		strb	r2, [r3]
 2204 088e 7B68     		ldr	r3, [r7, #4]
 2205 0890 0133     		adds	r3, r3, #1
 2206 0892 7B60     		str	r3, [r7, #4]
 2207              	.L118:
 2208              		.loc 1 608 0 discriminator 1
 2209 0894 7B68     		ldr	r3, [r7, #4]
 2210 0896 044A     		ldr	r2, .L120+4
 2211 0898 9342     		cmp	r3, r2
 2212 089a F3DD     		ble	.L119
 609:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2213              		.loc 1 609 0 is_stmt 1
 2214 089c C046     		nop
 2215 089e BD46     		mov	sp, r7
 2216 08a0 02B0     		add	sp, sp, #8
 2217              		@ sp needed
 2218 08a2 80BD     		pop	{r7, pc}
 2219              	.L121:
 2220              		.align	2
 2221              	.L120:
 2222 08a4 00000000 		.word	backBuffer
 2223 08a8 FF030000 		.word	1023
 2224              		.cfi_endproc
 2225              	.LFE24:
 2227              		.align	1
 2228              		.global	graphic_draw_screen
 2229              		.syntax unified
 2230              		.code	16
 2231              		.thumb_func
 2232              		.fpu softvfp
 2234              	graphic_draw_screen:
 2235              	.LFB25:
 610:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 611:Z:/MOP/3.3_codelite/lab_5\spel.c **** /*void pixel(intx, inty){
 612:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t mask;
 613:Z:/MOP/3.3_codelite/lab_5\spel.c **** int index =0;
 614:Z:/MOP/3.3_codelite/lab_5\spel.c **** if((x >128)||(x <1)||(y >64)||(y <1))return;
 615:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask =1<<((y-1)%8);
 616:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(x > 64){x -=65;
 617:Z:/MOP/3.3_codelite/lab_5\spel.c **** index =512;
 618:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 619:Z:/MOP/3.3_codelite/lab_5\spel.c **** index +=x +((y-1)/8)*64;
 620:Z:/MOP/3.3_codelite/lab_5\spel.c **** backBuffer[index]|=mask;
 621:Z:/MOP/3.3_codelite/lab_5\spel.c **** }*/
 622:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 623:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 624:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_draw_screen(void){
 2236              		.loc 1 624 0
 2237              		.cfi_startproc
 2238              		@ args = 0, pretend = 0, frame = 16
 2239              		@ frame_needed = 1, uses_anonymous_args = 0
 2240 08ac 80B5     		push	{r7, lr}
 2241              		.cfi_def_cfa_offset 8
 2242              		.cfi_offset 7, -8
 2243              		.cfi_offset 14, -4
 2244 08ae 84B0     		sub	sp, sp, #16
 2245              		.cfi_def_cfa_offset 24
 2246 08b0 00AF     		add	r7, sp, #0
 2247              		.cfi_def_cfa_register 7
 625:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t i,j, controller, c;
 626:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned int k = 0;
 2248              		.loc 1 626 0
 2249 08b2 0023     		movs	r3, #0
 2250 08b4 BB60     		str	r3, [r7, #8]
 627:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(c =0;c <2;c++) {
 2251              		.loc 1 627 0
 2252 08b6 0D23     		movs	r3, #13
 2253 08b8 FB18     		adds	r3, r7, r3
 2254 08ba 0022     		movs	r2, #0
 2255 08bc 1A70     		strb	r2, [r3]
 2256 08be 4FE0     		b	.L123
 2257              	.L130:
 628:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =(c ==0)?B_CS1 :B_CS2;
 2258              		.loc 1 628 0
 2259 08c0 0D23     		movs	r3, #13
 2260 08c2 FB18     		adds	r3, r7, r3
 2261 08c4 1B78     		ldrb	r3, [r3]
 2262 08c6 002B     		cmp	r3, #0
 2263 08c8 01D1     		bne	.L124
 2264              		.loc 1 628 0 is_stmt 0 discriminator 1
 2265 08ca 0822     		movs	r2, #8
 2266 08cc 00E0     		b	.L125
 2267              	.L124:
 2268              		.loc 1 628 0 discriminator 2
 2269 08ce 1022     		movs	r2, #16
 2270              	.L125:
 2271              		.loc 1 628 0 discriminator 4
 2272 08d0 FB1D     		adds	r3, r7, #7
 2273 08d2 1A70     		strb	r2, [r3]
 629:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <8;j++){
 2274              		.loc 1 629 0 is_stmt 1 discriminator 4
 2275 08d4 0E23     		movs	r3, #14
 2276 08d6 FB18     		adds	r3, r7, r3
 2277 08d8 0022     		movs	r2, #0
 2278 08da 1A70     		strb	r2, [r3]
 2279 08dc 35E0     		b	.L126
 2280              	.L129:
 630:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,controller);
 2281              		.loc 1 630 0
 2282 08de 0E23     		movs	r3, #14
 2283 08e0 FB18     		adds	r3, r7, r3
 2284 08e2 1B78     		ldrb	r3, [r3]
 2285 08e4 4822     		movs	r2, #72
 2286 08e6 5242     		rsbs	r2, r2, #0
 2287 08e8 1343     		orrs	r3, r2
 2288 08ea DAB2     		uxtb	r2, r3
 2289 08ec FB1D     		adds	r3, r7, #7
 2290 08ee 1B78     		ldrb	r3, [r3]
 2291 08f0 1900     		movs	r1, r3
 2292 08f2 1000     		movs	r0, r2
 2293 08f4 FFF7FEFF 		bl	graphic_write_command
 631:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD  |0,controller);
 2294              		.loc 1 631 0
 2295 08f8 FB1D     		adds	r3, r7, #7
 2296 08fa 1B78     		ldrb	r3, [r3]
 2297 08fc 1900     		movs	r1, r3
 2298 08fe 4020     		movs	r0, #64
 2299 0900 FFF7FEFF 		bl	graphic_write_command
 632:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++, k++) {
 2300              		.loc 1 632 0
 2301 0904 0F23     		movs	r3, #15
 2302 0906 FB18     		adds	r3, r7, r3
 2303 0908 0022     		movs	r2, #0
 2304 090a 1A70     		strb	r2, [r3]
 2305 090c 12E0     		b	.L127
 2306              	.L128:
 633:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(backBuffer[k],controller);
 2307              		.loc 1 633 0 discriminator 3
 2308 090e 194A     		ldr	r2, .L131
 2309 0910 BB68     		ldr	r3, [r7, #8]
 2310 0912 D318     		adds	r3, r2, r3
 2311 0914 1A78     		ldrb	r2, [r3]
 2312 0916 FB1D     		adds	r3, r7, #7
 2313 0918 1B78     		ldrb	r3, [r3]
 2314 091a 1900     		movs	r1, r3
 2315 091c 1000     		movs	r0, r2
 2316 091e FFF7FEFF 		bl	graphic_write
 632:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++, k++) {
 2317              		.loc 1 632 0 discriminator 3
 2318 0922 0F21     		movs	r1, #15
 2319 0924 7B18     		adds	r3, r7, r1
 2320 0926 1A78     		ldrb	r2, [r3]
 2321 0928 7B18     		adds	r3, r7, r1
 2322 092a 0132     		adds	r2, r2, #1
 2323 092c 1A70     		strb	r2, [r3]
 2324 092e BB68     		ldr	r3, [r7, #8]
 2325 0930 0133     		adds	r3, r3, #1
 2326 0932 BB60     		str	r3, [r7, #8]
 2327              	.L127:
 632:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++, k++) {
 2328              		.loc 1 632 0 is_stmt 0 discriminator 1
 2329 0934 0F23     		movs	r3, #15
 2330 0936 FB18     		adds	r3, r7, r3
 2331 0938 1B78     		ldrb	r3, [r3]
 2332 093a 3F2B     		cmp	r3, #63
 2333 093c E7D9     		bls	.L128
 629:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,controller);
 2334              		.loc 1 629 0 is_stmt 1 discriminator 2
 2335 093e 0E21     		movs	r1, #14
 2336 0940 7B18     		adds	r3, r7, r1
 2337 0942 1A78     		ldrb	r2, [r3]
 2338 0944 7B18     		adds	r3, r7, r1
 2339 0946 0132     		adds	r2, r2, #1
 2340 0948 1A70     		strb	r2, [r3]
 2341              	.L126:
 629:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,controller);
 2342              		.loc 1 629 0 is_stmt 0 discriminator 1
 2343 094a 0E23     		movs	r3, #14
 2344 094c FB18     		adds	r3, r7, r3
 2345 094e 1B78     		ldrb	r3, [r3]
 2346 0950 072B     		cmp	r3, #7
 2347 0952 C4D9     		bls	.L129
 627:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =(c ==0)?B_CS1 :B_CS2;
 2348              		.loc 1 627 0 is_stmt 1 discriminator 2
 2349 0954 0D21     		movs	r1, #13
 2350 0956 7B18     		adds	r3, r7, r1
 2351 0958 1A78     		ldrb	r2, [r3]
 2352 095a 7B18     		adds	r3, r7, r1
 2353 095c 0132     		adds	r2, r2, #1
 2354 095e 1A70     		strb	r2, [r3]
 2355              	.L123:
 627:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =(c ==0)?B_CS1 :B_CS2;
 2356              		.loc 1 627 0 is_stmt 0 discriminator 1
 2357 0960 0D23     		movs	r3, #13
 2358 0962 FB18     		adds	r3, r7, r3
 2359 0964 1B78     		ldrb	r3, [r3]
 2360 0966 012B     		cmp	r3, #1
 2361 0968 AAD9     		bls	.L130
 634:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 635:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 636:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 637:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2362              		.loc 1 637 0 is_stmt 1
 2363 096a C046     		nop
 2364 096c BD46     		mov	sp, r7
 2365 096e 04B0     		add	sp, sp, #16
 2366              		@ sp needed
 2367 0970 80BD     		pop	{r7, pc}
 2368              	.L132:
 2369 0972 C046     		.align	2
 2370              	.L131:
 2371 0974 00000000 		.word	backBuffer
 2372              		.cfi_endproc
 2373              	.LFE25:
 2375              		.align	1
 2376              		.syntax unified
 2377              		.code	16
 2378              		.thumb_func
 2379              		.fpu softvfp
 2381              	load_sprite:
 2382              	.LFB26:
 638:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 639:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 640:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef struct{
 641:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char width;
 642:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char height;
 643:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char *data;
 644:Z:/MOP/3.3_codelite/lab_5\spel.c **** }sprite;
 645:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 646:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void load_sprite(sprite* s,unsigned char *data, int width, int height){
 2383              		.loc 1 646 0
 2384              		.cfi_startproc
 2385              		@ args = 0, pretend = 0, frame = 16
 2386              		@ frame_needed = 1, uses_anonymous_args = 0
 2387 0978 80B5     		push	{r7, lr}
 2388              		.cfi_def_cfa_offset 8
 2389              		.cfi_offset 7, -8
 2390              		.cfi_offset 14, -4
 2391 097a 84B0     		sub	sp, sp, #16
 2392              		.cfi_def_cfa_offset 24
 2393 097c 00AF     		add	r7, sp, #0
 2394              		.cfi_def_cfa_register 7
 2395 097e F860     		str	r0, [r7, #12]
 2396 0980 B960     		str	r1, [r7, #8]
 2397 0982 7A60     		str	r2, [r7, #4]
 2398 0984 3B60     		str	r3, [r7]
 647:Z:/MOP/3.3_codelite/lab_5\spel.c **** s->width =width;
 2399              		.loc 1 647 0
 2400 0986 7B68     		ldr	r3, [r7, #4]
 2401 0988 DAB2     		uxtb	r2, r3
 2402 098a FB68     		ldr	r3, [r7, #12]
 2403 098c 1A70     		strb	r2, [r3]
 648:Z:/MOP/3.3_codelite/lab_5\spel.c **** s->height =height;
 2404              		.loc 1 648 0
 2405 098e 3B68     		ldr	r3, [r7]
 2406 0990 DAB2     		uxtb	r2, r3
 2407 0992 FB68     		ldr	r3, [r7, #12]
 2408 0994 5A70     		strb	r2, [r3, #1]
 649:Z:/MOP/3.3_codelite/lab_5\spel.c **** s->data =data;
 2409              		.loc 1 649 0
 2410 0996 FB68     		ldr	r3, [r7, #12]
 2411 0998 BA68     		ldr	r2, [r7, #8]
 2412 099a 5A60     		str	r2, [r3, #4]
 650:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2413              		.loc 1 650 0
 2414 099c C046     		nop
 2415 099e BD46     		mov	sp, r7
 2416 09a0 04B0     		add	sp, sp, #16
 2417              		@ sp needed
 2418 09a2 80BD     		pop	{r7, pc}
 2419              		.cfi_endproc
 2420              	.LFE26:
 2422              		.align	1
 2423              		.global	draw_sprite
 2424              		.syntax unified
 2425              		.code	16
 2426              		.thumb_func
 2427              		.fpu softvfp
 2429              	draw_sprite:
 2430              	.LFB27:
 651:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 652:Z:/MOP/3.3_codelite/lab_5\spel.c **** void draw_sprite(sprite* s,int x,int y,int set){
 2431              		.loc 1 652 0
 2432              		.cfi_startproc
 2433              		@ args = 0, pretend = 0, frame = 40
 2434              		@ frame_needed = 1, uses_anonymous_args = 0
 2435 09a4 80B5     		push	{r7, lr}
 2436              		.cfi_def_cfa_offset 8
 2437              		.cfi_offset 7, -8
 2438              		.cfi_offset 14, -4
 2439 09a6 8AB0     		sub	sp, sp, #40
 2440              		.cfi_def_cfa_offset 48
 2441 09a8 00AF     		add	r7, sp, #0
 2442              		.cfi_def_cfa_register 7
 2443 09aa F860     		str	r0, [r7, #12]
 2444 09ac B960     		str	r1, [r7, #8]
 2445 09ae 7A60     		str	r2, [r7, #4]
 2446 09b0 3B60     		str	r3, [r7]
 653:Z:/MOP/3.3_codelite/lab_5\spel.c **** int i,j,k,width_in_bytes;
 654:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(s->width %8==0)width_in_bytes =s->width /8;
 2447              		.loc 1 654 0
 2448 09b2 FB68     		ldr	r3, [r7, #12]
 2449 09b4 1B78     		ldrb	r3, [r3]
 2450 09b6 0722     		movs	r2, #7
 2451 09b8 1340     		ands	r3, r2
 2452 09ba DBB2     		uxtb	r3, r3
 2453 09bc 002B     		cmp	r3, #0
 2454 09be 05D1     		bne	.L135
 2455              		.loc 1 654 0 is_stmt 0 discriminator 1
 2456 09c0 FB68     		ldr	r3, [r7, #12]
 2457 09c2 1B78     		ldrb	r3, [r3]
 2458 09c4 DB08     		lsrs	r3, r3, #3
 2459 09c6 DBB2     		uxtb	r3, r3
 2460 09c8 BB61     		str	r3, [r7, #24]
 2461 09ca 05E0     		b	.L136
 2462              	.L135:
 655:Z:/MOP/3.3_codelite/lab_5\spel.c **** else width_in_bytes =s->width /8+1;
 2463              		.loc 1 655 0 is_stmt 1
 2464 09cc FB68     		ldr	r3, [r7, #12]
 2465 09ce 1B78     		ldrb	r3, [r3]
 2466 09d0 DB08     		lsrs	r3, r3, #3
 2467 09d2 DBB2     		uxtb	r3, r3
 2468 09d4 0133     		adds	r3, r3, #1
 2469 09d6 BB61     		str	r3, [r7, #24]
 2470              	.L136:
 656:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <s->height;i++)
 2471              		.loc 1 656 0
 2472 09d8 0023     		movs	r3, #0
 2473 09da 7B62     		str	r3, [r7, #36]
 2474 09dc 45E0     		b	.L137
 2475              	.L143:
 657:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <width_in_bytes;j++){
 2476              		.loc 1 657 0
 2477 09de 0023     		movs	r3, #0
 2478 09e0 3B62     		str	r3, [r7, #32]
 2479 09e2 3BE0     		b	.L138
 2480              	.L142:
 2481              	.LBB9:
 658:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char byte =s->data[i *width_in_bytes +j];
 2482              		.loc 1 658 0
 2483 09e4 FB68     		ldr	r3, [r7, #12]
 2484 09e6 5B68     		ldr	r3, [r3, #4]
 2485 09e8 7A6A     		ldr	r2, [r7, #36]
 2486 09ea B969     		ldr	r1, [r7, #24]
 2487 09ec 5143     		muls	r1, r2
 2488 09ee 3A6A     		ldr	r2, [r7, #32]
 2489 09f0 8A18     		adds	r2, r1, r2
 2490 09f2 9A18     		adds	r2, r3, r2
 2491 09f4 1723     		movs	r3, #23
 2492 09f6 FB18     		adds	r3, r7, r3
 2493 09f8 1278     		ldrb	r2, [r2]
 2494 09fa 1A70     		strb	r2, [r3]
 659:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(k =0;k <8;k++){
 2495              		.loc 1 659 0
 2496 09fc 0023     		movs	r3, #0
 2497 09fe FB61     		str	r3, [r7, #28]
 2498 0a00 26E0     		b	.L139
 2499              	.L141:
 660:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(byte &(1<<k))pixel(8*j +k +x + 1,i +y + 1,set);
 2500              		.loc 1 660 0
 2501 0a02 1723     		movs	r3, #23
 2502 0a04 FB18     		adds	r3, r7, r3
 2503 0a06 1A78     		ldrb	r2, [r3]
 2504 0a08 FB69     		ldr	r3, [r7, #28]
 2505 0a0a 1A41     		asrs	r2, r2, r3
 2506 0a0c 1300     		movs	r3, r2
 2507 0a0e 0122     		movs	r2, #1
 2508 0a10 1340     		ands	r3, r2
 2509 0a12 1AD0     		beq	.L140
 2510              		.loc 1 660 0 is_stmt 0 discriminator 1
 2511 0a14 3B6A     		ldr	r3, [r7, #32]
 2512 0a16 DBB2     		uxtb	r3, r3
 2513 0a18 DB00     		lsls	r3, r3, #3
 2514 0a1a DAB2     		uxtb	r2, r3
 2515 0a1c FB69     		ldr	r3, [r7, #28]
 2516 0a1e DBB2     		uxtb	r3, r3
 2517 0a20 D318     		adds	r3, r2, r3
 2518 0a22 DAB2     		uxtb	r2, r3
 2519 0a24 BB68     		ldr	r3, [r7, #8]
 2520 0a26 DBB2     		uxtb	r3, r3
 2521 0a28 D318     		adds	r3, r2, r3
 2522 0a2a DBB2     		uxtb	r3, r3
 2523 0a2c 0133     		adds	r3, r3, #1
 2524 0a2e D8B2     		uxtb	r0, r3
 2525 0a30 7B6A     		ldr	r3, [r7, #36]
 2526 0a32 DAB2     		uxtb	r2, r3
 2527 0a34 7B68     		ldr	r3, [r7, #4]
 2528 0a36 DBB2     		uxtb	r3, r3
 2529 0a38 D318     		adds	r3, r2, r3
 2530 0a3a DBB2     		uxtb	r3, r3
 2531 0a3c 0133     		adds	r3, r3, #1
 2532 0a3e DBB2     		uxtb	r3, r3
 2533 0a40 3A68     		ldr	r2, [r7]
 2534 0a42 D2B2     		uxtb	r2, r2
 2535 0a44 1900     		movs	r1, r3
 2536 0a46 FFF7FEFF 		bl	pixel
 2537              	.L140:
 659:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(k =0;k <8;k++){
 2538              		.loc 1 659 0 is_stmt 1 discriminator 2
 2539 0a4a FB69     		ldr	r3, [r7, #28]
 2540 0a4c 0133     		adds	r3, r3, #1
 2541 0a4e FB61     		str	r3, [r7, #28]
 2542              	.L139:
 659:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(k =0;k <8;k++){
 2543              		.loc 1 659 0 is_stmt 0 discriminator 1
 2544 0a50 FB69     		ldr	r3, [r7, #28]
 2545 0a52 072B     		cmp	r3, #7
 2546 0a54 D5DD     		ble	.L141
 2547              	.LBE9:
 657:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char byte =s->data[i *width_in_bytes +j];
 2548              		.loc 1 657 0 is_stmt 1 discriminator 2
 2549 0a56 3B6A     		ldr	r3, [r7, #32]
 2550 0a58 0133     		adds	r3, r3, #1
 2551 0a5a 3B62     		str	r3, [r7, #32]
 2552              	.L138:
 657:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char byte =s->data[i *width_in_bytes +j];
 2553              		.loc 1 657 0 is_stmt 0 discriminator 1
 2554 0a5c 3A6A     		ldr	r2, [r7, #32]
 2555 0a5e BB69     		ldr	r3, [r7, #24]
 2556 0a60 9A42     		cmp	r2, r3
 2557 0a62 BFDB     		blt	.L142
 656:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <width_in_bytes;j++){
 2558              		.loc 1 656 0 is_stmt 1 discriminator 2
 2559 0a64 7B6A     		ldr	r3, [r7, #36]
 2560 0a66 0133     		adds	r3, r3, #1
 2561 0a68 7B62     		str	r3, [r7, #36]
 2562              	.L137:
 656:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <width_in_bytes;j++){
 2563              		.loc 1 656 0 is_stmt 0 discriminator 1
 2564 0a6a FB68     		ldr	r3, [r7, #12]
 2565 0a6c 5B78     		ldrb	r3, [r3, #1]
 2566 0a6e 1A00     		movs	r2, r3
 2567 0a70 7B6A     		ldr	r3, [r7, #36]
 2568 0a72 9342     		cmp	r3, r2
 2569 0a74 B3DB     		blt	.L143
 661:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 662:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 663:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2570              		.loc 1 663 0 is_stmt 1
 2571 0a76 C046     		nop
 2572 0a78 BD46     		mov	sp, r7
 2573 0a7a 0AB0     		add	sp, sp, #40
 2574              		@ sp needed
 2575 0a7c 80BD     		pop	{r7, pc}
 2576              		.cfi_endproc
 2577              	.LFE27:
 2579              		.align	1
 2580              		.global	graphic_initialize
 2581              		.syntax unified
 2582              		.code	16
 2583              		.thumb_func
 2584              		.fpu softvfp
 2586              	graphic_initialize:
 2587              	.LFB28:
 664:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 665:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_initialize(void){
 2588              		.loc 1 665 0
 2589              		.cfi_startproc
 2590              		@ args = 0, pretend = 0, frame = 0
 2591              		@ frame_needed = 1, uses_anonymous_args = 0
 2592 0a7e 80B5     		push	{r7, lr}
 2593              		.cfi_def_cfa_offset 8
 2594              		.cfi_offset 7, -8
 2595              		.cfi_offset 14, -4
 2596 0a80 00AF     		add	r7, sp, #0
 2597              		.cfi_def_cfa_register 7
 666:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 2598              		.loc 1 666 0
 2599 0a82 4020     		movs	r0, #64
 2600 0a84 FFF722FC 		bl	graphic_ctrl_bit_set
 667:Z:/MOP/3.3_codelite/lab_5\spel.c **** //delay_micro(100);
 668:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 2601              		.loc 1 668 0
 2602 0a88 7820     		movs	r0, #120
 2603 0a8a FFF747FC 		bl	graphic_ctrl_bit_clear
 669:Z:/MOP/3.3_codelite/lab_5\spel.c **** //delay_milli(30);
 670:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_RST);
 2604              		.loc 1 670 0
 2605 0a8e 2020     		movs	r0, #32
 2606 0a90 FFF71CFC 		bl	graphic_ctrl_bit_set
 671:Z:/MOP/3.3_codelite/lab_5\spel.c **** //delay_milli(100);
 672:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_OFF,B_CS1|B_CS2);
 2607              		.loc 1 672 0
 2608 0a94 1821     		movs	r1, #24
 2609 0a96 3E20     		movs	r0, #62
 2610 0a98 FFF7FEFF 		bl	graphic_write_command
 673:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_ON,B_CS1|B_CS2);
 2611              		.loc 1 673 0
 2612 0a9c 1821     		movs	r1, #24
 2613 0a9e 3F20     		movs	r0, #63
 2614 0aa0 FFF7FEFF 		bl	graphic_write_command
 674:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_DISP_START,B_CS1|B_CS2);
 2615              		.loc 1 674 0
 2616 0aa4 1821     		movs	r1, #24
 2617 0aa6 C020     		movs	r0, #192
 2618 0aa8 FFF7FEFF 		bl	graphic_write_command
 675:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD,B_CS1|B_CS2);
 2619              		.loc 1 675 0
 2620 0aac 1821     		movs	r1, #24
 2621 0aae 4020     		movs	r0, #64
 2622 0ab0 FFF7FEFF 		bl	graphic_write_command
 676:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE,B_CS1|B_CS2);
 2623              		.loc 1 676 0
 2624 0ab4 1821     		movs	r1, #24
 2625 0ab6 B820     		movs	r0, #184
 2626 0ab8 FFF7FEFF 		bl	graphic_write_command
 677:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(0);
 2627              		.loc 1 677 0
 2628 0abc 0020     		movs	r0, #0
 2629 0abe FFF755FC 		bl	select_controller
 678:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2630              		.loc 1 678 0
 2631 0ac2 C046     		nop
 2632 0ac4 BD46     		mov	sp, r7
 2633              		@ sp needed
 2634 0ac6 80BD     		pop	{r7, pc}
 2635              		.cfi_endproc
 2636              	.LFE28:
 2638              		.align	1
 2639              		.global	main
 2640              		.syntax unified
 2641              		.code	16
 2642              		.thumb_func
 2643              		.fpu softvfp
 2645              	main:
 2646              	.LFB29:
 679:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 680:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 681:Z:/MOP/3.3_codelite/lab_5\spel.c **** void main(int argc, char **argv){
 2647              		.loc 1 681 0
 2648              		.cfi_startproc
 2649              		@ args = 0, pretend = 0, frame = 24
 2650              		@ frame_needed = 1, uses_anonymous_args = 0
 2651 0ac8 80B5     		push	{r7, lr}
 2652              		.cfi_def_cfa_offset 8
 2653              		.cfi_offset 7, -8
 2654              		.cfi_offset 14, -4
 2655 0aca 86B0     		sub	sp, sp, #24
 2656              		.cfi_def_cfa_offset 32
 2657 0acc 00AF     		add	r7, sp, #0
 2658              		.cfi_def_cfa_register 7
 2659 0ace 7860     		str	r0, [r7, #4]
 2660 0ad0 3960     		str	r1, [r7]
 682:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 683:Z:/MOP/3.3_codelite/lab_5\spel.c **** POBJECT p = &ball;
 2661              		.loc 1 683 0
 2662 0ad2 114B     		ldr	r3, .L147
 2663 0ad4 7B61     		str	r3, [r7, #20]
 684:Z:/MOP/3.3_codelite/lab_5\spel.c **** POBJECT b1 = &bar_1;
 2664              		.loc 1 684 0
 2665 0ad6 114B     		ldr	r3, .L147+4
 2666 0ad8 3B61     		str	r3, [r7, #16]
 685:Z:/MOP/3.3_codelite/lab_5\spel.c **** POBJECT b2 = &bar_2;
 2667              		.loc 1 685 0
 2668 0ada 114B     		ldr	r3, .L147+8
 2669 0adc FB60     		str	r3, [r7, #12]
 686:Z:/MOP/3.3_codelite/lab_5\spel.c **** init_app();
 2670              		.loc 1 686 0
 2671 0ade FFF7FEFF 		bl	init_app
 687:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_initialize();
 2672              		.loc 1 687 0
 2673 0ae2 FFF7FEFF 		bl	graphic_initialize
 688:Z:/MOP/3.3_codelite/lab_5\spel.c **** #ifndef SIMULATOR
 689:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_clear_screen();
 690:Z:/MOP/3.3_codelite/lab_5\spel.c **** #endif
 691:Z:/MOP/3.3_codelite/lab_5\spel.c **** p->set_speed(p,4,1);
 2674              		.loc 1 691 0
 2675 0ae6 7B69     		ldr	r3, [r7, #20]
 2676 0ae8 1B6A     		ldr	r3, [r3, #32]
 2677 0aea 7869     		ldr	r0, [r7, #20]
 2678 0aec 0122     		movs	r2, #1
 2679 0aee 0421     		movs	r1, #4
 2680 0af0 9847     		blx	r3
 2681              	.LVL1:
 2682              	.L146:
 692:Z:/MOP/3.3_codelite/lab_5\spel.c **** while(1)
 693:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 694:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	p->draw(b1);
 2683              		.loc 1 694 0 discriminator 1
 2684 0af2 7B69     		ldr	r3, [r7, #20]
 2685 0af4 5B69     		ldr	r3, [r3, #20]
 2686 0af6 3A69     		ldr	r2, [r7, #16]
 2687 0af8 1000     		movs	r0, r2
 2688 0afa 9847     		blx	r3
 2689              	.LVL2:
 695:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	p->draw(b2);
 2690              		.loc 1 695 0 discriminator 1
 2691 0afc 7B69     		ldr	r3, [r7, #20]
 2692 0afe 5B69     		ldr	r3, [r3, #20]
 2693 0b00 FA68     		ldr	r2, [r7, #12]
 2694 0b02 1000     		movs	r0, r2
 2695 0b04 9847     		blx	r3
 2696              	.LVL3:
 696:Z:/MOP/3.3_codelite/lab_5\spel.c ****     p->move(p);
 2697              		.loc 1 696 0 discriminator 1
 2698 0b06 7B69     		ldr	r3, [r7, #20]
 2699 0b08 DB69     		ldr	r3, [r3, #28]
 2700 0b0a 7A69     		ldr	r2, [r7, #20]
 2701 0b0c 1000     		movs	r0, r2
 2702 0b0e 9847     		blx	r3
 2703              	.LVL4:
 697:Z:/MOP/3.3_codelite/lab_5\spel.c ****     delay_milli(40);
 2704              		.loc 1 697 0 discriminator 1
 2705 0b10 2820     		movs	r0, #40
 2706 0b12 FFF7FEFF 		bl	delay_milli
 694:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	p->draw(b2);
 2707              		.loc 1 694 0 discriminator 1
 2708 0b16 ECE7     		b	.L146
 2709              	.L148:
 2710              		.align	2
 2711              	.L147:
 2712 0b18 24C00000 		.word	ball
 2713 0b1c 48C00000 		.word	bar_1
 2714 0b20 6CC00000 		.word	bar_2
 2715              		.cfi_endproc
 2716              	.LFE29:
 2718              	.Letext0:
