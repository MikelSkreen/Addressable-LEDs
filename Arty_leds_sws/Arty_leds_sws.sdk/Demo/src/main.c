#include "xparameters.h"
#include "stdlib.h"
#include "xgpio.h"

int main (void) 
{

    XGpio sw, leds;
	int dip_check;
	int num;
	
	xil_printf("hello\n\r");

    xil_printf("-- Start of the Program --\r\n");

    XGpio_Initialize(&sw, XPAR_SWITCHES_DEVICE_ID);
	XGpio_SetDataDirection(&sw, 1, 0xffffffff);

	XGpio_Initialize(&leds, XPAR_LEDS_DEVICE_ID);
	XGpio_SetDataDirection(&leds, 1, 0);
	XGpio_SetDataDirection(&leds, 2, 0);

	while (1)
	{
	  dip_check = XGpio_DiscreteRead(&sw, 1);
	  xil_printf("DIP Switch Status %x\r\n", dip_check);

//	  void XGpio_DiscreteWrite(XGpio *InstancePtr, unsigned Channel, u32 Mask);
	  XGpio_DiscreteWrite(&leds, 1, dip_check);

	  //for(num=0; num<10000; num++);
	  //sleep(1);
	}
 
}
