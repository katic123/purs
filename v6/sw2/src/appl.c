#include "xparameters.h"
#include "xgpiops.h"
#include "xuartps.h"
#include "xgpio.h"

#define UART_DEVICE_ID XPAR_PS7_UART_1_DEVICE_ID // UART 1 on MIO 48..49

#define LD9 7            // LD9 is connected to MIO7
#define N_Pause 10000000 // For dummy counter

XGpioPs Gpio;    // Driver instance for GPIO Device
XUartPs Uart_Ps; // Driver instance for UART
XGpio Gpio_Pl;   // Axi slave
XGpio Gpio_Btn;

int main()
{
    u8 SendString[] = "Vjezba 5 je napravljena.\n\r";
    int SentCount;

    // ============== Driver Initialization ================
    XGpioPs_Config *GpioConfigPtr;
    XUartPs_Config *UartConfigPtr;
    XGpio_Config *GpioPlConfigPtr;
    XGpio_Config *GpioBtnConfigPtr;

    int StatusGpio;
    int StatusUart;
    int StatusGpioPl;
    int StatusGpioBtn;

    // XUartPs_Config *XUartPs_LookupConfig(u16 DeviceId);
    UartConfigPtr = XUartPs_LookupConfig(UART_DEVICE_ID);
    if (NULL == UartConfigPtr)
    {
        return XST_FAILURE;
    }

    // XGpioPs_Config *XGpioPs_LookupConfig(u16 DeviceId);
    GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    if (NULL == GpioConfigPtr)
    {
        return XST_FAILURE;
    }

    GpioPlConfigPtr = XGpio_LookupConfig(XPAR_GPIO_0_DEVICE_ID);
    if (NULL == GpioPlConfigPtr)
    {
        return XST_FAILURE;
    }
    GpioBtnConfigPtr = XGpio_LookupConfig(XPAR_AXI_GPIO_1_DEVICE_ID);
    if (NULL == GpioBtnConfigPtr)
    {
        return XST_FAILURE;
    }

    StatusGpio = XGpioPs_CfgInitialize(&Gpio,
                                       GpioConfigPtr,
                                       GpioConfigPtr->BaseAddr);

    StatusUart = XUartPs_CfgInitialize(&Uart_Ps,
                                       UartConfigPtr,
                                       UartConfigPtr->BaseAddress);

    StatusGpioPl = XGpio_CfgInitialize(&Gpio_Pl, GpioPlConfigPtr, GpioPlConfigPtr->BaseAddress);

    StatusGpioBtn = XGpio_CfgInitialize(&Gpio_Btn, GpioBtnConfigPtr, GpioBtnConfigPtr->BaseAddress);

    if (StatusGpio != XST_SUCCESS || StatusUart != XST_SUCCESS || StatusGpioPl != XST_SUCCESS || StatusGpioBtn != XST_SUCCESS)
    {
        return XST_FAILURE;
    }

    // =============== GPIO Initialization =================
    // void XGpioPs_SetDirectionPin(const XGpioPs *InstancePtr,
    //                              u32 Pin, u32 Direction);
    XGpioPs_SetDirectionPin(&Gpio, LD9, 1); // OUT
    XGpioPs_SetOutputEnablePin(&Gpio, LD9, 1);
    XGpio_SetDataDirection(&Gpio_Pl, 1, 0x00);
    XGpio_SetDataDirection(&Gpio_Btn, 1, 0x03);

    // =============== UART Initialization =================
    XUartPs_SetBaudRate(&Uart_Ps, 9600);

    SentCount = 0;
    while (SentCount < (int)(sizeof(SendString) - 1))
    {
        SentCount += XUartPs_Send(&Uart_Ps, &SendString[SentCount], 1);
    }

    // ================== GPIO Write =======================
    for (int i = 0; i < 10; i++)
    {
        volatile int k;

        // void XGpioPs_WritePin(const XGpioPs *InstancePtr,
        //                       u32 Pin, u32 Data);
        XGpioPs_WritePin(&Gpio, LD9, 0x01); // LED ON
        for (k = 0; k < N_Pause; k++)
            ;

        XGpioPs_WritePin(&Gpio, LD9, 0x00); // LED OFF
        for (k = 0; k < N_Pause; k++)
            ;
    }

    unsigned int j = 0x01;
    int smjer = 1;

    while (1)
    {
    	XGpio_DiscreteWrite(&Gpio_Pl, 1, j);
        volatile int k;


        for (k = 0; k < 200000; k++)
        {
            u32 tipke = XGpio_DiscreteRead(&Gpio_Btn, 1);
            if (tipke & 0x01)
                smjer = 1;
            if (tipke & 0x02)
                smjer = 0;
        }

        if (smjer)
        {
            j = j << 1;
            if (j > 0x40)
                j = 0x01;
        }
        else
        {
            j = j >> 1;
            if (j == 0)
                j = 0x40;
        }
    }

    return XST_SUCCESS; // never reached
}
