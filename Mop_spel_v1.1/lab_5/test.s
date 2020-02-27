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
  52:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  53:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  54:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  55:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define CTRL_RD *(portIdrLow)
  56:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define CTRL_WR *(portOdrLow)
  57:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define DATA_RD *(portIdrHigh)
  58:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define DATA_WR *(portOdrHigh)
  59:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  60:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef unsigned int uint32_t;
  61:Z:/MOP/3.3_codelite/lab_5\spel.c ****  
  62:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define PORT_D_BASE 0x40020C00
  63:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_Moder ((volatile uint32_t *) (PORT_D_BASE))
  64:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_Otyper ((volatile unsigned short *) (PORT_D_BASE+0x4))
  65:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_Ospeedr ((volatile unsigned int *) (PORT_D_BASE+0x8))
  66:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_Pupdr ((volatile unsigned int *) (PORT_D_BASE+0xC))
  67:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_IdrLow ((volatile unsigned char *) (PORT_D_BASE+0x10))
  68:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_IdrHigh ((volatile unsigned char *) (PORT_D_BASE+0x11))
  69:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_OdrLow ((volatile unsigned char *) (PORT_D_BASE+0x14))
  70:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define portD_OdrHigh ((volatile unsigned char *) (PORT_D_BASE+0x15))
  71:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  72:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  73:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define PointsToWin 6
  74:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  75:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define LcdHeight 64
  76:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define LcdWidth 128
  77:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  78:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char keyb(void) {
  76              		.loc 1 78 0
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
  79:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
  89              		.loc 1 79 0
  90 0006 3B00     		movs	r3, r7
  91 0008 164A     		ldr	r2, .L8
  92 000a 13CA     		ldmia	r2!, {r0, r1, r4}
  93 000c 13C3     		stmia	r3!, {r0, r1, r4}
  94 000e 1268     		ldr	r2, [r2]
  95 0010 1A60     		str	r2, [r3]
  80:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	int row, col;
  81:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	for (row=1; row <=4 ; row++ ) {
  96              		.loc 1 81 0
  97 0012 0123     		movs	r3, #1
  98 0014 7B61     		str	r3, [r7, #20]
  99 0016 1AE0     		b	.L3
 100              	.L6:
 101              	.LBB2:
  82:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		kbdActivate( row );
 102              		.loc 1 82 0
 103 0018 7B69     		ldr	r3, [r7, #20]
 104 001a 1800     		movs	r0, r3
 105 001c FFF7FEFF 		bl	kbdActivate
 106              	.LBB3:
  83:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		if( (col = kbdGetCol () ) != 0 ){
 107              		.loc 1 83 0
 108 0020 FFF7FEFF 		bl	kbdGetCol
 109 0024 0300     		movs	r3, r0
 110 0026 3B61     		str	r3, [r7, #16]
 111 0028 3B69     		ldr	r3, [r7, #16]
 112 002a 002B     		cmp	r3, #0
 113 002c 0CD0     		beq	.L4
  84:Z:/MOP/3.3_codelite/lab_5\spel.c **** 			kbdActivate(row);
 114              		.loc 1 84 0
 115 002e 7B69     		ldr	r3, [r7, #20]
 116 0030 1800     		movs	r0, r3
 117 0032 FFF7FEFF 		bl	kbdActivate
  85:Z:/MOP/3.3_codelite/lab_5\spel.c **** 			return key [4*(row-1)+(col-1) ];
 118              		.loc 1 85 0
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
  81:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		kbdActivate( row );
 131              		.loc 1 81 0 discriminator 2
 132 0048 7B69     		ldr	r3, [r7, #20]
 133 004a 0133     		adds	r3, r3, #1
 134 004c 7B61     		str	r3, [r7, #20]
 135              	.L3:
  81:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		kbdActivate( row );
 136              		.loc 1 81 0 is_stmt 0 discriminator 1
 137 004e 7B69     		ldr	r3, [r7, #20]
 138 0050 042B     		cmp	r3, #4
 139 0052 E1DD     		ble	.L6
  86:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		}
  87:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		
  88:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
  89:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
  90:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	*portD_OdrHigh = 0;
 140              		.loc 1 90 0 is_stmt 1
 141 0054 044B     		ldr	r3, .L8+4
 142 0056 0022     		movs	r2, #0
 143 0058 1A70     		strb	r2, [r3]
  91:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	return 0xFF;
 144              		.loc 1 91 0
 145 005a FF23     		movs	r3, #255
 146              	.L7:
  92:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
  93:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
  94:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 147              		.loc 1 94 0 discriminator 1
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
  95:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
  96:Z:/MOP/3.3_codelite/lab_5\spel.c **** void kbdActivate( unsigned int row ){
 170              		.loc 1 96 0
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
  97:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	switch( row ) {
 183              		.loc 1 97 0
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
  98:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 1: *portD_OdrHigh = 0x10 ; break;
 203              		.loc 1 98 0
 204 0086 0D4B     		ldr	r3, .L19+4
 205 0088 1022     		movs	r2, #16
 206 008a 1A70     		strb	r2, [r3]
 207 008c 0FE0     		b	.L11
 208              	.L15:
  99:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 2: *portD_OdrHigh = 0x20 ; break;
 209              		.loc 1 99 0
 210 008e 0B4B     		ldr	r3, .L19+4
 211 0090 2022     		movs	r2, #32
 212 0092 1A70     		strb	r2, [r3]
 213 0094 0BE0     		b	.L11
 214              	.L16:
 100:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 3: *portD_OdrHigh = 0x40 ; break;
 215              		.loc 1 100 0
 216 0096 094B     		ldr	r3, .L19+4
 217 0098 4022     		movs	r2, #64
 218 009a 1A70     		strb	r2, [r3]
 219 009c 07E0     		b	.L11
 220              	.L17:
 101:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 4: *portD_OdrHigh = 0x80 ; break;
 221              		.loc 1 101 0
 222 009e 074B     		ldr	r3, .L19+4
 223 00a0 8022     		movs	r2, #128
 224 00a2 1A70     		strb	r2, [r3]
 225 00a4 03E0     		b	.L11
 226              	.L12:
 102:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	case 0: *portD_OdrHigh = 0x00; break;
 227              		.loc 1 102 0
 228 00a6 054B     		ldr	r3, .L19+4
 229 00a8 0022     		movs	r2, #0
 230 00aa 1A70     		strb	r2, [r3]
 231 00ac C046     		nop
 232              	.L11:
 233              	.L18:
 103:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 104:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 234              		.loc 1 104 0
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
 105:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 106:Z:/MOP/3.3_codelite/lab_5\spel.c **** int kbdGetCol ( void ){
 257              		.loc 1 106 0
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
 107:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	unsigned char c;
 108:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	c = *portD_IdrHigh;
 269              		.loc 1 108 0
 270 00c6 124A     		ldr	r2, .L27
 271 00c8 FB1D     		adds	r3, r7, #7
 272 00ca 1278     		ldrb	r2, [r2]
 273 00cc 1A70     		strb	r2, [r3]
 109:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if ( c & 0x8 ) return 4;
 274              		.loc 1 109 0
 275 00ce FB1D     		adds	r3, r7, #7
 276 00d0 1B78     		ldrb	r3, [r3]
 277 00d2 0822     		movs	r2, #8
 278 00d4 1340     		ands	r3, r2
 279 00d6 01D0     		beq	.L22
 280              		.loc 1 109 0 is_stmt 0 discriminator 1
 281 00d8 0423     		movs	r3, #4
 282 00da 15E0     		b	.L23
 283              	.L22:
 110:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if ( c & 0x4 ) return 3;
 284              		.loc 1 110 0 is_stmt 1
 285 00dc FB1D     		adds	r3, r7, #7
 286 00de 1B78     		ldrb	r3, [r3]
 287 00e0 0422     		movs	r2, #4
 288 00e2 1340     		ands	r3, r2
 289 00e4 01D0     		beq	.L24
 290              		.loc 1 110 0 is_stmt 0 discriminator 1
 291 00e6 0323     		movs	r3, #3
 292 00e8 0EE0     		b	.L23
 293              	.L24:
 111:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if ( c & 0x2 ) return 2;
 294              		.loc 1 111 0 is_stmt 1
 295 00ea FB1D     		adds	r3, r7, #7
 296 00ec 1B78     		ldrb	r3, [r3]
 297 00ee 0222     		movs	r2, #2
 298 00f0 1340     		ands	r3, r2
 299 00f2 01D0     		beq	.L25
 300              		.loc 1 111 0 is_stmt 0 discriminator 1
 301 00f4 0223     		movs	r3, #2
 302 00f6 07E0     		b	.L23
 303              	.L25:
 112:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if ( c & 0x1 ) return 1;
 304              		.loc 1 112 0 is_stmt 1
 305 00f8 FB1D     		adds	r3, r7, #7
 306 00fa 1B78     		ldrb	r3, [r3]
 307 00fc 0122     		movs	r2, #1
 308 00fe 1340     		ands	r3, r2
 309 0100 01D0     		beq	.L26
 310              		.loc 1 112 0 is_stmt 0 discriminator 1
 311 0102 0123     		movs	r3, #1
 312 0104 00E0     		b	.L23
 313              	.L26:
 113:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	return 0;
 314              		.loc 1 113 0 is_stmt 1
 315 0106 0023     		movs	r3, #0
 316              	.L23:
 114:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 317              		.loc 1 114 0
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
 363 0024 00000000 		.space	976
 363      00000000 
 363      00000000 
 363      00000000 
 363      00000000 
 364              		.global	bar_geometry
 365              		.align	2
 368              	bar_geometry:
 369 03f4 16000000 		.word	22
 370 03f8 02000000 		.word	2
 371 03fc 0B000000 		.word	11
 372 0400 00       		.byte	0
 373 0401 00       		.byte	0
 374 0402 01       		.byte	1
 375 0403 00       		.byte	0
 376 0404 00       		.byte	0
 377 0405 01       		.byte	1
 378 0406 01       		.byte	1
 379 0407 01       		.byte	1
 380 0408 00       		.byte	0
 381 0409 02       		.byte	2
 382 040a 01       		.byte	1
 383 040b 02       		.byte	2
 384 040c 00       		.byte	0
 385 040d 03       		.byte	3
 386 040e 01       		.byte	1
 387 040f 03       		.byte	3
 388 0410 00       		.byte	0
 389 0411 04       		.byte	4
 390 0412 01       		.byte	1
 391 0413 04       		.byte	4
 392 0414 00       		.byte	0
 393 0415 05       		.byte	5
 394 0416 01       		.byte	1
 395 0417 05       		.byte	5
 396 0418 00       		.byte	0
 397 0419 06       		.byte	6
 398 041a 01       		.byte	1
 399 041b 06       		.byte	6
 400 041c 00       		.byte	0
 401 041d 07       		.byte	7
 402 041e 01       		.byte	1
 403 041f 07       		.byte	7
 404 0420 00       		.byte	0
 405 0421 08       		.byte	8
 406 0422 01       		.byte	1
 407 0423 08       		.byte	8
 408 0424 00       		.byte	0
 409 0425 09       		.byte	9
 410 0426 01       		.byte	1
 411 0427 09       		.byte	9
 412 0428 00       		.byte	0
 413 0429 0A       		.byte	10
 414 042a 01       		.byte	1
 415 042b 0A       		.byte	10
 416 042c 00000000 		.space	956
 416      00000000 
 416      00000000 
 416      00000000 
 416      00000000 
 417              		.text
 418              		.align	1
 419              		.global	init_app
 420              		.syntax unified
 421              		.code	16
 422              		.thumb_func
 423              		.fpu softvfp
 425              	init_app:
 426              	.LFB4:
 115:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 116:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef struct tPoint
 117:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 118:Z:/MOP/3.3_codelite/lab_5\spel.c ****     unsigned char x;
 119:Z:/MOP/3.3_codelite/lab_5\spel.c ****     unsigned char y;
 120:Z:/MOP/3.3_codelite/lab_5\spel.c **** } POINT;
 121:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 122:Z:/MOP/3.3_codelite/lab_5\spel.c **** #define MAX_POINTS 500
 123:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 124:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef struct tGeometry
 125:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 126:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int numpoints;
 127:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int sizex;
 128:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int sizey;
 129:Z:/MOP/3.3_codelite/lab_5\spel.c ****     POINT px[MAX_POINTS];
 130:Z:/MOP/3.3_codelite/lab_5\spel.c **** } GEOMETRY, *PGEOMETRY;
 131:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 132:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef struct tObj
 133:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 134:Z:/MOP/3.3_codelite/lab_5\spel.c ****     PGEOMETRY geo;
 135:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int dirx,diry;
 136:Z:/MOP/3.3_codelite/lab_5\spel.c ****     int posx,posy;
 137:Z:/MOP/3.3_codelite/lab_5\spel.c ****     void (*draw)(struct tObj*);
 138:Z:/MOP/3.3_codelite/lab_5\spel.c ****     void (*clear)(struct tObj*);
 139:Z:/MOP/3.3_codelite/lab_5\spel.c ****     void (*move)(struct tObj*);
 140:Z:/MOP/3.3_codelite/lab_5\spel.c ****     void (*set_speed)(struct tObj*, int, int);
 141:Z:/MOP/3.3_codelite/lab_5\spel.c **** } OBJECT, *POBJECT;
 142:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 143:Z:/MOP/3.3_codelite/lab_5\spel.c **** /*void graphic_initialize(void);
 144:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 145:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
 146:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 147:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
 148:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 149:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_write(uint8_t value, uint8_t controller);
 150:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 151:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_ctrl_bit_clear(uint8_t x);
 152:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 153:Z:/MOP/3.3_codelite/lab_5\spel.c **** void move_object(POBJECT O);
 154:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 155:Z:/MOP/3.3_codelite/lab_5\spel.c **** void clear_object(POBJECT O);
 156:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 157:Z:/MOP/3.3_codelite/lab_5\spel.c **** void draw_object(POBJECT O);
 158:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 159:Z:/MOP/3.3_codelite/lab_5\spel.c **** void set_object_speed(POBJECT O, int speedx, int speedy);
 160:Z:/MOP/3.3_codelite/lab_5\spel.c **** */
 161:Z:/MOP/3.3_codelite/lab_5\spel.c **** GEOMETRY ball_geometry ={
 162:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 163:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.numpoints = 12,
 164:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizex = 4,
 165:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizey = 4,
 166:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	{
 167:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		/* px[0,1,2 ....] */
 168:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
 169:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
 170:Z:/MOP/3.3_codelite/lab_5\spel.c ****         {3,1}, {3,2}
 171:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 172:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 173:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 174:Z:/MOP/3.3_codelite/lab_5\spel.c **** GEOMETRY bar_geometry ={
 175:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.numpoints = 22,
 176:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizex = 2,
 177:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.sizey = 11,
 178:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	{
 179:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,0},{1,0},
 180:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,1},{1,1},
 181:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,2},{1,2},
 182:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,3},{1,3},
 183:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,4},{1,4},
 184:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,5},{1,5},
 185:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,6},{1,6},
 186:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,7},{1,7},
 187:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,8},{1,8},
 188:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,9},{1,9},
 189:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		{0,10},{1,10}
 190:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 191:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 192:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 193:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 194:Z:/MOP/3.3_codelite/lab_5\spel.c **** void init_app(void){
 427              		.loc 1 194 0
 428              		.cfi_startproc
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 1, uses_anonymous_args = 0
 431 0114 80B5     		push	{r7, lr}
 432              		.cfi_def_cfa_offset 8
 433              		.cfi_offset 7, -8
 434              		.cfi_offset 14, -4
 435 0116 00AF     		add	r7, sp, #0
 436              		.cfi_def_cfa_register 7
 195:Z:/MOP/3.3_codelite/lab_5\spel.c **** *(portModer) = 0x55555555;
 437              		.loc 1 195 0
 438 0118 0F4B     		ldr	r3, .L30
 439 011a 104A     		ldr	r2, .L30+4
 440 011c 1A60     		str	r2, [r3]
 196:Z:/MOP/3.3_codelite/lab_5\spel.c **** *(portOspeedr) = 0x55555555;
 441              		.loc 1 196 0
 442 011e 104B     		ldr	r3, .L30+8
 443 0120 0E4A     		ldr	r2, .L30+4
 444 0122 1A60     		str	r2, [r3]
 197:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Moder = 0x55005555;
 445              		.loc 1 197 0
 446 0124 0F4B     		ldr	r3, .L30+12
 447 0126 104A     		ldr	r2, .L30+16
 448 0128 1A60     		str	r2, [r3]
 198:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Ospeedr = 0x55555555;
 449              		.loc 1 198 0
 450 012a 104B     		ldr	r3, .L30+20
 451 012c 0B4A     		ldr	r2, .L30+4
 452 012e 1A60     		str	r2, [r3]
 199:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Pupdr &= 0x0000FFFF; /* Input, pull down */
 453              		.loc 1 199 0
 454 0130 0F4B     		ldr	r3, .L30+24
 455 0132 1A68     		ldr	r2, [r3]
 456 0134 0E4B     		ldr	r3, .L30+24
 457 0136 1204     		lsls	r2, r2, #16
 458 0138 120C     		lsrs	r2, r2, #16
 459 013a 1A60     		str	r2, [r3]
 200:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Pupdr |= 0x00AA0000; /* Input, pull down */
 460              		.loc 1 200 0
 461 013c 0C4B     		ldr	r3, .L30+24
 462 013e 1A68     		ldr	r2, [r3]
 463 0140 0B4B     		ldr	r3, .L30+24
 464 0142 AA21     		movs	r1, #170
 465 0144 0904     		lsls	r1, r1, #16
 466 0146 0A43     		orrs	r2, r1
 467 0148 1A60     		str	r2, [r3]
 201:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portD_Otyper = 0x0000; /* outputs are push/pull */
 468              		.loc 1 201 0
 469 014a 0A4B     		ldr	r3, .L30+28
 470 014c 0022     		movs	r2, #0
 471 014e 1A80     		strh	r2, [r3]
 202:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 203:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 472              		.loc 1 203 0
 473 0150 C046     		nop
 474 0152 BD46     		mov	sp, r7
 475              		@ sp needed
 476 0154 80BD     		pop	{r7, pc}
 477              	.L31:
 478 0156 C046     		.align	2
 479              	.L30:
 480 0158 00100240 		.word	1073876992
 481 015c 55555555 		.word	1431655765
 482 0160 08100240 		.word	1073877000
 483 0164 000C0240 		.word	1073875968
 484 0168 55550055 		.word	1426085205
 485 016c 080C0240 		.word	1073875976
 486 0170 0C0C0240 		.word	1073875980
 487 0174 040C0240 		.word	1073875972
 488              		.cfi_endproc
 489              	.LFE4:
 491              		.align	1
 492              		.global	set_object_speed
 493              		.syntax unified
 494              		.code	16
 495              		.thumb_func
 496              		.fpu softvfp
 498              	set_object_speed:
 499              	.LFB5:
 204:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 205:Z:/MOP/3.3_codelite/lab_5\spel.c **** void set_object_speed(POBJECT O, int speedx, int speedy){
 500              		.loc 1 205 0
 501              		.cfi_startproc
 502              		@ args = 0, pretend = 0, frame = 16
 503              		@ frame_needed = 1, uses_anonymous_args = 0
 504 0178 80B5     		push	{r7, lr}
 505              		.cfi_def_cfa_offset 8
 506              		.cfi_offset 7, -8
 507              		.cfi_offset 14, -4
 508 017a 84B0     		sub	sp, sp, #16
 509              		.cfi_def_cfa_offset 24
 510 017c 00AF     		add	r7, sp, #0
 511              		.cfi_def_cfa_register 7
 512 017e F860     		str	r0, [r7, #12]
 513 0180 B960     		str	r1, [r7, #8]
 514 0182 7A60     		str	r2, [r7, #4]
 206:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 207:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	O->dirx = speedx;
 515              		.loc 1 207 0
 516 0184 FB68     		ldr	r3, [r7, #12]
 517 0186 BA68     		ldr	r2, [r7, #8]
 518 0188 5A60     		str	r2, [r3, #4]
 208:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 209:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	O->diry = speedy;
 519              		.loc 1 209 0
 520 018a FB68     		ldr	r3, [r7, #12]
 521 018c 7A68     		ldr	r2, [r7, #4]
 522 018e 9A60     		str	r2, [r3, #8]
 210:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 211:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 523              		.loc 1 211 0
 524 0190 C046     		nop
 525 0192 BD46     		mov	sp, r7
 526 0194 04B0     		add	sp, sp, #16
 527              		@ sp needed
 528 0196 80BD     		pop	{r7, pc}
 529              		.cfi_endproc
 530              	.LFE5:
 532              		.align	1
 533              		.global	draw_object
 534              		.syntax unified
 535              		.code	16
 536              		.thumb_func
 537              		.fpu softvfp
 539              	draw_object:
 540              	.LFB6:
 212:Z:/MOP/3.3_codelite/lab_5\spel.c **** void draw_object(POBJECT O){
 541              		.loc 1 212 0
 542              		.cfi_startproc
 543              		@ args = 0, pretend = 0, frame = 16
 544              		@ frame_needed = 1, uses_anonymous_args = 0
 545 0198 80B5     		push	{r7, lr}
 546              		.cfi_def_cfa_offset 8
 547              		.cfi_offset 7, -8
 548              		.cfi_offset 14, -4
 549 019a 84B0     		sub	sp, sp, #16
 550              		.cfi_def_cfa_offset 24
 551 019c 00AF     		add	r7, sp, #0
 552              		.cfi_def_cfa_register 7
 553 019e 7860     		str	r0, [r7, #4]
 554              	.LBB4:
 213:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 214:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 555              		.loc 1 214 0
 556 01a0 0023     		movs	r3, #0
 557 01a2 FB60     		str	r3, [r7, #12]
 558 01a4 1CE0     		b	.L34
 559              	.L35:
 560              	.LBB5:
 215:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 216:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
 561              		.loc 1 216 0 discriminator 3
 562 01a6 7B68     		ldr	r3, [r7, #4]
 563 01a8 DA68     		ldr	r2, [r3, #12]
 564 01aa 7B68     		ldr	r3, [r7, #4]
 565 01ac 1968     		ldr	r1, [r3]
 566 01ae FB68     		ldr	r3, [r7, #12]
 567 01b0 0433     		adds	r3, r3, #4
 568 01b2 5B00     		lsls	r3, r3, #1
 569 01b4 CB18     		adds	r3, r1, r3
 570 01b6 0433     		adds	r3, r3, #4
 571 01b8 1B78     		ldrb	r3, [r3]
 572 01ba D018     		adds	r0, r2, r3
 573 01bc 7B68     		ldr	r3, [r7, #4]
 574 01be 1A69     		ldr	r2, [r3, #16]
 575 01c0 7B68     		ldr	r3, [r7, #4]
 576 01c2 1968     		ldr	r1, [r3]
 577 01c4 FB68     		ldr	r3, [r7, #12]
 578 01c6 0433     		adds	r3, r3, #4
 579 01c8 5B00     		lsls	r3, r3, #1
 580 01ca CB18     		adds	r3, r1, r3
 581 01cc 0533     		adds	r3, r3, #5
 582 01ce 1B78     		ldrb	r3, [r3]
 583 01d0 D318     		adds	r3, r2, r3
 584 01d2 0122     		movs	r2, #1
 585 01d4 1900     		movs	r1, r3
 586 01d6 FFF7FEFF 		bl	pixel
 587              	.LBE5:
 214:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 588              		.loc 1 214 0 discriminator 3
 589 01da FB68     		ldr	r3, [r7, #12]
 590 01dc 0133     		adds	r3, r3, #1
 591 01de FB60     		str	r3, [r7, #12]
 592              	.L34:
 214:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 593              		.loc 1 214 0 is_stmt 0 discriminator 1
 594 01e0 FA68     		ldr	r2, [r7, #12]
 595 01e2 F423     		movs	r3, #244
 596 01e4 FF33     		adds	r3, r3, #255
 597 01e6 9A42     		cmp	r2, r3
 598 01e8 DDDD     		ble	.L35
 599              	.LBE4:
 217:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 218:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 219:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 220:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 600              		.loc 1 220 0 is_stmt 1
 601 01ea C046     		nop
 602 01ec BD46     		mov	sp, r7
 603 01ee 04B0     		add	sp, sp, #16
 604              		@ sp needed
 605 01f0 80BD     		pop	{r7, pc}
 606              		.cfi_endproc
 607              	.LFE6:
 609              		.align	1
 610              		.global	clear_object
 611              		.syntax unified
 612              		.code	16
 613              		.thumb_func
 614              		.fpu softvfp
 616              	clear_object:
 617              	.LFB7:
 221:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 222:Z:/MOP/3.3_codelite/lab_5\spel.c **** void clear_object(POBJECT O){
 618              		.loc 1 222 0
 619              		.cfi_startproc
 620              		@ args = 0, pretend = 0, frame = 16
 621              		@ frame_needed = 1, uses_anonymous_args = 0
 622 01f2 80B5     		push	{r7, lr}
 623              		.cfi_def_cfa_offset 8
 624              		.cfi_offset 7, -8
 625              		.cfi_offset 14, -4
 626 01f4 84B0     		sub	sp, sp, #16
 627              		.cfi_def_cfa_offset 24
 628 01f6 00AF     		add	r7, sp, #0
 629              		.cfi_def_cfa_register 7
 630 01f8 7860     		str	r0, [r7, #4]
 631              	.LBB6:
 223:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 224:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 632              		.loc 1 224 0
 633 01fa 0023     		movs	r3, #0
 634 01fc FB60     		str	r3, [r7, #12]
 635 01fe 1CE0     		b	.L37
 636              	.L38:
 637              	.LBB7:
 225:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 226:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
 638              		.loc 1 226 0 discriminator 3
 639 0200 7B68     		ldr	r3, [r7, #4]
 640 0202 DA68     		ldr	r2, [r3, #12]
 641 0204 7B68     		ldr	r3, [r7, #4]
 642 0206 1968     		ldr	r1, [r3]
 643 0208 FB68     		ldr	r3, [r7, #12]
 644 020a 0433     		adds	r3, r3, #4
 645 020c 5B00     		lsls	r3, r3, #1
 646 020e CB18     		adds	r3, r1, r3
 647 0210 0433     		adds	r3, r3, #4
 648 0212 1B78     		ldrb	r3, [r3]
 649 0214 D018     		adds	r0, r2, r3
 650 0216 7B68     		ldr	r3, [r7, #4]
 651 0218 1A69     		ldr	r2, [r3, #16]
 652 021a 7B68     		ldr	r3, [r7, #4]
 653 021c 1968     		ldr	r1, [r3]
 654 021e FB68     		ldr	r3, [r7, #12]
 655 0220 0433     		adds	r3, r3, #4
 656 0222 5B00     		lsls	r3, r3, #1
 657 0224 CB18     		adds	r3, r1, r3
 658 0226 0533     		adds	r3, r3, #5
 659 0228 1B78     		ldrb	r3, [r3]
 660 022a D318     		adds	r3, r2, r3
 661 022c 0022     		movs	r2, #0
 662 022e 1900     		movs	r1, r3
 663 0230 FFF7FEFF 		bl	pixel
 664              	.LBE7:
 224:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 665              		.loc 1 224 0 discriminator 3
 666 0234 FB68     		ldr	r3, [r7, #12]
 667 0236 0133     		adds	r3, r3, #1
 668 0238 FB60     		str	r3, [r7, #12]
 669              	.L37:
 224:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 670              		.loc 1 224 0 is_stmt 0 discriminator 1
 671 023a FA68     		ldr	r2, [r7, #12]
 672 023c F423     		movs	r3, #244
 673 023e FF33     		adds	r3, r3, #255
 674 0240 9A42     		cmp	r2, r3
 675 0242 DDDD     		ble	.L38
 676              	.LBE6:
 227:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 228:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 229:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 230:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 677              		.loc 1 230 0 is_stmt 1
 678 0244 C046     		nop
 679 0246 BD46     		mov	sp, r7
 680 0248 04B0     		add	sp, sp, #16
 681              		@ sp needed
 682 024a 80BD     		pop	{r7, pc}
 683              		.cfi_endproc
 684              	.LFE7:
 686              		.align	1
 687              		.global	move_object
 688              		.syntax unified
 689              		.code	16
 690              		.thumb_func
 691              		.fpu softvfp
 693              	move_object:
 694              	.LFB8:
 231:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 232:Z:/MOP/3.3_codelite/lab_5\spel.c **** void move_object(POBJECT O){
 695              		.loc 1 232 0
 696              		.cfi_startproc
 697              		@ args = 0, pretend = 0, frame = 8
 698              		@ frame_needed = 1, uses_anonymous_args = 0
 699 024c 80B5     		push	{r7, lr}
 700              		.cfi_def_cfa_offset 8
 701              		.cfi_offset 7, -8
 702              		.cfi_offset 14, -4
 703 024e 82B0     		sub	sp, sp, #8
 704              		.cfi_def_cfa_offset 16
 705 0250 00AF     		add	r7, sp, #0
 706              		.cfi_def_cfa_register 7
 707 0252 7860     		str	r0, [r7, #4]
 233:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 234:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	clear_object(O);
 708              		.loc 1 234 0
 709 0254 7B68     		ldr	r3, [r7, #4]
 710 0256 1800     		movs	r0, r3
 711 0258 FFF7FEFF 		bl	clear_object
 235:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 236:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	O->posx += O->dirx;
 712              		.loc 1 236 0
 713 025c 7B68     		ldr	r3, [r7, #4]
 714 025e DA68     		ldr	r2, [r3, #12]
 715 0260 7B68     		ldr	r3, [r7, #4]
 716 0262 5B68     		ldr	r3, [r3, #4]
 717 0264 D218     		adds	r2, r2, r3
 718 0266 7B68     		ldr	r3, [r7, #4]
 719 0268 DA60     		str	r2, [r3, #12]
 237:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 238:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	O->posy += O->diry;
 720              		.loc 1 238 0
 721 026a 7B68     		ldr	r3, [r7, #4]
 722 026c 1A69     		ldr	r2, [r3, #16]
 723 026e 7B68     		ldr	r3, [r7, #4]
 724 0270 9B68     		ldr	r3, [r3, #8]
 725 0272 D218     		adds	r2, r2, r3
 726 0274 7B68     		ldr	r3, [r7, #4]
 727 0276 1A61     		str	r2, [r3, #16]
 239:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 240:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	if(O->posx < 1 || O->posx > 128){
 728              		.loc 1 240 0
 729 0278 7B68     		ldr	r3, [r7, #4]
 730 027a DB68     		ldr	r3, [r3, #12]
 731 027c 002B     		cmp	r3, #0
 732 027e 03DD     		ble	.L40
 733              		.loc 1 240 0 is_stmt 0 discriminator 1
 734 0280 7B68     		ldr	r3, [r7, #4]
 735 0282 DB68     		ldr	r3, [r3, #12]
 736 0284 802B     		cmp	r3, #128
 737 0286 05DD     		ble	.L41
 738              	.L40:
 241:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 242:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		O->dirx = -(O->dirx);
 739              		.loc 1 242 0 is_stmt 1
 740 0288 7B68     		ldr	r3, [r7, #4]
 741 028a 5B68     		ldr	r3, [r3, #4]
 742 028c 5A42     		rsbs	r2, r3, #0
 743 028e 7B68     		ldr	r3, [r7, #4]
 744 0290 5A60     		str	r2, [r3, #4]
 745 0292 11E0     		b	.L42
 746              	.L41:
 243:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 244:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 245:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 246:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	else if(O->posy < 1 || O->posy > 64 - O->geo->sizey){
 747              		.loc 1 246 0
 748 0294 7B68     		ldr	r3, [r7, #4]
 749 0296 1B69     		ldr	r3, [r3, #16]
 750 0298 002B     		cmp	r3, #0
 751 029a 08DD     		ble	.L43
 752              		.loc 1 246 0 is_stmt 0 discriminator 1
 753 029c 7B68     		ldr	r3, [r7, #4]
 754 029e 1A69     		ldr	r2, [r3, #16]
 755 02a0 7B68     		ldr	r3, [r7, #4]
 756 02a2 1B68     		ldr	r3, [r3]
 757 02a4 9B68     		ldr	r3, [r3, #8]
 758 02a6 4021     		movs	r1, #64
 759 02a8 CB1A     		subs	r3, r1, r3
 760 02aa 9A42     		cmp	r2, r3
 761 02ac 04DD     		ble	.L42
 762              	.L43:
 247:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 248:Z:/MOP/3.3_codelite/lab_5\spel.c **** 		O->diry = -(O->diry);
 763              		.loc 1 248 0 is_stmt 1
 764 02ae 7B68     		ldr	r3, [r7, #4]
 765 02b0 9B68     		ldr	r3, [r3, #8]
 766 02b2 5A42     		rsbs	r2, r3, #0
 767 02b4 7B68     		ldr	r3, [r7, #4]
 768 02b6 9A60     		str	r2, [r3, #8]
 769              	.L42:
 249:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 250:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	}
 251:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 252:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	draw_object(O);
 770              		.loc 1 252 0
 771 02b8 7B68     		ldr	r3, [r7, #4]
 772 02ba 1800     		movs	r0, r3
 773 02bc FFF7FEFF 		bl	draw_object
 253:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 254:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 774              		.loc 1 254 0
 775 02c0 C046     		nop
 776 02c2 BD46     		mov	sp, r7
 777 02c4 02B0     		add	sp, sp, #8
 778              		@ sp needed
 779 02c6 80BD     		pop	{r7, pc}
 780              		.cfi_endproc
 781              	.LFE8:
 783              		.data
 784              		.align	2
 787              	ball:
 788 07e8 00000000 		.word	ball_geometry
 789 07ec 00000000 		.word	0
 790 07f0 00000000 		.word	0
 791 07f4 40000000 		.word	64
 792 07f8 20000000 		.word	32
 793 07fc 00000000 		.word	draw_object
 794 0800 00000000 		.word	clear_object
 795 0804 00000000 		.word	move_object
 796 0808 00000000 		.word	set_object_speed
 797              		.align	2
 800              	bar_1:
 801 080c 00000000 		.word	bar_geometry
 802 0810 00000000 		.word	0
 803 0814 00000000 		.word	0
 804 0818 0F000000 		.word	15
 805 081c 20000000 		.word	32
 806 0820 00000000 		.word	draw_object
 807 0824 00000000 		.word	clear_object
 808 0828 00000000 		.word	set_object_speed
 809 082c 00000000 		.space	4
 810              		.align	2
 813              	bar_2:
 814 0830 00000000 		.word	bar_geometry
 815 0834 00000000 		.word	0
 816 0838 00000000 		.word	0
 817 083c 71000000 		.word	113
 818 0840 20000000 		.word	32
 819 0844 00000000 		.word	draw_object
 820 0848 00000000 		.word	clear_object
 821 084c 00000000 		.word	set_object_speed
 822 0850 00000000 		.space	4
 823              		.text
 824              		.align	1
 825              		.syntax unified
 826              		.code	16
 827              		.thumb_func
 828              		.fpu softvfp
 830              	graphic_ctrl_bit_set:
 831              	.LFB9:
 255:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 256:Z:/MOP/3.3_codelite/lab_5\spel.c **** static OBJECT ball = 
 257:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 258:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.geo = &ball_geometry,
 259:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.dirx = 0,
 260:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.diry = 0,
 261:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posx = LcdWidth/2,
 262:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posy = LcdHeight/2,
 263:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	draw_object,
 264:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	clear_object,
 265:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	move_object,
 266:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	set_object_speed
 267:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 268:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 269:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 270:Z:/MOP/3.3_codelite/lab_5\spel.c **** static OBJECT bar_1 = 
 271:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 272:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.geo = &bar_geometry,
 273:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.dirx = 0,
 274:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.diry = 0,
 275:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posx = 15,
 276:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posy = LcdHeight/2,
 277:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	draw_object,
 278:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	clear_object,
 279:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//move_object,
 280:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	set_object_speed
 281:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
 282:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 283:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 284:Z:/MOP/3.3_codelite/lab_5\spel.c **** static OBJECT bar_2 = 
 285:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 286:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.geo = &bar_geometry,
 287:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.dirx = 0,
 288:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.diry = 0,
 289:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posx = LcdWidth-15,
 290:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	.posy = LcdHeight/2,
 291:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	draw_object,
 292:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	clear_object,
 293:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	//move_object,
 294:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	set_object_speed
 295:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	
 296:Z:/MOP/3.3_codelite/lab_5\spel.c **** };
 297:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 298:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 299:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_ctrl_bit_set(uint8_t x){
 832              		.loc 1 299 0
 833              		.cfi_startproc
 834              		@ args = 0, pretend = 0, frame = 16
 835              		@ frame_needed = 1, uses_anonymous_args = 0
 836 02c8 80B5     		push	{r7, lr}
 837              		.cfi_def_cfa_offset 8
 838              		.cfi_offset 7, -8
 839              		.cfi_offset 14, -4
 840 02ca 84B0     		sub	sp, sp, #16
 841              		.cfi_def_cfa_offset 24
 842 02cc 00AF     		add	r7, sp, #0
 843              		.cfi_def_cfa_register 7
 844 02ce 0200     		movs	r2, r0
 845 02d0 FB1D     		adds	r3, r7, #7
 846 02d2 1A70     		strb	r2, [r3]
 300:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t c;
 301:Z:/MOP/3.3_codelite/lab_5\spel.c **** c =*portOdrLow;
 847              		.loc 1 301 0
 848 02d4 0F4A     		ldr	r2, .L45
 849 02d6 0F20     		movs	r0, #15
 850 02d8 3B18     		adds	r3, r7, r0
 851 02da 1278     		ldrb	r2, [r2]
 852 02dc 1A70     		strb	r2, [r3]
 302:Z:/MOP/3.3_codelite/lab_5\spel.c **** c &=~B_SELECT;
 853              		.loc 1 302 0
 854 02de 3B18     		adds	r3, r7, r0
 855 02e0 3A18     		adds	r2, r7, r0
 856 02e2 1278     		ldrb	r2, [r2]
 857 02e4 0421     		movs	r1, #4
 858 02e6 8A43     		bics	r2, r1
 859 02e8 1A70     		strb	r2, [r3]
 303:Z:/MOP/3.3_codelite/lab_5\spel.c ****     c |=(~B_SELECT &x);
 860              		.loc 1 303 0
 861 02ea FB1D     		adds	r3, r7, #7
 862 02ec 1B78     		ldrb	r3, [r3]
 863 02ee 5BB2     		sxtb	r3, r3
 864 02f0 0422     		movs	r2, #4
 865 02f2 9343     		bics	r3, r2
 866 02f4 5AB2     		sxtb	r2, r3
 867 02f6 3B18     		adds	r3, r7, r0
 868 02f8 1B78     		ldrb	r3, [r3]
 869 02fa 5BB2     		sxtb	r3, r3
 870 02fc 1343     		orrs	r3, r2
 871 02fe 5AB2     		sxtb	r2, r3
 872 0300 3B18     		adds	r3, r7, r0
 873 0302 1A70     		strb	r2, [r3]
 304:Z:/MOP/3.3_codelite/lab_5\spel.c ****     *portOdrLow= c;
 874              		.loc 1 304 0
 875 0304 034A     		ldr	r2, .L45
 876 0306 3B18     		adds	r3, r7, r0
 877 0308 1B78     		ldrb	r3, [r3]
 878 030a 1370     		strb	r3, [r2]
 305:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 879              		.loc 1 305 0
 880 030c C046     		nop
 881 030e BD46     		mov	sp, r7
 882 0310 04B0     		add	sp, sp, #16
 883              		@ sp needed
 884 0312 80BD     		pop	{r7, pc}
 885              	.L46:
 886              		.align	2
 887              	.L45:
 888 0314 14100240 		.word	1073877012
 889              		.cfi_endproc
 890              	.LFE9:
 892              		.align	1
 893              		.syntax unified
 894              		.code	16
 895              		.thumb_func
 896              		.fpu softvfp
 898              	graphic_ctrl_bit_clear:
 899              	.LFB10:
 306:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 307:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_ctrl_bit_clear(uint8_t x){
 900              		.loc 1 307 0
 901              		.cfi_startproc
 902              		@ args = 0, pretend = 0, frame = 16
 903              		@ frame_needed = 1, uses_anonymous_args = 0
 904 0318 80B5     		push	{r7, lr}
 905              		.cfi_def_cfa_offset 8
 906              		.cfi_offset 7, -8
 907              		.cfi_offset 14, -4
 908 031a 84B0     		sub	sp, sp, #16
 909              		.cfi_def_cfa_offset 24
 910 031c 00AF     		add	r7, sp, #0
 911              		.cfi_def_cfa_register 7
 912 031e 0200     		movs	r2, r0
 913 0320 FB1D     		adds	r3, r7, #7
 914 0322 1A70     		strb	r2, [r3]
 308:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t c;
 309:Z:/MOP/3.3_codelite/lab_5\spel.c **** c = *portOdrLow;
 915              		.loc 1 309 0
 916 0324 0F4A     		ldr	r2, .L48
 917 0326 0F20     		movs	r0, #15
 918 0328 3B18     		adds	r3, r7, r0
 919 032a 1278     		ldrb	r2, [r2]
 920 032c 1A70     		strb	r2, [r3]
 310:Z:/MOP/3.3_codelite/lab_5\spel.c **** c &=~B_SELECT;
 921              		.loc 1 310 0
 922 032e 3B18     		adds	r3, r7, r0
 923 0330 3A18     		adds	r2, r7, r0
 924 0332 1278     		ldrb	r2, [r2]
 925 0334 0421     		movs	r1, #4
 926 0336 8A43     		bics	r2, r1
 927 0338 1A70     		strb	r2, [r3]
 311:Z:/MOP/3.3_codelite/lab_5\spel.c **** c &=~x;
 928              		.loc 1 311 0
 929 033a FB1D     		adds	r3, r7, #7
 930 033c 1B78     		ldrb	r3, [r3]
 931 033e 5BB2     		sxtb	r3, r3
 932 0340 DB43     		mvns	r3, r3
 933 0342 5BB2     		sxtb	r3, r3
 934 0344 3A18     		adds	r2, r7, r0
 935 0346 1278     		ldrb	r2, [r2]
 936 0348 52B2     		sxtb	r2, r2
 937 034a 1340     		ands	r3, r2
 938 034c 5AB2     		sxtb	r2, r3
 939 034e 3B18     		adds	r3, r7, r0
 940 0350 1A70     		strb	r2, [r3]
 312:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portOdrLow=c;
 941              		.loc 1 312 0
 942 0352 044A     		ldr	r2, .L48
 943 0354 3B18     		adds	r3, r7, r0
 944 0356 1B78     		ldrb	r3, [r3]
 945 0358 1370     		strb	r3, [r2]
 313:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 946              		.loc 1 313 0
 947 035a C046     		nop
 948 035c BD46     		mov	sp, r7
 949 035e 04B0     		add	sp, sp, #16
 950              		@ sp needed
 951 0360 80BD     		pop	{r7, pc}
 952              	.L49:
 953 0362 C046     		.align	2
 954              	.L48:
 955 0364 14100240 		.word	1073877012
 956              		.cfi_endproc
 957              	.LFE10:
 959              		.align	1
 960              		.syntax unified
 961              		.code	16
 962              		.thumb_func
 963              		.fpu softvfp
 965              	select_controller:
 966              	.LFB11:
 314:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 315:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void select_controller(uint8_t controller){
 967              		.loc 1 315 0
 968              		.cfi_startproc
 969              		@ args = 0, pretend = 0, frame = 8
 970              		@ frame_needed = 1, uses_anonymous_args = 0
 971 0368 80B5     		push	{r7, lr}
 972              		.cfi_def_cfa_offset 8
 973              		.cfi_offset 7, -8
 974              		.cfi_offset 14, -4
 975 036a 82B0     		sub	sp, sp, #8
 976              		.cfi_def_cfa_offset 16
 977 036c 00AF     		add	r7, sp, #0
 978              		.cfi_def_cfa_register 7
 979 036e 0200     		movs	r2, r0
 980 0370 FB1D     		adds	r3, r7, #7
 981 0372 1A70     		strb	r2, [r3]
 316:Z:/MOP/3.3_codelite/lab_5\spel.c **** switch(controller){
 982              		.loc 1 316 0
 983 0374 FB1D     		adds	r3, r7, #7
 984 0376 1B78     		ldrb	r3, [r3]
 985 0378 082B     		cmp	r3, #8
 986 037a 0CD0     		beq	.L52
 987 037c 02DC     		bgt	.L53
 988 037e 002B     		cmp	r3, #0
 989 0380 05D0     		beq	.L54
 317:Z:/MOP/3.3_codelite/lab_5\spel.c **** case 0:graphic_ctrl_bit_clear(B_CS1|B_CS2); break;
 318:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS1 :graphic_ctrl_bit_set(B_CS1);
 319:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS2); break;
 320:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS2 :graphic_ctrl_bit_set(B_CS2);
 321:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS1); break;
 322:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS1|B_CS2 :graphic_ctrl_bit_set(B_CS1|B_CS2); break;
 323:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 324:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 990              		.loc 1 324 0
 991 0382 1AE0     		b	.L57
 992              	.L53:
 316:Z:/MOP/3.3_codelite/lab_5\spel.c **** switch(controller){
 993              		.loc 1 316 0
 994 0384 102B     		cmp	r3, #16
 995 0386 0DD0     		beq	.L55
 996 0388 182B     		cmp	r3, #24
 997 038a 12D0     		beq	.L56
 998              		.loc 1 324 0
 999 038c 15E0     		b	.L57
 1000              	.L54:
 317:Z:/MOP/3.3_codelite/lab_5\spel.c **** case 0:graphic_ctrl_bit_clear(B_CS1|B_CS2); break;
 1001              		.loc 1 317 0
 1002 038e 1820     		movs	r0, #24
 1003 0390 FFF7C2FF 		bl	graphic_ctrl_bit_clear
 1004 0394 11E0     		b	.L51
 1005              	.L52:
 318:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS2); break;
 1006              		.loc 1 318 0
 1007 0396 0820     		movs	r0, #8
 1008 0398 FFF796FF 		bl	graphic_ctrl_bit_set
 319:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS2 :graphic_ctrl_bit_set(B_CS2);
 1009              		.loc 1 319 0
 1010 039c 1020     		movs	r0, #16
 1011 039e FFF7BBFF 		bl	graphic_ctrl_bit_clear
 1012 03a2 0AE0     		b	.L51
 1013              	.L55:
 320:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS1); break;
 1014              		.loc 1 320 0
 1015 03a4 1020     		movs	r0, #16
 1016 03a6 FFF78FFF 		bl	graphic_ctrl_bit_set
 321:Z:/MOP/3.3_codelite/lab_5\spel.c **** case B_CS1|B_CS2 :graphic_ctrl_bit_set(B_CS1|B_CS2); break;
 1017              		.loc 1 321 0
 1018 03aa 0820     		movs	r0, #8
 1019 03ac FFF7B4FF 		bl	graphic_ctrl_bit_clear
 1020 03b0 03E0     		b	.L51
 1021              	.L56:
 322:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1022              		.loc 1 322 0
 1023 03b2 1820     		movs	r0, #24
 1024 03b4 FFF788FF 		bl	graphic_ctrl_bit_set
 1025 03b8 C046     		nop
 1026              	.L51:
 1027              	.L57:
 1028              		.loc 1 324 0
 1029 03ba C046     		nop
 1030 03bc BD46     		mov	sp, r7
 1031 03be 02B0     		add	sp, sp, #8
 1032              		@ sp needed
 1033 03c0 80BD     		pop	{r7, pc}
 1034              		.cfi_endproc
 1035              	.LFE11:
 1037              		.align	1
 1038              		.syntax unified
 1039              		.code	16
 1040              		.thumb_func
 1041              		.fpu softvfp
 1043              	graphic_wait_ready:
 1044              	.LFB12:
 325:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 326:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 327:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void graphic_wait_ready(void){
 1045              		.loc 1 327 0
 1046              		.cfi_startproc
 1047              		@ args = 0, pretend = 0, frame = 8
 1048              		@ frame_needed = 1, uses_anonymous_args = 0
 1049 03c2 80B5     		push	{r7, lr}
 1050              		.cfi_def_cfa_offset 8
 1051              		.cfi_offset 7, -8
 1052              		.cfi_offset 14, -4
 1053 03c4 82B0     		sub	sp, sp, #8
 1054              		.cfi_def_cfa_offset 16
 1055 03c6 00AF     		add	r7, sp, #0
 1056              		.cfi_def_cfa_register 7
 328:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t c;
 329:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1057              		.loc 1 329 0
 1058 03c8 4020     		movs	r0, #64
 1059 03ca FFF7A5FF 		bl	graphic_ctrl_bit_clear
 330:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portModer =0x00005555;// 15-8 inputs, 7-0 outputs
 1060              		.loc 1 330 0
 1061 03ce 144B     		ldr	r3, .L64
 1062 03d0 144A     		ldr	r2, .L64+4
 1063 03d2 1A60     		str	r2, [r3]
 331:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_RS);
 1064              		.loc 1 331 0
 1065 03d4 0120     		movs	r0, #1
 1066 03d6 FFF79FFF 		bl	graphic_ctrl_bit_clear
 332:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_RW);
 1067              		.loc 1 332 0
 1068 03da 0220     		movs	r0, #2
 1069 03dc FFF774FF 		bl	graphic_ctrl_bit_set
 333:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1070              		.loc 1 333 0
 1071 03e0 FFF7FEFF 		bl	delay_500ns
 1072              	.L61:
 334:Z:/MOP/3.3_codelite/lab_5\spel.c **** while(1){
 335:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 1073              		.loc 1 335 0
 1074 03e4 4020     		movs	r0, #64
 1075 03e6 FFF76FFF 		bl	graphic_ctrl_bit_set
 336:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1076              		.loc 1 336 0
 1077 03ea FFF7FEFF 		bl	delay_500ns
 337:Z:/MOP/3.3_codelite/lab_5\spel.c **** c =*portIdrHigh &LCD_BUSY;
 1078              		.loc 1 337 0
 1079 03ee 0E4B     		ldr	r3, .L64+8
 1080 03f0 1B78     		ldrb	r3, [r3]
 1081 03f2 DAB2     		uxtb	r2, r3
 1082 03f4 FB1D     		adds	r3, r7, #7
 1083 03f6 7F21     		movs	r1, #127
 1084 03f8 8A43     		bics	r2, r1
 1085 03fa 1A70     		strb	r2, [r3]
 338:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1086              		.loc 1 338 0
 1087 03fc 4020     		movs	r0, #64
 1088 03fe FFF78BFF 		bl	graphic_ctrl_bit_clear
 339:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1089              		.loc 1 339 0
 1090 0402 FFF7FEFF 		bl	delay_500ns
 340:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(c ==0) break;
 1091              		.loc 1 340 0
 1092 0406 FB1D     		adds	r3, r7, #7
 1093 0408 1B78     		ldrb	r3, [r3]
 1094 040a 002B     		cmp	r3, #0
 1095 040c 00D0     		beq	.L63
 335:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1096              		.loc 1 335 0
 1097 040e E9E7     		b	.L61
 1098              	.L63:
 1099              		.loc 1 340 0
 1100 0410 C046     		nop
 341:Z:/MOP/3.3_codelite/lab_5\spel.c **** }*portModer =0x55555555;// 15-0 outputs
 1101              		.loc 1 341 0
 1102 0412 034B     		ldr	r3, .L64
 1103 0414 054A     		ldr	r2, .L64+12
 1104 0416 1A60     		str	r2, [r3]
 342:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1105              		.loc 1 342 0
 1106 0418 C046     		nop
 1107 041a BD46     		mov	sp, r7
 1108 041c 02B0     		add	sp, sp, #8
 1109              		@ sp needed
 1110 041e 80BD     		pop	{r7, pc}
 1111              	.L65:
 1112              		.align	2
 1113              	.L64:
 1114 0420 00100240 		.word	1073876992
 1115 0424 55550000 		.word	21845
 1116 0428 11100240 		.word	1073877009
 1117 042c 55555555 		.word	1431655765
 1118              		.cfi_endproc
 1119              	.LFE12:
 1121              		.align	1
 1122              		.global	graphic_write
 1123              		.syntax unified
 1124              		.code	16
 1125              		.thumb_func
 1126              		.fpu softvfp
 1128              	graphic_write:
 1129              	.LFB13:
 343:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 344:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 345:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_write(uint8_t value, uint8_t controller) {
 1130              		.loc 1 345 0
 1131              		.cfi_startproc
 1132              		@ args = 0, pretend = 0, frame = 8
 1133              		@ frame_needed = 1, uses_anonymous_args = 0
 1134 0430 80B5     		push	{r7, lr}
 1135              		.cfi_def_cfa_offset 8
 1136              		.cfi_offset 7, -8
 1137              		.cfi_offset 14, -4
 1138 0432 82B0     		sub	sp, sp, #8
 1139              		.cfi_def_cfa_offset 16
 1140 0434 00AF     		add	r7, sp, #0
 1141              		.cfi_def_cfa_register 7
 1142 0436 0200     		movs	r2, r0
 1143 0438 FB1D     		adds	r3, r7, #7
 1144 043a 1A70     		strb	r2, [r3]
 1145 043c BB1D     		adds	r3, r7, #6
 1146 043e 0A1C     		adds	r2, r1, #0
 1147 0440 1A70     		strb	r2, [r3]
 346:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 347:Z:/MOP/3.3_codelite/lab_5\spel.c **** DATA_WR = value;
 1148              		.loc 1 347 0
 1149 0442 1A4A     		ldr	r2, .L69
 1150 0444 FB1D     		adds	r3, r7, #7
 1151 0446 1B78     		ldrb	r3, [r3]
 1152 0448 1370     		strb	r3, [r2]
 348:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 349:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(controller);
 1153              		.loc 1 349 0
 1154 044a BB1D     		adds	r3, r7, #6
 1155 044c 1B78     		ldrb	r3, [r3]
 1156 044e 1800     		movs	r0, r3
 1157 0450 FFF78AFF 		bl	select_controller
 350:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 351:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1158              		.loc 1 351 0
 1159 0454 FFF7FEFF 		bl	delay_500ns
 352:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 353:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 1160              		.loc 1 353 0
 1161 0458 4020     		movs	r0, #64
 1162 045a FFF735FF 		bl	graphic_ctrl_bit_set
 354:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 355:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns();
 1163              		.loc 1 355 0
 1164 045e FFF7FEFF 		bl	delay_500ns
 356:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 357:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1165              		.loc 1 357 0
 1166 0462 4020     		movs	r0, #64
 1167 0464 FFF758FF 		bl	graphic_ctrl_bit_clear
 358:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 359:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(controller & B_CS1) {
 1168              		.loc 1 359 0
 1169 0468 BB1D     		adds	r3, r7, #6
 1170 046a 1B78     		ldrb	r3, [r3]
 1171 046c 0822     		movs	r2, #8
 1172 046e 1340     		ands	r3, r2
 1173 0470 04D0     		beq	.L67
 360:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 361:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(B_CS1);
 1174              		.loc 1 361 0
 1175 0472 0820     		movs	r0, #8
 1176 0474 FFF778FF 		bl	select_controller
 362:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 363:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_wait_ready();
 1177              		.loc 1 363 0
 1178 0478 FFF7A3FF 		bl	graphic_wait_ready
 1179              	.L67:
 364:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 365:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 366:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 367:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(controller & B_CS2) {
 1180              		.loc 1 367 0
 1181 047c BB1D     		adds	r3, r7, #6
 1182 047e 1B78     		ldrb	r3, [r3]
 1183 0480 1022     		movs	r2, #16
 1184 0482 1340     		ands	r3, r2
 1185 0484 04D0     		beq	.L68
 368:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 369:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(B_CS2);
 1186              		.loc 1 369 0
 1187 0486 1020     		movs	r0, #16
 1188 0488 FFF76EFF 		bl	select_controller
 370:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 371:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_wait_ready();
 1189              		.loc 1 371 0
 1190 048c FFF799FF 		bl	graphic_wait_ready
 1191              	.L68:
 372:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 373:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 374:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 375:Z:/MOP/3.3_codelite/lab_5\spel.c **** DATA_WR = 0;
 1192              		.loc 1 375 0
 1193 0490 064B     		ldr	r3, .L69
 1194 0492 0022     		movs	r2, #0
 1195 0494 1A70     		strb	r2, [r3]
 376:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 377:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 1196              		.loc 1 377 0
 1197 0496 4020     		movs	r0, #64
 1198 0498 FFF716FF 		bl	graphic_ctrl_bit_set
 378:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 379:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(0);
 1199              		.loc 1 379 0
 1200 049c 0020     		movs	r0, #0
 1201 049e FFF763FF 		bl	select_controller
 380:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 381:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1202              		.loc 1 381 0
 1203 04a2 C046     		nop
 1204 04a4 BD46     		mov	sp, r7
 1205 04a6 02B0     		add	sp, sp, #8
 1206              		@ sp needed
 1207 04a8 80BD     		pop	{r7, pc}
 1208              	.L70:
 1209 04aa C046     		.align	2
 1210              	.L69:
 1211 04ac 15100240 		.word	1073877013
 1212              		.cfi_endproc
 1213              	.LFE13:
 1215              		.align	1
 1216              		.global	graphic_clear_screen
 1217              		.syntax unified
 1218              		.code	16
 1219              		.thumb_func
 1220              		.fpu softvfp
 1222              	graphic_clear_screen:
 1223              	.LFB14:
 382:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 383:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_clear_screen(void){
 1224              		.loc 1 383 0
 1225              		.cfi_startproc
 1226              		@ args = 0, pretend = 0, frame = 8
 1227              		@ frame_needed = 1, uses_anonymous_args = 0
 1228 04b0 80B5     		push	{r7, lr}
 1229              		.cfi_def_cfa_offset 8
 1230              		.cfi_offset 7, -8
 1231              		.cfi_offset 14, -4
 1232 04b2 82B0     		sub	sp, sp, #8
 1233              		.cfi_def_cfa_offset 16
 1234 04b4 00AF     		add	r7, sp, #0
 1235              		.cfi_def_cfa_register 7
 384:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t i,j;
 385:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <8;j++){
 1236              		.loc 1 385 0
 1237 04b6 BB1D     		adds	r3, r7, #6
 1238 04b8 0022     		movs	r2, #0
 1239 04ba 1A70     		strb	r2, [r3]
 1240 04bc 23E0     		b	.L72
 1241              	.L75:
 1242              	.LBB8:
 386:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,B_CS1|B_CS2);
 1243              		.loc 1 386 0
 1244 04be BB1D     		adds	r3, r7, #6
 1245 04c0 1B78     		ldrb	r3, [r3]
 1246 04c2 4822     		movs	r2, #72
 1247 04c4 5242     		rsbs	r2, r2, #0
 1248 04c6 1343     		orrs	r3, r2
 1249 04c8 DBB2     		uxtb	r3, r3
 1250 04ca 1821     		movs	r1, #24
 1251 04cc 1800     		movs	r0, r3
 1252 04ce FFF7FEFF 		bl	graphic_write_command
 387:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD  |0,B_CS1|B_CS2);
 1253              		.loc 1 387 0
 1254 04d2 1821     		movs	r1, #24
 1255 04d4 4020     		movs	r0, #64
 1256 04d6 FFF7FEFF 		bl	graphic_write_command
 388:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++){
 1257              		.loc 1 388 0
 1258 04da FB1D     		adds	r3, r7, #7
 1259 04dc 0022     		movs	r2, #0
 1260 04de 1A70     		strb	r2, [r3]
 1261 04e0 08E0     		b	.L73
 1262              	.L74:
 389:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(0,B_CS1|B_CS2);
 1263              		.loc 1 389 0 discriminator 3
 1264 04e2 1821     		movs	r1, #24
 1265 04e4 0020     		movs	r0, #0
 1266 04e6 FFF7FEFF 		bl	graphic_write
 388:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++){
 1267              		.loc 1 388 0 discriminator 3
 1268 04ea FB1D     		adds	r3, r7, #7
 1269 04ec 1A78     		ldrb	r2, [r3]
 1270 04ee FB1D     		adds	r3, r7, #7
 1271 04f0 0132     		adds	r2, r2, #1
 1272 04f2 1A70     		strb	r2, [r3]
 1273              	.L73:
 388:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++){
 1274              		.loc 1 388 0 is_stmt 0 discriminator 1
 1275 04f4 FB1D     		adds	r3, r7, #7
 1276 04f6 1B78     		ldrb	r3, [r3]
 1277 04f8 3F2B     		cmp	r3, #63
 1278 04fa F2D9     		bls	.L74
 1279              	.LBE8:
 385:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,B_CS1|B_CS2);
 1280              		.loc 1 385 0 is_stmt 1 discriminator 2
 1281 04fc BB1D     		adds	r3, r7, #6
 1282 04fe 1A78     		ldrb	r2, [r3]
 1283 0500 BB1D     		adds	r3, r7, #6
 1284 0502 0132     		adds	r2, r2, #1
 1285 0504 1A70     		strb	r2, [r3]
 1286              	.L72:
 385:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,B_CS1|B_CS2);
 1287              		.loc 1 385 0 is_stmt 0 discriminator 1
 1288 0506 BB1D     		adds	r3, r7, #6
 1289 0508 1B78     		ldrb	r3, [r3]
 1290 050a 072B     		cmp	r3, #7
 1291 050c D7D9     		bls	.L75
 390:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 391:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 392:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1292              		.loc 1 392 0 is_stmt 1
 1293 050e C046     		nop
 1294 0510 BD46     		mov	sp, r7
 1295 0512 02B0     		add	sp, sp, #8
 1296              		@ sp needed
 1297 0514 80BD     		pop	{r7, pc}
 1298              		.cfi_endproc
 1299              	.LFE14:
 1301              		.align	1
 1302              		.global	delay_250ns
 1303              		.syntax unified
 1304              		.code	16
 1305              		.thumb_func
 1306              		.fpu softvfp
 1308              	delay_250ns:
 1309              	.LFB15:
 393:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 394:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 395:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 396:Z:/MOP/3.3_codelite/lab_5\spel.c **** void delay_250ns(void){
 1310              		.loc 1 396 0
 1311              		.cfi_startproc
 1312              		@ args = 0, pretend = 0, frame = 0
 1313              		@ frame_needed = 1, uses_anonymous_args = 0
 1314 0516 80B5     		push	{r7, lr}
 1315              		.cfi_def_cfa_offset 8
 1316              		.cfi_offset 7, -8
 1317              		.cfi_offset 14, -4
 1318 0518 00AF     		add	r7, sp, #0
 1319              		.cfi_def_cfa_register 7
 397:Z:/MOP/3.3_codelite/lab_5\spel.c **** #ifdef SIMULATOR
 398:Z:/MOP/3.3_codelite/lab_5\spel.c **** return;
 1320              		.loc 1 398 0
 1321 051a C046     		nop
 399:Z:/MOP/3.3_codelite/lab_5\spel.c **** #endif
 400:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_CTRL = 0;
 401:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_LOAD = ((168/4)-1);
 402:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_VAL = 0;
 403:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_CTRL = 5;
 404:Z:/MOP/3.3_codelite/lab_5\spel.c **** while((*STK_CTRL & 0x10000) ==0){}
 405:Z:/MOP/3.3_codelite/lab_5\spel.c **** *STK_CTRL=0;
 406:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 407:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1322              		.loc 1 407 0
 1323 051c BD46     		mov	sp, r7
 1324              		@ sp needed
 1325 051e 80BD     		pop	{r7, pc}
 1326              		.cfi_endproc
 1327              	.LFE15:
 1329              		.align	1
 1330              		.global	delay_500ns
 1331              		.syntax unified
 1332              		.code	16
 1333              		.thumb_func
 1334              		.fpu softvfp
 1336              	delay_500ns:
 1337              	.LFB16:
 408:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 409:Z:/MOP/3.3_codelite/lab_5\spel.c **** void delay_500ns(unsigned int us){
 1338              		.loc 1 409 0
 1339              		.cfi_startproc
 1340              		@ args = 0, pretend = 0, frame = 8
 1341              		@ frame_needed = 1, uses_anonymous_args = 0
 1342 0520 80B5     		push	{r7, lr}
 1343              		.cfi_def_cfa_offset 8
 1344              		.cfi_offset 7, -8
 1345              		.cfi_offset 14, -4
 1346 0522 82B0     		sub	sp, sp, #8
 1347              		.cfi_def_cfa_offset 16
 1348 0524 00AF     		add	r7, sp, #0
 1349              		.cfi_def_cfa_register 7
 1350 0526 7860     		str	r0, [r7, #4]
 410:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	#ifdef SIMULATOR
 411:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	return;
 1351              		.loc 1 411 0
 1352 0528 C046     		nop
 412:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	#endif
 413:Z:/MOP/3.3_codelite/lab_5\spel.c ****     while(us--) {
 414:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 415:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 416:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 417:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 418:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1353              		.loc 1 418 0
 1354 052a BD46     		mov	sp, r7
 1355 052c 02B0     		add	sp, sp, #8
 1356              		@ sp needed
 1357 052e 80BD     		pop	{r7, pc}
 1358              		.cfi_endproc
 1359              	.LFE16:
 1361              		.align	1
 1362              		.global	delay_micro
 1363              		.syntax unified
 1364              		.code	16
 1365              		.thumb_func
 1366              		.fpu softvfp
 1368              	delay_micro:
 1369              	.LFB17:
 419:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 420:Z:/MOP/3.3_codelite/lab_5\spel.c **** void delay_micro(unsigned int us){
 1370              		.loc 1 420 0
 1371              		.cfi_startproc
 1372              		@ args = 0, pretend = 0, frame = 8
 1373              		@ frame_needed = 1, uses_anonymous_args = 0
 1374 0530 80B5     		push	{r7, lr}
 1375              		.cfi_def_cfa_offset 8
 1376              		.cfi_offset 7, -8
 1377              		.cfi_offset 14, -4
 1378 0532 82B0     		sub	sp, sp, #8
 1379              		.cfi_def_cfa_offset 16
 1380 0534 00AF     		add	r7, sp, #0
 1381              		.cfi_def_cfa_register 7
 1382 0536 7860     		str	r0, [r7, #4]
 421:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	#ifdef SIMULATOR
 422:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	return;
 1383              		.loc 1 422 0
 1384 0538 C046     		nop
 423:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	#endif
 424:Z:/MOP/3.3_codelite/lab_5\spel.c **** while(us--) {
 425:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 426:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 427:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 428:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_250ns();
 429:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 430:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1385              		.loc 1 430 0
 1386 053a BD46     		mov	sp, r7
 1387 053c 02B0     		add	sp, sp, #8
 1388              		@ sp needed
 1389 053e 80BD     		pop	{r7, pc}
 1390              		.cfi_endproc
 1391              	.LFE17:
 1393              		.global	__aeabi_uidiv
 1394              		.align	1
 1395              		.global	delay_milli
 1396              		.syntax unified
 1397              		.code	16
 1398              		.thumb_func
 1399              		.fpu softvfp
 1401              	delay_milli:
 1402              	.LFB18:
 431:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 432:Z:/MOP/3.3_codelite/lab_5\spel.c **** void delay_milli(unsigned int ms){
 1403              		.loc 1 432 0
 1404              		.cfi_startproc
 1405              		@ args = 0, pretend = 0, frame = 8
 1406              		@ frame_needed = 1, uses_anonymous_args = 0
 1407 0540 80B5     		push	{r7, lr}
 1408              		.cfi_def_cfa_offset 8
 1409              		.cfi_offset 7, -8
 1410              		.cfi_offset 14, -4
 1411 0542 82B0     		sub	sp, sp, #8
 1412              		.cfi_def_cfa_offset 16
 1413 0544 00AF     		add	r7, sp, #0
 1414              		.cfi_def_cfa_register 7
 1415 0546 7860     		str	r0, [r7, #4]
 433:Z:/MOP/3.3_codelite/lab_5\spel.c **** #ifdef SIMULATOR
 434:Z:/MOP/3.3_codelite/lab_5\spel.c **** ms = ms/1000;
 1416              		.loc 1 434 0
 1417 0548 7A68     		ldr	r2, [r7, #4]
 1418 054a FA23     		movs	r3, #250
 1419 054c 9900     		lsls	r1, r3, #2
 1420 054e 1000     		movs	r0, r2
 1421 0550 FFF7FEFF 		bl	__aeabi_uidiv
 1422              	.LVL0:
 1423 0554 0300     		movs	r3, r0
 1424 0556 7B60     		str	r3, [r7, #4]
 435:Z:/MOP/3.3_codelite/lab_5\spel.c **** ms++;
 1425              		.loc 1 435 0
 1426 0558 7B68     		ldr	r3, [r7, #4]
 1427 055a 0133     		adds	r3, r3, #1
 1428 055c 7B60     		str	r3, [r7, #4]
 436:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 437:Z:/MOP/3.3_codelite/lab_5\spel.c **** #endif
 438:Z:/MOP/3.3_codelite/lab_5\spel.c **** while(ms--)
 1429              		.loc 1 438 0
 1430 055e 04E0     		b	.L83
 1431              	.L84:
 439:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_micro(1000);
 1432              		.loc 1 439 0
 1433 0560 FA23     		movs	r3, #250
 1434 0562 9B00     		lsls	r3, r3, #2
 1435 0564 1800     		movs	r0, r3
 1436 0566 FFF7FEFF 		bl	delay_micro
 1437              	.L83:
 438:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_micro(1000);
 1438              		.loc 1 438 0
 1439 056a 7B68     		ldr	r3, [r7, #4]
 1440 056c 5A1E     		subs	r2, r3, #1
 1441 056e 7A60     		str	r2, [r7, #4]
 1442 0570 002B     		cmp	r3, #0
 1443 0572 F5D1     		bne	.L84
 440:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1444              		.loc 1 440 0
 1445 0574 C046     		nop
 1446 0576 BD46     		mov	sp, r7
 1447 0578 02B0     		add	sp, sp, #8
 1448              		@ sp needed
 1449 057a 80BD     		pop	{r7, pc}
 1450              		.cfi_endproc
 1451              	.LFE18:
 1453              		.align	1
 1454              		.global	graphic_write_command
 1455              		.syntax unified
 1456              		.code	16
 1457              		.thumb_func
 1458              		.fpu softvfp
 1460              	graphic_write_command:
 1461              	.LFB19:
 441:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 442:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 443:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 444:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 445:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_write_command(uint8_t commandToWrite, uint8_t controller) {
 1462              		.loc 1 445 0
 1463              		.cfi_startproc
 1464              		@ args = 0, pretend = 0, frame = 8
 1465              		@ frame_needed = 1, uses_anonymous_args = 0
 1466 057c 80B5     		push	{r7, lr}
 1467              		.cfi_def_cfa_offset 8
 1468              		.cfi_offset 7, -8
 1469              		.cfi_offset 14, -4
 1470 057e 82B0     		sub	sp, sp, #8
 1471              		.cfi_def_cfa_offset 16
 1472 0580 00AF     		add	r7, sp, #0
 1473              		.cfi_def_cfa_register 7
 1474 0582 0200     		movs	r2, r0
 1475 0584 FB1D     		adds	r3, r7, #7
 1476 0586 1A70     		strb	r2, [r3]
 1477 0588 BB1D     		adds	r3, r7, #6
 1478 058a 0A1C     		adds	r2, r1, #0
 1479 058c 1A70     		strb	r2, [r3]
 446:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 447:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1480              		.loc 1 447 0
 1481 058e 4020     		movs	r0, #64
 1482 0590 FFF7C2FE 		bl	graphic_ctrl_bit_clear
 448:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 449:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(controller);
 1483              		.loc 1 449 0
 1484 0594 BB1D     		adds	r3, r7, #6
 1485 0596 1B78     		ldrb	r3, [r3]
 1486 0598 1800     		movs	r0, r3
 1487 059a FFF7E5FE 		bl	select_controller
 450:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 451:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_RS | B_RW);
 1488              		.loc 1 451 0
 1489 059e 0320     		movs	r0, #3
 1490 05a0 FFF7BAFE 		bl	graphic_ctrl_bit_clear
 452:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 453:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(commandToWrite, controller);
 1491              		.loc 1 453 0
 1492 05a4 BB1D     		adds	r3, r7, #6
 1493 05a6 1A78     		ldrb	r2, [r3]
 1494 05a8 FB1D     		adds	r3, r7, #7
 1495 05aa 1B78     		ldrb	r3, [r3]
 1496 05ac 1100     		movs	r1, r2
 1497 05ae 1800     		movs	r0, r3
 1498 05b0 FFF7FEFF 		bl	graphic_write
 454:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 455:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1499              		.loc 1 455 0
 1500 05b4 C046     		nop
 1501 05b6 BD46     		mov	sp, r7
 1502 05b8 02B0     		add	sp, sp, #8
 1503              		@ sp needed
 1504 05ba 80BD     		pop	{r7, pc}
 1505              		.cfi_endproc
 1506              	.LFE19:
 1508              		.align	1
 1509              		.global	graphic_write_data
 1510              		.syntax unified
 1511              		.code	16
 1512              		.thumb_func
 1513              		.fpu softvfp
 1515              	graphic_write_data:
 1516              	.LFB20:
 456:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 457:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_write_data(uint8_t data, uint8_t controller) {
 1517              		.loc 1 457 0
 1518              		.cfi_startproc
 1519              		@ args = 0, pretend = 0, frame = 8
 1520              		@ frame_needed = 1, uses_anonymous_args = 0
 1521 05bc 80B5     		push	{r7, lr}
 1522              		.cfi_def_cfa_offset 8
 1523              		.cfi_offset 7, -8
 1524              		.cfi_offset 14, -4
 1525 05be 82B0     		sub	sp, sp, #8
 1526              		.cfi_def_cfa_offset 16
 1527 05c0 00AF     		add	r7, sp, #0
 1528              		.cfi_def_cfa_register 7
 1529 05c2 0200     		movs	r2, r0
 1530 05c4 FB1D     		adds	r3, r7, #7
 1531 05c6 1A70     		strb	r2, [r3]
 1532 05c8 BB1D     		adds	r3, r7, #6
 1533 05ca 0A1C     		adds	r2, r1, #0
 1534 05cc 1A70     		strb	r2, [r3]
 458:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1535              		.loc 1 458 0
 1536 05ce 4020     		movs	r0, #64
 1537 05d0 FFF7A2FE 		bl	graphic_ctrl_bit_clear
 459:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(controller);
 1538              		.loc 1 459 0
 1539 05d4 BB1D     		adds	r3, r7, #6
 1540 05d6 1B78     		ldrb	r3, [r3]
 1541 05d8 1800     		movs	r0, r3
 1542 05da FFF7C5FE 		bl	select_controller
 460:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_RS);
 1543              		.loc 1 460 0
 1544 05de 0120     		movs	r0, #1
 1545 05e0 FFF772FE 		bl	graphic_ctrl_bit_set
 461:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_RW);
 1546              		.loc 1 461 0
 1547 05e4 0220     		movs	r0, #2
 1548 05e6 FFF797FE 		bl	graphic_ctrl_bit_clear
 462:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(data, controller);
 1549              		.loc 1 462 0
 1550 05ea BB1D     		adds	r3, r7, #6
 1551 05ec 1A78     		ldrb	r2, [r3]
 1552 05ee FB1D     		adds	r3, r7, #7
 1553 05f0 1B78     		ldrb	r3, [r3]
 1554 05f2 1100     		movs	r1, r2
 1555 05f4 1800     		movs	r0, r3
 1556 05f6 FFF7FEFF 		bl	graphic_write
 463:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1557              		.loc 1 463 0
 1558 05fa C046     		nop
 1559 05fc BD46     		mov	sp, r7
 1560 05fe 02B0     		add	sp, sp, #8
 1561              		@ sp needed
 1562 0600 80BD     		pop	{r7, pc}
 1563              		.cfi_endproc
 1564              	.LFE20:
 1566              		.align	1
 1567              		.syntax unified
 1568              		.code	16
 1569              		.thumb_func
 1570              		.fpu softvfp
 1572              	graphic_read:
 1573              	.LFB21:
 464:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 465:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 466:Z:/MOP/3.3_codelite/lab_5\spel.c **** static uint8_t graphic_read(uint8_t controller){
 1574              		.loc 1 466 0
 1575              		.cfi_startproc
 1576              		@ args = 0, pretend = 0, frame = 16
 1577              		@ frame_needed = 1, uses_anonymous_args = 0
 1578 0602 80B5     		push	{r7, lr}
 1579              		.cfi_def_cfa_offset 8
 1580              		.cfi_offset 7, -8
 1581              		.cfi_offset 14, -4
 1582 0604 84B0     		sub	sp, sp, #16
 1583              		.cfi_def_cfa_offset 24
 1584 0606 00AF     		add	r7, sp, #0
 1585              		.cfi_def_cfa_register 7
 1586 0608 0200     		movs	r2, r0
 1587 060a FB1D     		adds	r3, r7, #7
 1588 060c 1A70     		strb	r2, [r3]
 467:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t c;
 468:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_E);
 1589              		.loc 1 468 0
 1590 060e 4020     		movs	r0, #64
 1591 0610 FFF782FE 		bl	graphic_ctrl_bit_clear
 469:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portModer =0x00005555;// 15-8 inputs, 7-0 outputs
 1592              		.loc 1 469 0
 1593 0614 1C4B     		ldr	r3, .L91
 1594 0616 1D4A     		ldr	r2, .L91+4
 1595 0618 1A60     		str	r2, [r3]
 470:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_RS|B_RW);
 1596              		.loc 1 470 0
 1597 061a 0320     		movs	r0, #3
 1598 061c FFF754FE 		bl	graphic_ctrl_bit_set
 471:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(controller);
 1599              		.loc 1 471 0
 1600 0620 FB1D     		adds	r3, r7, #7
 1601 0622 1B78     		ldrb	r3, [r3]
 1602 0624 1800     		movs	r0, r3
 1603 0626 FFF79FFE 		bl	select_controller
 472:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns(1);
 1604              		.loc 1 472 0
 1605 062a 0120     		movs	r0, #1
 1606 062c FFF7FEFF 		bl	delay_500ns
 473:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 1607              		.loc 1 473 0
 1608 0630 4020     		movs	r0, #64
 1609 0632 FFF749FE 		bl	graphic_ctrl_bit_set
 474:Z:/MOP/3.3_codelite/lab_5\spel.c **** delay_500ns(1);
 1610              		.loc 1 474 0
 1611 0636 0120     		movs	r0, #1
 1612 0638 FFF7FEFF 		bl	delay_500ns
 475:Z:/MOP/3.3_codelite/lab_5\spel.c **** c =*portIdrHigh;graphic_ctrl_bit_clear(B_E);
 1613              		.loc 1 475 0
 1614 063c 144A     		ldr	r2, .L91+8
 1615 063e 0F23     		movs	r3, #15
 1616 0640 FB18     		adds	r3, r7, r3
 1617 0642 1278     		ldrb	r2, [r2]
 1618 0644 1A70     		strb	r2, [r3]
 1619 0646 4020     		movs	r0, #64
 1620 0648 FFF766FE 		bl	graphic_ctrl_bit_clear
 476:Z:/MOP/3.3_codelite/lab_5\spel.c **** *portModer =0x55555555;// 15-0 outputs
 1621              		.loc 1 476 0
 1622 064c 0E4B     		ldr	r3, .L91
 1623 064e 114A     		ldr	r2, .L91+12
 1624 0650 1A60     		str	r2, [r3]
 477:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(controller &B_CS1 ){
 1625              		.loc 1 477 0
 1626 0652 FB1D     		adds	r3, r7, #7
 1627 0654 1B78     		ldrb	r3, [r3]
 1628 0656 0822     		movs	r2, #8
 1629 0658 1340     		ands	r3, r2
 1630 065a 04D0     		beq	.L88
 478:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(B_CS1);
 1631              		.loc 1 478 0
 1632 065c 0820     		movs	r0, #8
 1633 065e FFF783FE 		bl	select_controller
 479:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_wait_ready();
 1634              		.loc 1 479 0
 1635 0662 FFF7AEFE 		bl	graphic_wait_ready
 1636              	.L88:
 480:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 481:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(controller &B_CS2 ){
 1637              		.loc 1 481 0
 1638 0666 FB1D     		adds	r3, r7, #7
 1639 0668 1B78     		ldrb	r3, [r3]
 1640 066a 1022     		movs	r2, #16
 1641 066c 1340     		ands	r3, r2
 1642 066e 04D0     		beq	.L89
 482:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(B_CS2);
 1643              		.loc 1 482 0
 1644 0670 1020     		movs	r0, #16
 1645 0672 FFF779FE 		bl	select_controller
 483:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_wait_ready();
 1646              		.loc 1 483 0
 1647 0676 FFF7A4FE 		bl	graphic_wait_ready
 1648              	.L89:
 484:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 485:Z:/MOP/3.3_codelite/lab_5\spel.c **** return c;
 1649              		.loc 1 485 0
 1650 067a 0F23     		movs	r3, #15
 1651 067c FB18     		adds	r3, r7, r3
 1652 067e 1B78     		ldrb	r3, [r3]
 486:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1653              		.loc 1 486 0
 1654 0680 1800     		movs	r0, r3
 1655 0682 BD46     		mov	sp, r7
 1656 0684 04B0     		add	sp, sp, #16
 1657              		@ sp needed
 1658 0686 80BD     		pop	{r7, pc}
 1659              	.L92:
 1660              		.align	2
 1661              	.L91:
 1662 0688 00100240 		.word	1073876992
 1663 068c 55550000 		.word	21845
 1664 0690 11100240 		.word	1073877009
 1665 0694 55555555 		.word	1431655765
 1666              		.cfi_endproc
 1667              	.LFE21:
 1669              		.align	1
 1670              		.syntax unified
 1671              		.code	16
 1672              		.thumb_func
 1673              		.fpu softvfp
 1675              	graphic_read_data:
 1676              	.LFB22:
 487:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 488:Z:/MOP/3.3_codelite/lab_5\spel.c **** static uint8_t graphic_read_data(uint8_t controller){
 1677              		.loc 1 488 0
 1678              		.cfi_startproc
 1679              		@ args = 0, pretend = 0, frame = 8
 1680              		@ frame_needed = 1, uses_anonymous_args = 0
 1681 0698 80B5     		push	{r7, lr}
 1682              		.cfi_def_cfa_offset 8
 1683              		.cfi_offset 7, -8
 1684              		.cfi_offset 14, -4
 1685 069a 82B0     		sub	sp, sp, #8
 1686              		.cfi_def_cfa_offset 16
 1687 069c 00AF     		add	r7, sp, #0
 1688              		.cfi_def_cfa_register 7
 1689 069e 0200     		movs	r2, r0
 1690 06a0 FB1D     		adds	r3, r7, #7
 1691 06a2 1A70     		strb	r2, [r3]
 489:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_read(controller);
 1692              		.loc 1 489 0
 1693 06a4 FB1D     		adds	r3, r7, #7
 1694 06a6 1B78     		ldrb	r3, [r3]
 1695 06a8 1800     		movs	r0, r3
 1696 06aa FFF7AAFF 		bl	graphic_read
 490:Z:/MOP/3.3_codelite/lab_5\spel.c **** return graphic_read(controller);
 1697              		.loc 1 490 0
 1698 06ae FB1D     		adds	r3, r7, #7
 1699 06b0 1B78     		ldrb	r3, [r3]
 1700 06b2 1800     		movs	r0, r3
 1701 06b4 FFF7A5FF 		bl	graphic_read
 1702 06b8 0300     		movs	r3, r0
 491:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1703              		.loc 1 491 0
 1704 06ba 1800     		movs	r0, r3
 1705 06bc BD46     		mov	sp, r7
 1706 06be 02B0     		add	sp, sp, #8
 1707              		@ sp needed
 1708 06c0 80BD     		pop	{r7, pc}
 1709              		.cfi_endproc
 1710              	.LFE22:
 1712              		.align	1
 1713              		.global	pixel
 1714              		.syntax unified
 1715              		.code	16
 1716              		.thumb_func
 1717              		.fpu softvfp
 1719              	pixel:
 1720              	.LFB23:
 492:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 493:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 494:Z:/MOP/3.3_codelite/lab_5\spel.c **** /*void pixel(int x,int y,int set){
 495:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t mask, c,controller;
 496:Z:/MOP/3.3_codelite/lab_5\spel.c **** int index;
 497:Z:/MOP/3.3_codelite/lab_5\spel.c **** if((x < 1) || (y < 1) || (x >128)||(y >64))return;
 498:Z:/MOP/3.3_codelite/lab_5\spel.c **** index =(y-1)/8;
 499:Z:/MOP/3.3_codelite/lab_5\spel.c **** switch((y-1)%8){
 500:Z:/MOP/3.3_codelite/lab_5\spel.c **** case0:mask =1;break;
 501:Z:/MOP/3.3_codelite/lab_5\spel.c **** case1:mask =2;break;
 502:Z:/MOP/3.3_codelite/lab_5\spel.c **** case2:mask =4;break;
 503:Z:/MOP/3.3_codelite/lab_5\spel.c **** case3:mask =8;break;
 504:Z:/MOP/3.3_codelite/lab_5\spel.c **** case4:mask =0x10;break;
 505:Z:/MOP/3.3_codelite/lab_5\spel.c **** case5:mask =0x20;break;
 506:Z:/MOP/3.3_codelite/lab_5\spel.c **** case6:mask =0x40;break;
 507:Z:/MOP/3.3_codelite/lab_5\spel.c **** case7:mask =0x80;break;
 508:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 509:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 510:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set ==0)mask =~mask;
 511:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(x >64){
 512:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =B_CS2;
 513:Z:/MOP/3.3_codelite/lab_5\spel.c **** x =x -65;
 514:Z:/MOP/3.3_codelite/lab_5\spel.c **** } 
 515:Z:/MOP/3.3_codelite/lab_5\spel.c **** else {
 516:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =B_CS1;
 517:Z:/MOP/3.3_codelite/lab_5\spel.c **** x =x-1;
 518:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 519:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD  |x,controller );
 520:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |index,controller );
 521:Z:/MOP/3.3_codelite/lab_5\spel.c **** c =graphic_read_data(controller);
 522:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD |x,controller);
 523:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set)mask =mask |c;
 524:Z:/MOP/3.3_codelite/lab_5\spel.c **** else mask =mask &c;
 525:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(mask,controller);
 526:Z:/MOP/3.3_codelite/lab_5\spel.c **** }*/
 527:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 528:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 529:Z:/MOP/3.3_codelite/lab_5\spel.c **** void pixel(unsigned char x, unsigned char y, unsigned char set) {
 1721              		.loc 1 529 0
 1722              		.cfi_startproc
 1723              		@ args = 0, pretend = 0, frame = 16
 1724              		@ frame_needed = 1, uses_anonymous_args = 0
 1725 06c2 B0B5     		push	{r4, r5, r7, lr}
 1726              		.cfi_def_cfa_offset 16
 1727              		.cfi_offset 4, -16
 1728              		.cfi_offset 5, -12
 1729              		.cfi_offset 7, -8
 1730              		.cfi_offset 14, -4
 1731 06c4 84B0     		sub	sp, sp, #16
 1732              		.cfi_def_cfa_offset 32
 1733 06c6 00AF     		add	r7, sp, #0
 1734              		.cfi_def_cfa_register 7
 1735 06c8 0400     		movs	r4, r0
 1736 06ca 0800     		movs	r0, r1
 1737 06cc 1100     		movs	r1, r2
 1738 06ce FB1D     		adds	r3, r7, #7
 1739 06d0 221C     		adds	r2, r4, #0
 1740 06d2 1A70     		strb	r2, [r3]
 1741 06d4 BB1D     		adds	r3, r7, #6
 1742 06d6 021C     		adds	r2, r0, #0
 1743 06d8 1A70     		strb	r2, [r3]
 1744 06da 7B1D     		adds	r3, r7, #5
 1745 06dc 0A1C     		adds	r2, r1, #0
 1746 06de 1A70     		strb	r2, [r3]
 530:Z:/MOP/3.3_codelite/lab_5\spel.c **** // Kontrollera att x och y Ã¤r i tillÃ¥tna intervall. 
 531:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(x > 128 || x < 1 || y > 64 || y < 1) return;
 1747              		.loc 1 531 0
 1748 06e0 FB1D     		adds	r3, r7, #7
 1749 06e2 1B78     		ldrb	r3, [r3]
 1750 06e4 802B     		cmp	r3, #128
 1751 06e6 00D9     		bls	.LCB1345
 1752 06e8 A4E0     		b	.L107	@long jump
 1753              	.LCB1345:
 1754              		.loc 1 531 0 is_stmt 0 discriminator 1
 1755 06ea FB1D     		adds	r3, r7, #7
 1756 06ec 1B78     		ldrb	r3, [r3]
 1757 06ee 002B     		cmp	r3, #0
 1758 06f0 00D1     		bne	.LCB1349
 1759 06f2 9FE0     		b	.L107	@long jump
 1760              	.LCB1349:
 1761              		.loc 1 531 0 discriminator 2
 1762 06f4 BB1D     		adds	r3, r7, #6
 1763 06f6 1B78     		ldrb	r3, [r3]
 1764 06f8 402B     		cmp	r3, #64
 1765 06fa 00D9     		bls	.LCB1353
 1766 06fc 9AE0     		b	.L107	@long jump
 1767              	.LCB1353:
 1768              		.loc 1 531 0 discriminator 3
 1769 06fe BB1D     		adds	r3, r7, #6
 1770 0700 1B78     		ldrb	r3, [r3]
 1771 0702 002B     		cmp	r3, #0
 1772 0704 00D1     		bne	.LCB1357
 1773 0706 95E0     		b	.L107	@long jump
 1774              	.LCB1357:
 532:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set != 0 && set != 1) return;
 1775              		.loc 1 532 0 is_stmt 1
 1776 0708 7B1D     		adds	r3, r7, #5
 1777 070a 1B78     		ldrb	r3, [r3]
 1778 070c 002B     		cmp	r3, #0
 1779 070e 04D0     		beq	.L99
 1780              		.loc 1 532 0 is_stmt 0 discriminator 1
 1781 0710 7B1D     		adds	r3, r7, #5
 1782 0712 1B78     		ldrb	r3, [r3]
 1783 0714 012B     		cmp	r3, #1
 1784 0716 00D0     		beq	.LCB1365
 1785 0718 8EE0     		b	.L108	@long jump
 1786              	.LCB1365:
 1787              	.L99:
 533:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 534:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t index = (y - 1) / 8;
 1788              		.loc 1 534 0 is_stmt 1
 1789 071a BB1D     		adds	r3, r7, #6
 1790 071c 1B78     		ldrb	r3, [r3]
 1791 071e 013B     		subs	r3, r3, #1
 1792 0720 002B     		cmp	r3, #0
 1793 0722 00DA     		bge	.L100
 1794 0724 0733     		adds	r3, r3, #7
 1795              	.L100:
 1796 0726 DB10     		asrs	r3, r3, #3
 1797 0728 1A00     		movs	r2, r3
 1798 072a 0D23     		movs	r3, #13
 1799 072c FB18     		adds	r3, r7, r3
 1800 072e 1A70     		strb	r2, [r3]
 535:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t mask;
 536:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask = 1 << ( (y - 1) % 8);
 1801              		.loc 1 536 0
 1802 0730 BB1D     		adds	r3, r7, #6
 1803 0732 1B78     		ldrb	r3, [r3]
 1804 0734 013B     		subs	r3, r3, #1
 1805 0736 424A     		ldr	r2, .L109
 1806 0738 1340     		ands	r3, r2
 1807 073a 04D5     		bpl	.L101
 1808 073c 013B     		subs	r3, r3, #1
 1809 073e 0822     		movs	r2, #8
 1810 0740 5242     		rsbs	r2, r2, #0
 1811 0742 1343     		orrs	r3, r2
 1812 0744 0133     		adds	r3, r3, #1
 1813              	.L101:
 1814 0746 1A00     		movs	r2, r3
 1815 0748 0123     		movs	r3, #1
 1816 074a 9340     		lsls	r3, r3, r2
 1817 074c 1A00     		movs	r2, r3
 1818 074e 0F23     		movs	r3, #15
 1819 0750 FB18     		adds	r3, r7, r3
 1820 0752 1A70     		strb	r2, [r3]
 537:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set == 0){
 1821              		.loc 1 537 0
 1822 0754 7B1D     		adds	r3, r7, #5
 1823 0756 1B78     		ldrb	r3, [r3]
 1824 0758 002B     		cmp	r3, #0
 1825 075a 05D1     		bne	.L102
 538:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask = ~mask; // biten ska nollstÃ¤llas
 1826              		.loc 1 538 0
 1827 075c 0F22     		movs	r2, #15
 1828 075e BB18     		adds	r3, r7, r2
 1829 0760 BA18     		adds	r2, r7, r2
 1830 0762 1278     		ldrb	r2, [r2]
 1831 0764 D243     		mvns	r2, r2
 1832 0766 1A70     		strb	r2, [r3]
 1833              	.L102:
 539:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 540:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 541:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t controller;
 542:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 543:Z:/MOP/3.3_codelite/lab_5\spel.c **** // BestÃ¤m fysiska koordinater och vÃ¤lj styrkrets
 544:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(x > 64){
 1834              		.loc 1 544 0
 1835 0768 FB1D     		adds	r3, r7, #7
 1836 076a 1B78     		ldrb	r3, [r3]
 1837 076c 402B     		cmp	r3, #64
 1838 076e 09D9     		bls	.L103
 545:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller = B_CS2;
 1839              		.loc 1 545 0
 1840 0770 0E23     		movs	r3, #14
 1841 0772 FB18     		adds	r3, r7, r3
 1842 0774 1022     		movs	r2, #16
 1843 0776 1A70     		strb	r2, [r3]
 546:Z:/MOP/3.3_codelite/lab_5\spel.c **** x = x - 65;
 1844              		.loc 1 546 0
 1845 0778 FB1D     		adds	r3, r7, #7
 1846 077a FA1D     		adds	r2, r7, #7
 1847 077c 1278     		ldrb	r2, [r2]
 1848 077e 413A     		subs	r2, r2, #65
 1849 0780 1A70     		strb	r2, [r3]
 1850 0782 08E0     		b	.L104
 1851              	.L103:
 547:Z:/MOP/3.3_codelite/lab_5\spel.c **** }else{
 548:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller = B_CS1;
 1852              		.loc 1 548 0
 1853 0784 0E23     		movs	r3, #14
 1854 0786 FB18     		adds	r3, r7, r3
 1855 0788 0822     		movs	r2, #8
 1856 078a 1A70     		strb	r2, [r3]
 549:Z:/MOP/3.3_codelite/lab_5\spel.c **** x = x - 1;
 1857              		.loc 1 549 0
 1858 078c FB1D     		adds	r3, r7, #7
 1859 078e FA1D     		adds	r2, r7, #7
 1860 0790 1278     		ldrb	r2, [r2]
 1861 0792 013A     		subs	r2, r2, #1
 1862 0794 1A70     		strb	r2, [r3]
 1863              	.L104:
 550:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 551:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD | x, controller);
 1864              		.loc 1 551 0
 1865 0796 FB1D     		adds	r3, r7, #7
 1866 0798 1B78     		ldrb	r3, [r3]
 1867 079a 4022     		movs	r2, #64
 1868 079c 1343     		orrs	r3, r2
 1869 079e DAB2     		uxtb	r2, r3
 1870 07a0 0E25     		movs	r5, #14
 1871 07a2 7B19     		adds	r3, r7, r5
 1872 07a4 1B78     		ldrb	r3, [r3]
 1873 07a6 1900     		movs	r1, r3
 1874 07a8 1000     		movs	r0, r2
 1875 07aa FFF7FEFF 		bl	graphic_write_command
 552:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE | index, controller);
 1876              		.loc 1 552 0
 1877 07ae 0D23     		movs	r3, #13
 1878 07b0 FB18     		adds	r3, r7, r3
 1879 07b2 1B78     		ldrb	r3, [r3]
 1880 07b4 4822     		movs	r2, #72
 1881 07b6 5242     		rsbs	r2, r2, #0
 1882 07b8 1343     		orrs	r3, r2
 1883 07ba DAB2     		uxtb	r2, r3
 1884 07bc 7B19     		adds	r3, r7, r5
 1885 07be 1B78     		ldrb	r3, [r3]
 1886 07c0 1900     		movs	r1, r3
 1887 07c2 1000     		movs	r0, r2
 1888 07c4 FFF7FEFF 		bl	graphic_write_command
 553:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t temp = graphic_read_data(controller);
 1889              		.loc 1 553 0
 1890 07c8 0C23     		movs	r3, #12
 1891 07ca FC18     		adds	r4, r7, r3
 1892 07cc 7B19     		adds	r3, r7, r5
 1893 07ce 1B78     		ldrb	r3, [r3]
 1894 07d0 1800     		movs	r0, r3
 1895 07d2 FFF761FF 		bl	graphic_read_data
 1896 07d6 0300     		movs	r3, r0
 1897 07d8 2370     		strb	r3, [r4]
 554:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD | x, controller);
 1898              		.loc 1 554 0
 1899 07da FB1D     		adds	r3, r7, #7
 1900 07dc 1B78     		ldrb	r3, [r3]
 1901 07de 4022     		movs	r2, #64
 1902 07e0 1343     		orrs	r3, r2
 1903 07e2 DAB2     		uxtb	r2, r3
 1904 07e4 7B19     		adds	r3, r7, r5
 1905 07e6 1B78     		ldrb	r3, [r3]
 1906 07e8 1900     		movs	r1, r3
 1907 07ea 1000     		movs	r0, r2
 1908 07ec FFF7FEFF 		bl	graphic_write_command
 555:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 556:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set == 1){
 1909              		.loc 1 556 0
 1910 07f0 7B1D     		adds	r3, r7, #5
 1911 07f2 1B78     		ldrb	r3, [r3]
 1912 07f4 012B     		cmp	r3, #1
 1913 07f6 09D1     		bne	.L105
 557:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask = mask | temp;
 1914              		.loc 1 557 0
 1915 07f8 0F22     		movs	r2, #15
 1916 07fa BB18     		adds	r3, r7, r2
 1917 07fc B918     		adds	r1, r7, r2
 1918 07fe 0C22     		movs	r2, #12
 1919 0800 BA18     		adds	r2, r7, r2
 1920 0802 0978     		ldrb	r1, [r1]
 1921 0804 1278     		ldrb	r2, [r2]
 1922 0806 0A43     		orrs	r2, r1
 1923 0808 1A70     		strb	r2, [r3]
 1924 080a 08E0     		b	.L106
 1925              	.L105:
 558:Z:/MOP/3.3_codelite/lab_5\spel.c **** }else{
 559:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask = mask & temp;
 1926              		.loc 1 559 0
 1927 080c 0F22     		movs	r2, #15
 1928 080e BB18     		adds	r3, r7, r2
 1929 0810 BA18     		adds	r2, r7, r2
 1930 0812 0C21     		movs	r1, #12
 1931 0814 7918     		adds	r1, r7, r1
 1932 0816 1278     		ldrb	r2, [r2]
 1933 0818 0978     		ldrb	r1, [r1]
 1934 081a 0A40     		ands	r2, r1
 1935 081c 1A70     		strb	r2, [r3]
 1936              	.L106:
 560:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 561:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_data(mask, controller); 
 1937              		.loc 1 561 0
 1938 081e 0E23     		movs	r3, #14
 1939 0820 FB18     		adds	r3, r7, r3
 1940 0822 1A78     		ldrb	r2, [r3]
 1941 0824 0F23     		movs	r3, #15
 1942 0826 FB18     		adds	r3, r7, r3
 1943 0828 1B78     		ldrb	r3, [r3]
 1944 082a 1100     		movs	r1, r2
 1945 082c 1800     		movs	r0, r3
 1946 082e FFF7FEFF 		bl	graphic_write_data
 1947 0832 02E0     		b	.L95
 1948              	.L107:
 531:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(set != 0 && set != 1) return;
 1949              		.loc 1 531 0
 1950 0834 C046     		nop
 1951 0836 00E0     		b	.L95
 1952              	.L108:
 532:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 1953              		.loc 1 532 0
 1954 0838 C046     		nop
 1955              	.L95:
 562:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 1956              		.loc 1 562 0
 1957 083a BD46     		mov	sp, r7
 1958 083c 04B0     		add	sp, sp, #16
 1959              		@ sp needed
 1960 083e B0BD     		pop	{r4, r5, r7, pc}
 1961              	.L110:
 1962              		.align	2
 1963              	.L109:
 1964 0840 07000080 		.word	-2147483641
 1965              		.cfi_endproc
 1966              	.LFE23:
 1968              		.comm	backBuffer,1024,4
 1969              		.align	1
 1970              		.global	clear_backBuffer
 1971              		.syntax unified
 1972              		.code	16
 1973              		.thumb_func
 1974              		.fpu softvfp
 1976              	clear_backBuffer:
 1977              	.LFB24:
 563:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 564:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 565:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 566:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t backBuffer[1024];// 128 * 64 / 8
 567:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 568:Z:/MOP/3.3_codelite/lab_5\spel.c **** void clear_backBuffer(){
 1978              		.loc 1 568 0
 1979              		.cfi_startproc
 1980              		@ args = 0, pretend = 0, frame = 8
 1981              		@ frame_needed = 1, uses_anonymous_args = 0
 1982 0844 80B5     		push	{r7, lr}
 1983              		.cfi_def_cfa_offset 8
 1984              		.cfi_offset 7, -8
 1985              		.cfi_offset 14, -4
 1986 0846 82B0     		sub	sp, sp, #8
 1987              		.cfi_def_cfa_offset 16
 1988 0848 00AF     		add	r7, sp, #0
 1989              		.cfi_def_cfa_register 7
 569:Z:/MOP/3.3_codelite/lab_5\spel.c **** int i;
 570:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <1024;i++) backBuffer[i]=0;
 1990              		.loc 1 570 0
 1991 084a 0023     		movs	r3, #0
 1992 084c 7B60     		str	r3, [r7, #4]
 1993 084e 07E0     		b	.L112
 1994              	.L113:
 1995              		.loc 1 570 0 is_stmt 0 discriminator 3
 1996 0850 074A     		ldr	r2, .L114
 1997 0852 7B68     		ldr	r3, [r7, #4]
 1998 0854 D318     		adds	r3, r2, r3
 1999 0856 0022     		movs	r2, #0
 2000 0858 1A70     		strb	r2, [r3]
 2001 085a 7B68     		ldr	r3, [r7, #4]
 2002 085c 0133     		adds	r3, r3, #1
 2003 085e 7B60     		str	r3, [r7, #4]
 2004              	.L112:
 2005              		.loc 1 570 0 discriminator 1
 2006 0860 7B68     		ldr	r3, [r7, #4]
 2007 0862 044A     		ldr	r2, .L114+4
 2008 0864 9342     		cmp	r3, r2
 2009 0866 F3DD     		ble	.L113
 571:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2010              		.loc 1 571 0 is_stmt 1
 2011 0868 C046     		nop
 2012 086a BD46     		mov	sp, r7
 2013 086c 02B0     		add	sp, sp, #8
 2014              		@ sp needed
 2015 086e 80BD     		pop	{r7, pc}
 2016              	.L115:
 2017              		.align	2
 2018              	.L114:
 2019 0870 00000000 		.word	backBuffer
 2020 0874 FF030000 		.word	1023
 2021              		.cfi_endproc
 2022              	.LFE24:
 2024              		.align	1
 2025              		.global	graphic_draw_screen
 2026              		.syntax unified
 2027              		.code	16
 2028              		.thumb_func
 2029              		.fpu softvfp
 2031              	graphic_draw_screen:
 2032              	.LFB25:
 572:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 573:Z:/MOP/3.3_codelite/lab_5\spel.c **** /*void pixel(intx, inty){
 574:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t mask;
 575:Z:/MOP/3.3_codelite/lab_5\spel.c **** int index =0;
 576:Z:/MOP/3.3_codelite/lab_5\spel.c **** if((x >128)||(x <1)||(y >64)||(y <1))return;
 577:Z:/MOP/3.3_codelite/lab_5\spel.c **** mask =1<<((y-1)%8);
 578:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(x > 64){x -=65;
 579:Z:/MOP/3.3_codelite/lab_5\spel.c **** index =512;
 580:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 581:Z:/MOP/3.3_codelite/lab_5\spel.c **** index +=x +((y-1)/8)*64;
 582:Z:/MOP/3.3_codelite/lab_5\spel.c **** backBuffer[index]|=mask;
 583:Z:/MOP/3.3_codelite/lab_5\spel.c **** }*/
 584:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 585:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 586:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_draw_screen(void){
 2033              		.loc 1 586 0
 2034              		.cfi_startproc
 2035              		@ args = 0, pretend = 0, frame = 16
 2036              		@ frame_needed = 1, uses_anonymous_args = 0
 2037 0878 80B5     		push	{r7, lr}
 2038              		.cfi_def_cfa_offset 8
 2039              		.cfi_offset 7, -8
 2040              		.cfi_offset 14, -4
 2041 087a 84B0     		sub	sp, sp, #16
 2042              		.cfi_def_cfa_offset 24
 2043 087c 00AF     		add	r7, sp, #0
 2044              		.cfi_def_cfa_register 7
 587:Z:/MOP/3.3_codelite/lab_5\spel.c **** uint8_t i,j, controller, c;
 588:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned int k = 0;
 2045              		.loc 1 588 0
 2046 087e 0023     		movs	r3, #0
 2047 0880 BB60     		str	r3, [r7, #8]
 589:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(c =0;c <2;c++) {
 2048              		.loc 1 589 0
 2049 0882 0D23     		movs	r3, #13
 2050 0884 FB18     		adds	r3, r7, r3
 2051 0886 0022     		movs	r2, #0
 2052 0888 1A70     		strb	r2, [r3]
 2053 088a 4FE0     		b	.L117
 2054              	.L124:
 590:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =(c ==0)?B_CS1 :B_CS2;
 2055              		.loc 1 590 0
 2056 088c 0D23     		movs	r3, #13
 2057 088e FB18     		adds	r3, r7, r3
 2058 0890 1B78     		ldrb	r3, [r3]
 2059 0892 002B     		cmp	r3, #0
 2060 0894 01D1     		bne	.L118
 2061              		.loc 1 590 0 is_stmt 0 discriminator 1
 2062 0896 0822     		movs	r2, #8
 2063 0898 00E0     		b	.L119
 2064              	.L118:
 2065              		.loc 1 590 0 discriminator 2
 2066 089a 1022     		movs	r2, #16
 2067              	.L119:
 2068              		.loc 1 590 0 discriminator 4
 2069 089c FB1D     		adds	r3, r7, #7
 2070 089e 1A70     		strb	r2, [r3]
 591:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <8;j++){
 2071              		.loc 1 591 0 is_stmt 1 discriminator 4
 2072 08a0 0E23     		movs	r3, #14
 2073 08a2 FB18     		adds	r3, r7, r3
 2074 08a4 0022     		movs	r2, #0
 2075 08a6 1A70     		strb	r2, [r3]
 2076 08a8 35E0     		b	.L120
 2077              	.L123:
 592:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,controller);
 2078              		.loc 1 592 0
 2079 08aa 0E23     		movs	r3, #14
 2080 08ac FB18     		adds	r3, r7, r3
 2081 08ae 1B78     		ldrb	r3, [r3]
 2082 08b0 4822     		movs	r2, #72
 2083 08b2 5242     		rsbs	r2, r2, #0
 2084 08b4 1343     		orrs	r3, r2
 2085 08b6 DAB2     		uxtb	r2, r3
 2086 08b8 FB1D     		adds	r3, r7, #7
 2087 08ba 1B78     		ldrb	r3, [r3]
 2088 08bc 1900     		movs	r1, r3
 2089 08be 1000     		movs	r0, r2
 2090 08c0 FFF7FEFF 		bl	graphic_write_command
 593:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD  |0,controller);
 2091              		.loc 1 593 0
 2092 08c4 FB1D     		adds	r3, r7, #7
 2093 08c6 1B78     		ldrb	r3, [r3]
 2094 08c8 1900     		movs	r1, r3
 2095 08ca 4020     		movs	r0, #64
 2096 08cc FFF7FEFF 		bl	graphic_write_command
 594:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++, k++) {
 2097              		.loc 1 594 0
 2098 08d0 0F23     		movs	r3, #15
 2099 08d2 FB18     		adds	r3, r7, r3
 2100 08d4 0022     		movs	r2, #0
 2101 08d6 1A70     		strb	r2, [r3]
 2102 08d8 12E0     		b	.L121
 2103              	.L122:
 595:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write(backBuffer[k],controller);
 2104              		.loc 1 595 0 discriminator 3
 2105 08da 194A     		ldr	r2, .L125
 2106 08dc BB68     		ldr	r3, [r7, #8]
 2107 08de D318     		adds	r3, r2, r3
 2108 08e0 1A78     		ldrb	r2, [r3]
 2109 08e2 FB1D     		adds	r3, r7, #7
 2110 08e4 1B78     		ldrb	r3, [r3]
 2111 08e6 1900     		movs	r1, r3
 2112 08e8 1000     		movs	r0, r2
 2113 08ea FFF7FEFF 		bl	graphic_write
 594:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++, k++) {
 2114              		.loc 1 594 0 discriminator 3
 2115 08ee 0F21     		movs	r1, #15
 2116 08f0 7B18     		adds	r3, r7, r1
 2117 08f2 1A78     		ldrb	r2, [r3]
 2118 08f4 7B18     		adds	r3, r7, r1
 2119 08f6 0132     		adds	r2, r2, #1
 2120 08f8 1A70     		strb	r2, [r3]
 2121 08fa BB68     		ldr	r3, [r7, #8]
 2122 08fc 0133     		adds	r3, r3, #1
 2123 08fe BB60     		str	r3, [r7, #8]
 2124              	.L121:
 594:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <=63;i++, k++) {
 2125              		.loc 1 594 0 is_stmt 0 discriminator 1
 2126 0900 0F23     		movs	r3, #15
 2127 0902 FB18     		adds	r3, r7, r3
 2128 0904 1B78     		ldrb	r3, [r3]
 2129 0906 3F2B     		cmp	r3, #63
 2130 0908 E7D9     		bls	.L122
 591:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,controller);
 2131              		.loc 1 591 0 is_stmt 1 discriminator 2
 2132 090a 0E21     		movs	r1, #14
 2133 090c 7B18     		adds	r3, r7, r1
 2134 090e 1A78     		ldrb	r2, [r3]
 2135 0910 7B18     		adds	r3, r7, r1
 2136 0912 0132     		adds	r2, r2, #1
 2137 0914 1A70     		strb	r2, [r3]
 2138              	.L120:
 591:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE |j,controller);
 2139              		.loc 1 591 0 is_stmt 0 discriminator 1
 2140 0916 0E23     		movs	r3, #14
 2141 0918 FB18     		adds	r3, r7, r3
 2142 091a 1B78     		ldrb	r3, [r3]
 2143 091c 072B     		cmp	r3, #7
 2144 091e C4D9     		bls	.L123
 589:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =(c ==0)?B_CS1 :B_CS2;
 2145              		.loc 1 589 0 is_stmt 1 discriminator 2
 2146 0920 0D21     		movs	r1, #13
 2147 0922 7B18     		adds	r3, r7, r1
 2148 0924 1A78     		ldrb	r2, [r3]
 2149 0926 7B18     		adds	r3, r7, r1
 2150 0928 0132     		adds	r2, r2, #1
 2151 092a 1A70     		strb	r2, [r3]
 2152              	.L117:
 589:Z:/MOP/3.3_codelite/lab_5\spel.c **** controller =(c ==0)?B_CS1 :B_CS2;
 2153              		.loc 1 589 0 is_stmt 0 discriminator 1
 2154 092c 0D23     		movs	r3, #13
 2155 092e FB18     		adds	r3, r7, r3
 2156 0930 1B78     		ldrb	r3, [r3]
 2157 0932 012B     		cmp	r3, #1
 2158 0934 AAD9     		bls	.L124
 596:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 597:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 598:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 599:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2159              		.loc 1 599 0 is_stmt 1
 2160 0936 C046     		nop
 2161 0938 BD46     		mov	sp, r7
 2162 093a 04B0     		add	sp, sp, #16
 2163              		@ sp needed
 2164 093c 80BD     		pop	{r7, pc}
 2165              	.L126:
 2166 093e C046     		.align	2
 2167              	.L125:
 2168 0940 00000000 		.word	backBuffer
 2169              		.cfi_endproc
 2170              	.LFE25:
 2172              		.align	1
 2173              		.syntax unified
 2174              		.code	16
 2175              		.thumb_func
 2176              		.fpu softvfp
 2178              	load_sprite:
 2179              	.LFB26:
 600:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 601:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 602:Z:/MOP/3.3_codelite/lab_5\spel.c **** typedef struct{
 603:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char width;
 604:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char height;
 605:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char *data;
 606:Z:/MOP/3.3_codelite/lab_5\spel.c **** }sprite;
 607:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 608:Z:/MOP/3.3_codelite/lab_5\spel.c **** static void load_sprite(sprite* s,unsigned char *data, int width, int height){
 2180              		.loc 1 608 0
 2181              		.cfi_startproc
 2182              		@ args = 0, pretend = 0, frame = 16
 2183              		@ frame_needed = 1, uses_anonymous_args = 0
 2184 0944 80B5     		push	{r7, lr}
 2185              		.cfi_def_cfa_offset 8
 2186              		.cfi_offset 7, -8
 2187              		.cfi_offset 14, -4
 2188 0946 84B0     		sub	sp, sp, #16
 2189              		.cfi_def_cfa_offset 24
 2190 0948 00AF     		add	r7, sp, #0
 2191              		.cfi_def_cfa_register 7
 2192 094a F860     		str	r0, [r7, #12]
 2193 094c B960     		str	r1, [r7, #8]
 2194 094e 7A60     		str	r2, [r7, #4]
 2195 0950 3B60     		str	r3, [r7]
 609:Z:/MOP/3.3_codelite/lab_5\spel.c **** s->width =width;
 2196              		.loc 1 609 0
 2197 0952 7B68     		ldr	r3, [r7, #4]
 2198 0954 DAB2     		uxtb	r2, r3
 2199 0956 FB68     		ldr	r3, [r7, #12]
 2200 0958 1A70     		strb	r2, [r3]
 610:Z:/MOP/3.3_codelite/lab_5\spel.c **** s->height =height;
 2201              		.loc 1 610 0
 2202 095a 3B68     		ldr	r3, [r7]
 2203 095c DAB2     		uxtb	r2, r3
 2204 095e FB68     		ldr	r3, [r7, #12]
 2205 0960 5A70     		strb	r2, [r3, #1]
 611:Z:/MOP/3.3_codelite/lab_5\spel.c **** s->data =data;
 2206              		.loc 1 611 0
 2207 0962 FB68     		ldr	r3, [r7, #12]
 2208 0964 BA68     		ldr	r2, [r7, #8]
 2209 0966 5A60     		str	r2, [r3, #4]
 612:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2210              		.loc 1 612 0
 2211 0968 C046     		nop
 2212 096a BD46     		mov	sp, r7
 2213 096c 04B0     		add	sp, sp, #16
 2214              		@ sp needed
 2215 096e 80BD     		pop	{r7, pc}
 2216              		.cfi_endproc
 2217              	.LFE26:
 2219              		.align	1
 2220              		.global	draw_sprite
 2221              		.syntax unified
 2222              		.code	16
 2223              		.thumb_func
 2224              		.fpu softvfp
 2226              	draw_sprite:
 2227              	.LFB27:
 613:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 614:Z:/MOP/3.3_codelite/lab_5\spel.c **** void draw_sprite(sprite* s,int x,int y,int set){
 2228              		.loc 1 614 0
 2229              		.cfi_startproc
 2230              		@ args = 0, pretend = 0, frame = 40
 2231              		@ frame_needed = 1, uses_anonymous_args = 0
 2232 0970 80B5     		push	{r7, lr}
 2233              		.cfi_def_cfa_offset 8
 2234              		.cfi_offset 7, -8
 2235              		.cfi_offset 14, -4
 2236 0972 8AB0     		sub	sp, sp, #40
 2237              		.cfi_def_cfa_offset 48
 2238 0974 00AF     		add	r7, sp, #0
 2239              		.cfi_def_cfa_register 7
 2240 0976 F860     		str	r0, [r7, #12]
 2241 0978 B960     		str	r1, [r7, #8]
 2242 097a 7A60     		str	r2, [r7, #4]
 2243 097c 3B60     		str	r3, [r7]
 615:Z:/MOP/3.3_codelite/lab_5\spel.c **** int i,j,k,width_in_bytes;
 616:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(s->width %8==0)width_in_bytes =s->width /8;
 2244              		.loc 1 616 0
 2245 097e FB68     		ldr	r3, [r7, #12]
 2246 0980 1B78     		ldrb	r3, [r3]
 2247 0982 0722     		movs	r2, #7
 2248 0984 1340     		ands	r3, r2
 2249 0986 DBB2     		uxtb	r3, r3
 2250 0988 002B     		cmp	r3, #0
 2251 098a 05D1     		bne	.L129
 2252              		.loc 1 616 0 is_stmt 0 discriminator 1
 2253 098c FB68     		ldr	r3, [r7, #12]
 2254 098e 1B78     		ldrb	r3, [r3]
 2255 0990 DB08     		lsrs	r3, r3, #3
 2256 0992 DBB2     		uxtb	r3, r3
 2257 0994 BB61     		str	r3, [r7, #24]
 2258 0996 05E0     		b	.L130
 2259              	.L129:
 617:Z:/MOP/3.3_codelite/lab_5\spel.c **** else width_in_bytes =s->width /8+1;
 2260              		.loc 1 617 0 is_stmt 1
 2261 0998 FB68     		ldr	r3, [r7, #12]
 2262 099a 1B78     		ldrb	r3, [r3]
 2263 099c DB08     		lsrs	r3, r3, #3
 2264 099e DBB2     		uxtb	r3, r3
 2265 09a0 0133     		adds	r3, r3, #1
 2266 09a2 BB61     		str	r3, [r7, #24]
 2267              	.L130:
 618:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(i =0;i <s->height;i++)
 2268              		.loc 1 618 0
 2269 09a4 0023     		movs	r3, #0
 2270 09a6 7B62     		str	r3, [r7, #36]
 2271 09a8 45E0     		b	.L131
 2272              	.L137:
 619:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <width_in_bytes;j++){
 2273              		.loc 1 619 0
 2274 09aa 0023     		movs	r3, #0
 2275 09ac 3B62     		str	r3, [r7, #32]
 2276 09ae 3BE0     		b	.L132
 2277              	.L136:
 2278              	.LBB9:
 620:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char byte =s->data[i *width_in_bytes +j];
 2279              		.loc 1 620 0
 2280 09b0 FB68     		ldr	r3, [r7, #12]
 2281 09b2 5B68     		ldr	r3, [r3, #4]
 2282 09b4 7A6A     		ldr	r2, [r7, #36]
 2283 09b6 B969     		ldr	r1, [r7, #24]
 2284 09b8 5143     		muls	r1, r2
 2285 09ba 3A6A     		ldr	r2, [r7, #32]
 2286 09bc 8A18     		adds	r2, r1, r2
 2287 09be 9A18     		adds	r2, r3, r2
 2288 09c0 1723     		movs	r3, #23
 2289 09c2 FB18     		adds	r3, r7, r3
 2290 09c4 1278     		ldrb	r2, [r2]
 2291 09c6 1A70     		strb	r2, [r3]
 621:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(k =0;k <8;k++){
 2292              		.loc 1 621 0
 2293 09c8 0023     		movs	r3, #0
 2294 09ca FB61     		str	r3, [r7, #28]
 2295 09cc 26E0     		b	.L133
 2296              	.L135:
 622:Z:/MOP/3.3_codelite/lab_5\spel.c **** if(byte &(1<<k))pixel(8*j +k +x + 1,i +y + 1,set);
 2297              		.loc 1 622 0
 2298 09ce 1723     		movs	r3, #23
 2299 09d0 FB18     		adds	r3, r7, r3
 2300 09d2 1A78     		ldrb	r2, [r3]
 2301 09d4 FB69     		ldr	r3, [r7, #28]
 2302 09d6 1A41     		asrs	r2, r2, r3
 2303 09d8 1300     		movs	r3, r2
 2304 09da 0122     		movs	r2, #1
 2305 09dc 1340     		ands	r3, r2
 2306 09de 1AD0     		beq	.L134
 2307              		.loc 1 622 0 is_stmt 0 discriminator 1
 2308 09e0 3B6A     		ldr	r3, [r7, #32]
 2309 09e2 DBB2     		uxtb	r3, r3
 2310 09e4 DB00     		lsls	r3, r3, #3
 2311 09e6 DAB2     		uxtb	r2, r3
 2312 09e8 FB69     		ldr	r3, [r7, #28]
 2313 09ea DBB2     		uxtb	r3, r3
 2314 09ec D318     		adds	r3, r2, r3
 2315 09ee DAB2     		uxtb	r2, r3
 2316 09f0 BB68     		ldr	r3, [r7, #8]
 2317 09f2 DBB2     		uxtb	r3, r3
 2318 09f4 D318     		adds	r3, r2, r3
 2319 09f6 DBB2     		uxtb	r3, r3
 2320 09f8 0133     		adds	r3, r3, #1
 2321 09fa D8B2     		uxtb	r0, r3
 2322 09fc 7B6A     		ldr	r3, [r7, #36]
 2323 09fe DAB2     		uxtb	r2, r3
 2324 0a00 7B68     		ldr	r3, [r7, #4]
 2325 0a02 DBB2     		uxtb	r3, r3
 2326 0a04 D318     		adds	r3, r2, r3
 2327 0a06 DBB2     		uxtb	r3, r3
 2328 0a08 0133     		adds	r3, r3, #1
 2329 0a0a DBB2     		uxtb	r3, r3
 2330 0a0c 3A68     		ldr	r2, [r7]
 2331 0a0e D2B2     		uxtb	r2, r2
 2332 0a10 1900     		movs	r1, r3
 2333 0a12 FFF7FEFF 		bl	pixel
 2334              	.L134:
 621:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(k =0;k <8;k++){
 2335              		.loc 1 621 0 is_stmt 1 discriminator 2
 2336 0a16 FB69     		ldr	r3, [r7, #28]
 2337 0a18 0133     		adds	r3, r3, #1
 2338 0a1a FB61     		str	r3, [r7, #28]
 2339              	.L133:
 621:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(k =0;k <8;k++){
 2340              		.loc 1 621 0 is_stmt 0 discriminator 1
 2341 0a1c FB69     		ldr	r3, [r7, #28]
 2342 0a1e 072B     		cmp	r3, #7
 2343 0a20 D5DD     		ble	.L135
 2344              	.LBE9:
 619:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char byte =s->data[i *width_in_bytes +j];
 2345              		.loc 1 619 0 is_stmt 1 discriminator 2
 2346 0a22 3B6A     		ldr	r3, [r7, #32]
 2347 0a24 0133     		adds	r3, r3, #1
 2348 0a26 3B62     		str	r3, [r7, #32]
 2349              	.L132:
 619:Z:/MOP/3.3_codelite/lab_5\spel.c **** unsigned char byte =s->data[i *width_in_bytes +j];
 2350              		.loc 1 619 0 is_stmt 0 discriminator 1
 2351 0a28 3A6A     		ldr	r2, [r7, #32]
 2352 0a2a BB69     		ldr	r3, [r7, #24]
 2353 0a2c 9A42     		cmp	r2, r3
 2354 0a2e BFDB     		blt	.L136
 618:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <width_in_bytes;j++){
 2355              		.loc 1 618 0 is_stmt 1 discriminator 2
 2356 0a30 7B6A     		ldr	r3, [r7, #36]
 2357 0a32 0133     		adds	r3, r3, #1
 2358 0a34 7B62     		str	r3, [r7, #36]
 2359              	.L131:
 618:Z:/MOP/3.3_codelite/lab_5\spel.c **** for(j =0;j <width_in_bytes;j++){
 2360              		.loc 1 618 0 is_stmt 0 discriminator 1
 2361 0a36 FB68     		ldr	r3, [r7, #12]
 2362 0a38 5B78     		ldrb	r3, [r3, #1]
 2363 0a3a 1A00     		movs	r2, r3
 2364 0a3c 7B6A     		ldr	r3, [r7, #36]
 2365 0a3e 9342     		cmp	r3, r2
 2366 0a40 B3DB     		blt	.L137
 623:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 624:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 625:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2367              		.loc 1 625 0 is_stmt 1
 2368 0a42 C046     		nop
 2369 0a44 BD46     		mov	sp, r7
 2370 0a46 0AB0     		add	sp, sp, #40
 2371              		@ sp needed
 2372 0a48 80BD     		pop	{r7, pc}
 2373              		.cfi_endproc
 2374              	.LFE27:
 2376              		.align	1
 2377              		.global	graphic_initialize
 2378              		.syntax unified
 2379              		.code	16
 2380              		.thumb_func
 2381              		.fpu softvfp
 2383              	graphic_initialize:
 2384              	.LFB28:
 626:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 627:Z:/MOP/3.3_codelite/lab_5\spel.c **** void graphic_initialize(void){
 2385              		.loc 1 627 0
 2386              		.cfi_startproc
 2387              		@ args = 0, pretend = 0, frame = 0
 2388              		@ frame_needed = 1, uses_anonymous_args = 0
 2389 0a4a 80B5     		push	{r7, lr}
 2390              		.cfi_def_cfa_offset 8
 2391              		.cfi_offset 7, -8
 2392              		.cfi_offset 14, -4
 2393 0a4c 00AF     		add	r7, sp, #0
 2394              		.cfi_def_cfa_register 7
 628:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_E);
 2395              		.loc 1 628 0
 2396 0a4e 4020     		movs	r0, #64
 2397 0a50 FFF73AFC 		bl	graphic_ctrl_bit_set
 629:Z:/MOP/3.3_codelite/lab_5\spel.c **** //delay_micro(100);
 630:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 2398              		.loc 1 630 0
 2399 0a54 7820     		movs	r0, #120
 2400 0a56 FFF75FFC 		bl	graphic_ctrl_bit_clear
 631:Z:/MOP/3.3_codelite/lab_5\spel.c **** //delay_milli(30);
 632:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_ctrl_bit_set(B_RST);
 2401              		.loc 1 632 0
 2402 0a5a 2020     		movs	r0, #32
 2403 0a5c FFF734FC 		bl	graphic_ctrl_bit_set
 633:Z:/MOP/3.3_codelite/lab_5\spel.c **** //delay_milli(100);
 634:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_OFF,B_CS1|B_CS2);
 2404              		.loc 1 634 0
 2405 0a60 1821     		movs	r1, #24
 2406 0a62 3E20     		movs	r0, #62
 2407 0a64 FFF7FEFF 		bl	graphic_write_command
 635:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_ON,B_CS1|B_CS2);
 2408              		.loc 1 635 0
 2409 0a68 1821     		movs	r1, #24
 2410 0a6a 3F20     		movs	r0, #63
 2411 0a6c FFF7FEFF 		bl	graphic_write_command
 636:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_DISP_START,B_CS1|B_CS2);
 2412              		.loc 1 636 0
 2413 0a70 1821     		movs	r1, #24
 2414 0a72 C020     		movs	r0, #192
 2415 0a74 FFF7FEFF 		bl	graphic_write_command
 637:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_ADD,B_CS1|B_CS2);
 2416              		.loc 1 637 0
 2417 0a78 1821     		movs	r1, #24
 2418 0a7a 4020     		movs	r0, #64
 2419 0a7c FFF7FEFF 		bl	graphic_write_command
 638:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_write_command(LCD_SET_PAGE,B_CS1|B_CS2);
 2420              		.loc 1 638 0
 2421 0a80 1821     		movs	r1, #24
 2422 0a82 B820     		movs	r0, #184
 2423 0a84 FFF7FEFF 		bl	graphic_write_command
 639:Z:/MOP/3.3_codelite/lab_5\spel.c **** select_controller(0);
 2424              		.loc 1 639 0
 2425 0a88 0020     		movs	r0, #0
 2426 0a8a FFF76DFC 		bl	select_controller
 640:Z:/MOP/3.3_codelite/lab_5\spel.c **** }
 2427              		.loc 1 640 0
 2428 0a8e C046     		nop
 2429 0a90 BD46     		mov	sp, r7
 2430              		@ sp needed
 2431 0a92 80BD     		pop	{r7, pc}
 2432              		.cfi_endproc
 2433              	.LFE28:
 2435              		.align	1
 2436              		.global	main
 2437              		.syntax unified
 2438              		.code	16
 2439              		.thumb_func
 2440              		.fpu softvfp
 2442              	main:
 2443              	.LFB29:
 641:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 642:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 643:Z:/MOP/3.3_codelite/lab_5\spel.c **** void main(int argc, char **argv){
 2444              		.loc 1 643 0
 2445              		.cfi_startproc
 2446              		@ args = 0, pretend = 0, frame = 24
 2447              		@ frame_needed = 1, uses_anonymous_args = 0
 2448 0a94 80B5     		push	{r7, lr}
 2449              		.cfi_def_cfa_offset 8
 2450              		.cfi_offset 7, -8
 2451              		.cfi_offset 14, -4
 2452 0a96 86B0     		sub	sp, sp, #24
 2453              		.cfi_def_cfa_offset 32
 2454 0a98 00AF     		add	r7, sp, #0
 2455              		.cfi_def_cfa_register 7
 2456 0a9a 7860     		str	r0, [r7, #4]
 2457 0a9c 3960     		str	r1, [r7]
 644:Z:/MOP/3.3_codelite/lab_5\spel.c **** 
 645:Z:/MOP/3.3_codelite/lab_5\spel.c **** POBJECT p = &ball;
 2458              		.loc 1 645 0
 2459 0a9e 114B     		ldr	r3, .L141
 2460 0aa0 7B61     		str	r3, [r7, #20]
 646:Z:/MOP/3.3_codelite/lab_5\spel.c **** POBJECT b1 = &bar_1;
 2461              		.loc 1 646 0
 2462 0aa2 114B     		ldr	r3, .L141+4
 2463 0aa4 3B61     		str	r3, [r7, #16]
 647:Z:/MOP/3.3_codelite/lab_5\spel.c **** POBJECT b2 = &bar_2;
 2464              		.loc 1 647 0
 2465 0aa6 114B     		ldr	r3, .L141+8
 2466 0aa8 FB60     		str	r3, [r7, #12]
 648:Z:/MOP/3.3_codelite/lab_5\spel.c **** init_app();
 2467              		.loc 1 648 0
 2468 0aaa FFF7FEFF 		bl	init_app
 649:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_initialize();
 2469              		.loc 1 649 0
 2470 0aae FFF7FEFF 		bl	graphic_initialize
 650:Z:/MOP/3.3_codelite/lab_5\spel.c **** #ifndef SIMULATOR
 651:Z:/MOP/3.3_codelite/lab_5\spel.c **** graphic_clear_screen();
 652:Z:/MOP/3.3_codelite/lab_5\spel.c **** #endif
 653:Z:/MOP/3.3_codelite/lab_5\spel.c **** p->set_speed(p,4,1);
 2471              		.loc 1 653 0
 2472 0ab2 7B69     		ldr	r3, [r7, #20]
 2473 0ab4 1B6A     		ldr	r3, [r3, #32]
 2474 0ab6 7869     		ldr	r0, [r7, #20]
 2475 0ab8 0122     		movs	r2, #1
 2476 0aba 0421     		movs	r1, #4
 2477 0abc 9847     		blx	r3
 2478              	.LVL1:
 2479              	.L140:
 654:Z:/MOP/3.3_codelite/lab_5\spel.c **** while(1)
 655:Z:/MOP/3.3_codelite/lab_5\spel.c **** {
 656:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	p->draw(b1);
 2480              		.loc 1 656 0 discriminator 1
 2481 0abe 7B69     		ldr	r3, [r7, #20]
 2482 0ac0 5B69     		ldr	r3, [r3, #20]
 2483 0ac2 3A69     		ldr	r2, [r7, #16]
 2484 0ac4 1000     		movs	r0, r2
 2485 0ac6 9847     		blx	r3
 2486              	.LVL2:
 657:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	p->draw(b2);
 2487              		.loc 1 657 0 discriminator 1
 2488 0ac8 7B69     		ldr	r3, [r7, #20]
 2489 0aca 5B69     		ldr	r3, [r3, #20]
 2490 0acc FA68     		ldr	r2, [r7, #12]
 2491 0ace 1000     		movs	r0, r2
 2492 0ad0 9847     		blx	r3
 2493              	.LVL3:
 658:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	p->move(p);
 2494              		.loc 1 658 0 discriminator 1
 2495 0ad2 7B69     		ldr	r3, [r7, #20]
 2496 0ad4 DB69     		ldr	r3, [r3, #28]
 2497 0ad6 7A69     		ldr	r2, [r7, #20]
 2498 0ad8 1000     		movs	r0, r2
 2499 0ada 9847     		blx	r3
 2500              	.LVL4:
 659:Z:/MOP/3.3_codelite/lab_5\spel.c ****     delay_milli(40);
 2501              		.loc 1 659 0 discriminator 1
 2502 0adc 2820     		movs	r0, #40
 2503 0ade FFF7FEFF 		bl	delay_milli
 656:Z:/MOP/3.3_codelite/lab_5\spel.c **** 	p->draw(b2);
 2504              		.loc 1 656 0 discriminator 1
 2505 0ae2 ECE7     		b	.L140
 2506              	.L142:
 2507              		.align	2
 2508              	.L141:
 2509 0ae4 E8070000 		.word	ball
 2510 0ae8 0C080000 		.word	bar_1
 2511 0aec 30080000 		.word	bar_2
 2512              		.cfi_endproc
 2513              	.LFE29:
 2515              	.Letext0:
