#ifndef XPARAMETERS_H   /* prevent circular inclusions */
#define XPARAMETERS_H   /* by using protection macros */

#define XPAR_XGPIO_NUM_INSTANCES 2

/* Definitions for peripheral AXI_GPIO_0 */
#define XPAR_AXI_GPIO_0_COMPATIBLE xlnx,axi-gpio-2.0
#define XPAR_AXI_GPIO_0_BASEADDR 0x40000000
#define XPAR_AXI_GPIO_0_HIGHADDR 0x4000ffff
#define XPAR_AXI_GPIO_0_INTERRUPT_PRESENT 0x0
#define XPAR_AXI_GPIO_0_IS_DUAL 0x0
#define XPAR_AXI_GPIO_0_GPIO_WIDTH 0x1

/* Canonical definitions for peripheral AXI_GPIO_0 */
#define XPAR_XGPIO_0_BASEADDR 0x40000000
#define XPAR_XGPIO_0_HIGHADDR 0x4000ffff
#define XPAR_XGPIO_0_COMPATIBLE xlnx,axi-gpio-2.0
#define XPAR_XGPIO_0_GPIO_WIDTH 0x1
#define XPAR_XGPIO_0_INTERRUPT_PRESENT 0x0
#define XPAR_XGPIO_0_IS_DUAL 0x0

/* Definitions for peripheral AXI_GPIO_1 */
#define XPAR_AXI_GPIO_1_COMPATIBLE xlnx,axi-gpio-2.0
#define XPAR_AXI_GPIO_1_BASEADDR 0x40010000
#define XPAR_AXI_GPIO_1_HIGHADDR 0x4001ffff
#define XPAR_AXI_GPIO_1_INTERRUPT_PRESENT 0x0
#define XPAR_AXI_GPIO_1_IS_DUAL 0x0
#define XPAR_AXI_GPIO_1_GPIO_WIDTH 0x1

/* Canonical definitions for peripheral AXI_GPIO_1 */
#define XPAR_XGPIO_1_BASEADDR 0x40010000
#define XPAR_XGPIO_1_HIGHADDR 0x4001ffff
#define XPAR_XGPIO_1_COMPATIBLE xlnx,axi-gpio-2.0
#define XPAR_XGPIO_1_GPIO_WIDTH 0x1
#define XPAR_XGPIO_1_INTERRUPT_PRESENT 0x0
#define XPAR_XGPIO_1_IS_DUAL 0x0

#define XPAR_XUARTLITE_NUM_INSTANCES 1

/* Definitions for peripheral AXI_UARTLITE_0 */
#define XPAR_AXI_UARTLITE_0_COMPATIBLE xlnx,axi-uartlite-2.0
#define XPAR_AXI_UARTLITE_0_BASEADDR 0x40600000
#define XPAR_AXI_UARTLITE_0_HIGHADDR 0x4060ffff
#define XPAR_AXI_UARTLITE_0_BAUDRATE 0x2580
#define XPAR_AXI_UARTLITE_0_USE_PARITY 0x0
#define XPAR_AXI_UARTLITE_0_ODD_PARITY 0x0
#define XPAR_AXI_UARTLITE_0_DATA_BITS 0x8

/* Canonical definitions for peripheral AXI_UARTLITE_0 */
#define XPAR_XUARTLITE_0_BASEADDR 0x40600000
#define XPAR_XUARTLITE_0_HIGHADDR 0x4060ffff
#define XPAR_XUARTLITE_0_BAUDRATE 0x2580
#define XPAR_XUARTLITE_0_COMPATIBLE xlnx,axi-uartlite-2.0
#define XPAR_XUARTLITE_0_DATA_BITS 0x8
#define XPAR_XUARTLITE_0_ODD_PARITY 0x0
#define XPAR_XUARTLITE_0_USE_PARITY 0x0

#define XPAR_LMB_BRAM_0_BASEADDRESS 0x0
#define XPAR_LMB_BRAM_0_HIGHADDRESS 0x10000
#define XPAR_CPU_CORE_CLOCK_FREQ_HZ 100000000

#define XPAR_MICROBLAZE_ADDR_SIZE 32

#define STDOUT_BASEADDRESS 0x40600000
#define STDIN_BASEADDRESS 0x40600000

/* Number of SLRs */
#define NUMBER_OF_SLRS 0x1

/* Device ID */
#define XPAR_DEVICE_ID "7a100t"

#endif  /* end of protection macro */