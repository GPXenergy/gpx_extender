#ifndef EXTENDER_CONFIG_H
#define EXTENDER_CONFIG_H

#include "stm32l0xx_hal.h"
#include "uart.h"

enum{UART_RX_TIMEOUT = 2200u};          // (µs) timeout after which partial data is sent 

// radio
enum{RF_CHANNEL = 100u};        // RF channel, 100 chosen not to interfere with WiFi
enum{RF_POWER = 1u};            // RF transmit power

// CRC
enum{CRC8_POLY = 0x7};          // CRC polynomial
enum{CRC_INITVALUE = 0xff};

// application specific 
#define VERSION_STR         "0.9"
enum{TXLOOP_TIMEOUT = 30000u, RXLOOP_TIMEOUT = (UINT16_MAX - 1)};
enum{TX_MAX_WAITTIME = 200000};     // 
enum{BTN_PRESS_DURATION = 300};     // time to hold button in 10ms increments
enum{BTN_RELEASE_DURATION = 11};    // for debounce only count button as released after some time
enum{PAIRING_TIMEOUT = 120000};     // ms timeout for pairing
enum{KEEPALIVE_TIMEOUT = 1000};     // send keepalive packet if no RF data has been sent for this amount of time(ms)

// LED and blink patterns
typedef enum {RED, GREEN, YELLOW} led_colour_t;

// unpaired loop
#define UNPAIRED_BLINK_COLOUR   RED
enum{UNPAIRED_BLINK_ONTIME = 10};
enum{UNPAIRED_BLINK_OFFTIME = 1500};

// pairing loop
#define PAIRING_BLINK_COLOUR    YELLOW
enum{PAIRING_BLINK_ONTIME = 10};

// tx loop
#define TX_SUCCESS_COLOUR       GREEN
#define TX_FAIL_COLOUR          RED
enum{TX_SUCCESS_ONTIME = 10, TX_FAIL_ONTIME = 10};

// rx loop
#define RX_SUCCESS_COLOUR       GREEN
#define RX_FAIL_COLOUR          RED
enum{RX_SUCCESS_ONTIME = 10, RX_FAIL_ONTIME = 10};



#endif // EXTENDER_CONFIG_H