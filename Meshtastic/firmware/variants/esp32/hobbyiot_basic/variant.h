// https://github.com/hobbyiot/LoRa-Nodes/


// no screen
#define HAS_SCREEN 0

// NO GPS
#undef GPS_RX_PIN
#undef GPS_TX_PIN

#define USE_RF95 // RF95/SX127X

#define LORA_SCK 18
#define LORA_MISO 19
#define LORA_MOSI 23
#define LORA_CS 5

#define LORA_DIO0 32 //4
#define LORA_RESET 15 //14
#define LORA_DIO1 33 //2
#define LORA_DIO2 34 // none
#define LORA_DIO3

#define LED_PIN 4 //16

// #define BUTTON_PIN 25
// #define BUTTON_NEED_PULLUP

#define BATTERY_PIN 35
#define ADC_CHANNEL ADC1_GPIO35_CHANNEL

#undef EXT_NOTIFY_OUT
