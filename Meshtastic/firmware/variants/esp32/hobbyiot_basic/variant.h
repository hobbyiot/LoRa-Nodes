// https://github.com/hobbyiot/LoRa-Nodes



//H2S-Dev I2C bus setup
#undef I2C_SDA
#undef I2C_SCL
#define I2C_SDA 21
#define I2C_SCL 22

// NO GPS
#undef GPS_RX_PIN
#undef GPS_TX_PIN

// Screen setup
#define HAS_SCREEN 1 // 1 = screen is present; 0 = no screen

#define USE_RF95 // RF95/SX127X

#define LORA_SCK 18
#define LORA_MISO 19
#define LORA_MOSI 23
#define LORA_CS 5

#define LORA_DIO0 32
#define LORA_RESET 15
#define LORA_DIO1 33
#define LORA_DIO2 34
#define LORA_DIO3 // none

#define LED_PIN 4

#define BUTTON_PIN 13
#define BUTTON_NEED_PULLUP

#define BATTERY_PIN 35
#define ADC_CHANNEL ADC1_GPIO35_CHANNEL

#define EXT_PWR_DETECT 39

#undef EXT_NOTIFY_OUT
