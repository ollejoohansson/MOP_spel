/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}


typedef unsigned char uint8_t;

#define PORT_DISPLAY_BASE 0x40021000 // MD407 port E
#define portModer ((volatile unsigned int *)   (PORT_DISPLAY_BASE))
#define portOtyper ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x4)) 
#define portOspeedr ((volatile unsigned int*)   (PORT_DISPLAY_BASE+0x8)) 
#define portPupdr ((volatile unsigned int*)   (PORT_DISPLAY_BASE+0xC)) 
#define portIdr ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x10)) 
#define portIdrHigh ((volatile unsigned char *)  (PORT_DISPLAY_BASE+0x11))
#define portOdrLow ((volatile unsigned char *)  (PORT_DISPLAY_BASE+0x14)) 
#define portOdrHigh ((volatile unsigned char *)  (PORT_DISPLAY_BASE+0x14+1))

#define B_E      0x40 // Enable
#define B_RST    0x20 // Reset
#define B_CS2    0x10 // Controller Select2
#define B_CS1    8    // Controller Select1
#define B_SELECT 4    // 0 Graphics, 1 ASCII
#define B_RW     2    // 0 Write, 1 Read
#define B_RS     1    // 0 Command, 1 Data



#define LCD_ON          0x3F // Display on
#define LCD_OFF         0x3E // Display off
#define LCD_SET_ADD     0x40 // Set horizontalcoordinate
#define LCD_SET_PAGE    0xB8 // Set verticalcoordinate
#define LCD_DISP_START  0xC0 // Start address
#define LCD_BUSY 0x80 // Read busystatus

#define STK_CTRL ((volatile unsigned int*)(0xE000E010)) 
#define STK_LOAD ((volatile unsigned int*)(0xE000E014)) 
#define STK_VAL ((volatile unsigned int*)(0xE000E018)) 

#define SIMULATOR



#define CTRL_RD *(portIdrLow)
#define CTRL_WR *(portOdrLow)
#define DATA_RD *(portIdrHigh)
#define DATA_WR *(portOdrHigh)

typedef unsigned int uint32_t;
 
#define PORT_D_BASE 0x40020C00
#define portD_Moder ((volatile uint32_t *) (PORT_D_BASE))
#define portD_Otyper ((volatile unsigned short *) (PORT_D_BASE+0x4))
#define portD_Ospeedr ((volatile unsigned int *) (PORT_D_BASE+0x8))
#define portD_Pupdr ((volatile unsigned int *) (PORT_D_BASE+0xC))
#define portD_IdrLow ((volatile unsigned char *) (PORT_D_BASE+0x10))
#define portD_IdrHigh ((volatile unsigned char *) (PORT_D_BASE+0x11))
#define portD_OdrLow ((volatile unsigned char *) (PORT_D_BASE+0x14))
#define portD_OdrHigh ((volatile unsigned char *) (PORT_D_BASE+0x15))


#define PointsToWin 6

#define LcdHeight 64
#define LcdWidth 128

unsigned char keyb(void) {
	unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
	int row, col;
	for (row=1; row <=4 ; row++ ) {
		kbdActivate( row );
		if( (col = kbdGetCol () ) != 0 ){
			kbdActivate(row);
			return key [4*(row-1)+(col-1) ];
		}
		
	}
	
	*portD_OdrHigh = 0;
	return 0xFF;
	
	
}

void kbdActivate( unsigned int row ){
	switch( row ) {
	case 1: *portD_OdrHigh = 0x10 ; break;
	case 2: *portD_OdrHigh = 0x20 ; break;
	case 3: *portD_OdrHigh = 0x40 ; break;
	case 4: *portD_OdrHigh = 0x80 ; break;
	case 0: *portD_OdrHigh = 0x00; break;
	}
}

int kbdGetCol ( void ){
	unsigned char c;
	c = *portD_IdrHigh;
	if ( c & 0x8 ) return 4;
	if ( c & 0x4 ) return 3;
	if ( c & 0x2 ) return 2;
	if ( c & 0x1 ) return 1;
	return 0;
}

typedef struct tPoint
{
    unsigned char x;
    unsigned char y;
} POINT;

#define MAX_POINTS 500

typedef struct tGeometry
{
    int numpoints;
    int sizex;
    int sizey;
    POINT px[MAX_POINTS];
} GEOMETRY, *PGEOMETRY;

typedef struct tObj
{
    PGEOMETRY geo;
    int dirx,diry;
    int posx,posy;
    void (*draw)(struct tObj*);
    void (*clear)(struct tObj*);
    void (*move)(struct tObj*);
    void (*set_speed)(struct tObj*, int, int);
} OBJECT, *POBJECT;

/*void graphic_initialize(void);

static void graphic_write_command(uint8_t command, uint8_t controller);

static void graphic_write_data(uint8_t data, uint8_t controller);

static void graphic_write(uint8_t value, uint8_t controller);

static void graphic_ctrl_bit_clear(uint8_t x);

void move_object(POBJECT O);

void clear_object(POBJECT O);

void draw_object(POBJECT O);

void set_object_speed(POBJECT O, int speedx, int speedy);
*/
GEOMETRY ball_geometry ={

	.numpoints = 12,
	.sizex = 4,
	.sizey = 4,
	{
		/* px[0,1,2 ....] */
		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
        {3,1}, {3,2}
	}
};

GEOMETRY bar_geometry ={
	.numpoints = 22,
	.sizex = 2,
	.sizey = 11,
	{
		{0,0},{1,0},
		{0,1},{1,1},
		{0,2},{1,2},
		{0,3},{1,3},
		{0,4},{1,4},
		{0,5},{1,5},
		{0,6},{1,6},
		{0,7},{1,7},
		{0,8},{1,8},
		{0,9},{1,9},
		{0,10},{1,10}
	}
};


void init_app(void){
*(portModer) = 0x55555555;
*(portOspeedr) = 0x55555555;
*portD_Moder = 0x55005555;
*portD_Ospeedr = 0x55555555;
*portD_Pupdr &= 0x0000FFFF; /* Input, pull down */
*portD_Pupdr |= 0x00AA0000; /* Input, pull down */
*portD_Otyper = 0x0000; /* outputs are push/pull */

}

void set_object_speed(POBJECT O, int speedx, int speedy){

	O->dirx = speedx;

	O->diry = speedy;

}
void draw_object(POBJECT O){

	for(int i = 0; i < MAX_POINTS ;i++){

		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);

	}

}

void clear_object(POBJECT O){

	for(int i = 0; i < MAX_POINTS; i++){

		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);

	}

}

void move_object(POBJECT O){

	clear_object(O);

	O->posx += O->dirx;

	O->posy += O->diry;

	if(O->posx < 1 || O->posx > 128){

		O->dirx = -(O->dirx);

	}

	else if(O->posy < 1 || O->posy > 64 - O->geo->sizey){

		O->diry = -(O->diry);

	}

	draw_object(O);

}

static OBJECT ball = 
{
	.geo = &ball_geometry,
	.dirx = 0,
	.diry = 0,
	.posx = LcdWidth/2,
	.posy = LcdHeight/2,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};


static OBJECT bar_1 = 
{
	.geo = &bar_geometry,
	.dirx = 0,
	.diry = 0,
	.posx = 15,
	.posy = LcdHeight/2,
	draw_object,
	clear_object,
	//move_object,
	set_object_speed
	
};

static OBJECT bar_2 = 
{
	.geo = &bar_geometry,
	.dirx = 0,
	.diry = 0,
	.posx = LcdWidth-15,
	.posy = LcdHeight/2,
	draw_object,
	clear_object,
	//move_object,
	set_object_speed
	
};


static void graphic_ctrl_bit_set(uint8_t x){
uint8_t c;
c =*portOdrLow;
c &=~B_SELECT;
    c |=(~B_SELECT &x);
    *portOdrLow= c;
}

static void graphic_ctrl_bit_clear(uint8_t x){
uint8_t c;
c = *portOdrLow;
c &=~B_SELECT;
c &=~x;
*portOdrLow=c;
}

static void select_controller(uint8_t controller){
switch(controller){
case 0:graphic_ctrl_bit_clear(B_CS1|B_CS2); break;
case B_CS1 :graphic_ctrl_bit_set(B_CS1);
graphic_ctrl_bit_clear(B_CS2); break;
case B_CS2 :graphic_ctrl_bit_set(B_CS2);
graphic_ctrl_bit_clear(B_CS1); break;
case B_CS1|B_CS2 :graphic_ctrl_bit_set(B_CS1|B_CS2); break;
}
}


static void graphic_wait_ready(void){
uint8_t c;
graphic_ctrl_bit_clear(B_E);
*portModer =0x00005555;// 15-8 inputs, 7-0 outputs
graphic_ctrl_bit_clear(B_RS);
graphic_ctrl_bit_set(B_RW);
delay_500ns();
while(1){
graphic_ctrl_bit_set(B_E);
delay_500ns();
c =*portIdrHigh &LCD_BUSY;
graphic_ctrl_bit_clear(B_E);
delay_500ns();
if(c ==0) break;
}*portModer =0x55555555;// 15-0 outputs
}


void graphic_write(uint8_t value, uint8_t controller) {

DATA_WR = value;

select_controller(controller);

delay_500ns();

graphic_ctrl_bit_set(B_E);

delay_500ns();

graphic_ctrl_bit_clear(B_E);

if(controller & B_CS1) {

select_controller(B_CS1);

graphic_wait_ready();

}

if(controller & B_CS2) {

select_controller(B_CS2);

graphic_wait_ready();

}

DATA_WR = 0;

graphic_ctrl_bit_set(B_E);

select_controller(0);

}

void graphic_clear_screen(void){
uint8_t i,j;
for(j =0;j <8;j++){
graphic_write_command(LCD_SET_PAGE |j,B_CS1|B_CS2);
graphic_write_command(LCD_SET_ADD  |0,B_CS1|B_CS2);
for(i =0;i <=63;i++){
graphic_write(0,B_CS1|B_CS2);
}
}
}



void delay_250ns(void){
#ifdef SIMULATOR
return;
#endif
*STK_CTRL = 0;
*STK_LOAD = ((168/4)-1);
*STK_VAL = 0;
*STK_CTRL = 5;
while((*STK_CTRL & 0x10000) ==0){}
*STK_CTRL=0;

}

void delay_500ns(unsigned int us){
	#ifdef SIMULATOR
	return;
	#endif
    while(us--) {
delay_250ns();
delay_250ns();

}
}

void delay_micro(unsigned int us){
	#ifdef SIMULATOR
	return;
	#endif
while(us--) {
delay_250ns();
delay_250ns();
delay_250ns();
delay_250ns();
}
}

void delay_milli(unsigned int ms){
#ifdef SIMULATOR
ms = ms/1000;
ms++;

#endif
while(ms--)
delay_micro(1000);
}




void graphic_write_command(uint8_t commandToWrite, uint8_t controller) {

graphic_ctrl_bit_clear(B_E);

select_controller(controller);

graphic_ctrl_bit_clear(B_RS | B_RW);

graphic_write(commandToWrite, controller);

}

void graphic_write_data(uint8_t data, uint8_t controller) {
graphic_ctrl_bit_clear(B_E);
select_controller(controller);
graphic_ctrl_bit_set(B_RS);
graphic_ctrl_bit_clear(B_RW);
graphic_write(data, controller);
}


static uint8_t graphic_read(uint8_t controller){
uint8_t c;
graphic_ctrl_bit_clear(B_E);
*portModer =0x00005555;// 15-8 inputs, 7-0 outputs
graphic_ctrl_bit_set(B_RS|B_RW);
select_controller(controller);
delay_500ns(1);
graphic_ctrl_bit_set(B_E);
delay_500ns(1);
c =*portIdrHigh;graphic_ctrl_bit_clear(B_E);
*portModer =0x55555555;// 15-0 outputs
if(controller &B_CS1 ){
select_controller(B_CS1);
graphic_wait_ready();
}
if(controller &B_CS2 ){
select_controller(B_CS2);
graphic_wait_ready();
}
return c;
}

static uint8_t graphic_read_data(uint8_t controller){
graphic_read(controller);
return graphic_read(controller);
}


/*void pixel(int x,int y,int set){
uint8_t mask, c,controller;
int index;
if((x < 1) || (y < 1) || (x >128)||(y >64))return;
index =(y-1)/8;
switch((y-1)%8){
case0:mask =1;break;
case1:mask =2;break;
case2:mask =4;break;
case3:mask =8;break;
case4:mask =0x10;break;
case5:mask =0x20;break;
case6:mask =0x40;break;
case7:mask =0x80;break;
}

if(set ==0)mask =~mask;
if(x >64){
controller =B_CS2;
x =x -65;
} 
else {
controller =B_CS1;
x =x-1;
}
graphic_write_command(LCD_SET_ADD  |x,controller );
graphic_write_command(LCD_SET_PAGE |index,controller );
c =graphic_read_data(controller);
graphic_write_command(LCD_SET_ADD |x,controller);
if(set)mask =mask |c;
else mask =mask &c;
graphic_write(mask,controller);
}*/


void pixel(unsigned char x, unsigned char y, unsigned char set) {
// Kontrollera att x och y Ã¤r i tillÃ¥tna intervall. 
if(x > 128 || x < 1 || y > 64 || y < 1) return;
if(set != 0 && set != 1) return;

uint8_t index = (y - 1) / 8;
uint8_t mask;
mask = 1 << ( (y - 1) % 8);
if(set == 0){
mask = ~mask; // biten ska nollstÃ¤llas
}

uint8_t controller;

// BestÃ¤m fysiska koordinater och vÃ¤lj styrkrets
if(x > 64){
controller = B_CS2;
x = x - 65;
}else{
controller = B_CS1;
x = x - 1;
}
graphic_write_command(LCD_SET_ADD | x, controller);
graphic_write_command(LCD_SET_PAGE | index, controller);
uint8_t temp = graphic_read_data(controller);
graphic_write_command(LCD_SET_ADD | x, controller);

if(set == 1){
mask = mask | temp;
}else{
mask = mask & temp;
}
graphic_write_data(mask, controller); 
}



uint8_t backBuffer[1024];// 128 * 64 / 8

void clear_backBuffer(){
int i;
for(i =0;i <1024;i++) backBuffer[i]=0;
}

/*void pixel(intx, inty){
uint8_t mask;
int index =0;
if((x >128)||(x <1)||(y >64)||(y <1))return;
mask =1<<((y-1)%8);
if(x > 64){x -=65;
index =512;
}
index +=x +((y-1)/8)*64;
backBuffer[index]|=mask;
}*/


void graphic_draw_screen(void){
uint8_t i,j, controller, c;
unsigned int k = 0;
for(c =0;c <2;c++) {
controller =(c ==0)?B_CS1 :B_CS2;
for(j =0;j <8;j++){
graphic_write_command(LCD_SET_PAGE |j,controller);
graphic_write_command(LCD_SET_ADD  |0,controller);
for(i =0;i <=63;i++, k++) {
graphic_write(backBuffer[k],controller);
}
}
}
}


typedef struct{
unsigned char width;
unsigned char height;
unsigned char *data;
}sprite;

static void load_sprite(sprite* s,unsigned char *data, int width, int height){
s->width =width;
s->height =height;
s->data =data;
}

void draw_sprite(sprite* s,int x,int y,int set){
int i,j,k,width_in_bytes;
if(s->width %8==0)width_in_bytes =s->width /8;
else width_in_bytes =s->width /8+1;
for(i =0;i <s->height;i++)
for(j =0;j <width_in_bytes;j++){
unsigned char byte =s->data[i *width_in_bytes +j];
for(k =0;k <8;k++){
if(byte &(1<<k))pixel(8*j +k +x + 1,i +y + 1,set);
}
}
}

void graphic_initialize(void){
graphic_ctrl_bit_set(B_E);
//delay_micro(100);
graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
//delay_milli(30);
graphic_ctrl_bit_set(B_RST);
//delay_milli(100);
graphic_write_command(LCD_OFF,B_CS1|B_CS2);
graphic_write_command(LCD_ON,B_CS1|B_CS2);
graphic_write_command(LCD_DISP_START,B_CS1|B_CS2);
graphic_write_command(LCD_SET_ADD,B_CS1|B_CS2);
graphic_write_command(LCD_SET_PAGE,B_CS1|B_CS2);
select_controller(0);
}


void main(int argc, char **argv){

POBJECT p = &ball;
POBJECT b1 = &bar_1;
POBJECT b2 = &bar_2;
init_app();
graphic_initialize();
#ifndef SIMULATOR
graphic_clear_screen();
#endif
p->set_speed(p,4,1);
while(1)
{
	p->draw(b1);
	p->draw(b2);
	p->move(p);
    delay_milli(40);
}

}
