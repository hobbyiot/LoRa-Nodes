# LoRa-Nodes - LoRa IoT boards for rapid development

## LoRa Node Sensor Development board | [H2S-Dev V1.2](https://github.com/hobbyiot/HELIUM-SENSORS/tree/main/H2S-Dev%20V1.2)

LoRa IoT Node board (H2S-Dev board) is a ready-to-use, Open source hardware, Arduino compatible, ESP32 based LoRa network sensor development board. It is capable of implementing a number of sensor and positioning applications. The board is mainly targeted to makers and hobbyists.

H2S-Dev board is compatible with the [Meshtastic decentralized network](https://meshtastic.org/docs/about/), [Helium network](https://www.helium.com/) and others LoRa applications. Implementations are available within the current GitHub repository.

![](https://github.com/hobbyiot/HELIUM-SENSORS/blob/main/H2S-Dev%20V1.2/PICS/H2S_V1.2-100.jpg)

H2S-Dev board key features and flexible assembly options including ESP32 and SX1276 LoRa worldwide modules as well as optional GNSS. A practical powering circuitry is implemented that is capable of powering the board from the programming interface, USB-C and/or RPi compatible connector. The LiPo battery controller also charges the battery connected. The soldering area and I2C extensions allow wiring of sensors and connecting devices via I2C interfaces.

The most recent version of the LoRa IoT Node board (H2S-Dev board - H2S-Dev) is V1.2

H2S-Dev board is built around ESP32 MCU module and LoRaWAN SX1276 based radio module, supporting worldwide radio frequency bands, I2C standard interfaces for connecting various sensors and the relatively cheap integrated GNSS module with small chip antenna on it.

![](https://github.com/hobbyiot/HELIUM-SENSORS/blob/main/H2S-Dev%20V1.2/PICS/H2S-Dev%20board%20V1.2%20Main%20blocks.jpg)

The development board also incorporates a standard 7-pin ESP32 serial programming interface to use with any compatible Serial to USB adapter. Set of LED indicators - Power, “1 second” GNSS, Charging and General purpose LEDs are on board for indicating certain activities. USB-C and LiPo battery sockets are available for dual powering with charging circuitry and battery level sensing line routed to a CPU GPIO pin. There is also a development area grid - holes matrix area (4 rows x 8 holes each, 0.1 inch / 2.54 mm pitch) with power and ground points nearby for adding sensors, interfaces, and add-ons. Several GPIOs are routed close to the matrix area.

### Technical parameters
![](https://github.com/hobbyiot/HELIUM-SENSORS/blob/main/H2S-Dev%20V1.2/PICS/H2S-Dev%20board%20V1.2%20Table%201.jpg)

### Circuit schematic
The circuit schematic of the LoRa IoT Node board (H2S-Dev board) (H2S-Dev V1.2) is shown in the picture below. Central area presents the MCU and optional GNSS module together with the LoRa radio module and antenna connector.

![](https://github.com/hobbyiot/HELIUM-SENSORS/blob/main/H2S-Dev%20V1.2/PICS/H2S-Dev%20V1.2%20SCH.PNG)

On the left the mandatory I/O interface connectors are situated. Right part consists of the optional connectors. On the bottom part of the sheet the battery input and charging circuitry are placed together with the DC/DC converter responsible for generating the supply voltage for the entire design. LED indicators and a Reset switch are placed according to their corresponding function.

The schematic is drawn on a A3 standard page. Detailed schematic in PDF format: [H2S-Dev V1.2 Schematic](https://github.com/hobbyiot/HELIUM-SENSORS/blob/main/H2S-Dev%20V1.2/HW/H2S-Dev%20V1.2%20Schematic.pdf)

### Printed Circuit board

The printed circuit board (PCB) of the LoRa IoT Node board (H2S-Dev board) (H2S-Dev V1.2) is designed to use a standard FR-4 1.6 mm 2-layer material for production.

H2S-Dev V1.2 Top Layer     |  H2S-Dev V1.2 Bottom Layer
:-------------------------:|:-------------------------:
![](https://github.com/hobbyiot/HELIUM-SENSORS/blob/main/H2S-Dev%20V1.2/PICS/H2S-Dev%20V1.2%20TL%203D.PNG)  |  ![](https://github.com/hobbyiot/HELIUM-SENSORS/blob/main/H2S-Dev%20V1.2/PICS/H2S-Dev%20V1.2%20BL%203D.PNG)

Main parts are situated for convenient operation and minimal interference between radios implemented. The LoRa module pin 1 to U.FL antenna small trace is routed with a special attention to ensure the 50 ohm impedance requirement of that trace. The GNSS module is far away, on the other edge of the board, and it is surrounded by solid copper regions on both top and bottom copper layers according to the recommendations for proper reception of the satellite signals by the small chip antenna.

The JST battery connector and USB-C power socket are situated on the down left of the board close to the corresponding circuitry. Programming interface is a 7-pin header for connecting a suitable module to burn a software sketch into the MCU via serial interface.

On the top of the board 2x20 connector and Groove compatible footprints are located. Both of them carry powering and I2C interfaces.

### H2S-Dev board V1.2 assembly variants
![](https://github.com/hobbyiot/HELIUM-SENSORS/blob/main/H2S-Dev%20V1.2/PICS/H2S-Dev%20board%20V1.2%20Table%202.jpg)

### H2S-Dev board V1.2 Meshtastic implementation

Coming soon!

### H2S-Dev board V1.2 Arduino code example for Helium network

This example code in (H2S-DEV-THS-V0.1.ino) sends a valid LoRaWAN packet over The Helium network with a payload containing temperature and humidity data as they are read from a DHT11 sensor, connected to GPIO13 using frequency and encryption settings according your region.

More information: https://github.com/hobbyiot/HELIUM-SENSORS/tree/main/H2S-Dev%20V1.2/SW

The hardware of the LoRa IoT Node board (H2S-Dev board) V1.2 is designed as an open source project in the Altium Circuit Maker environment. To access the project follow the links below.

https://workspace.circuitmaker.com/Projects/Details/sivanovbg/H2S-Dev-V12

https://365.altium.com/files/AC741A32-A420-4803-868D-E6CB6756A587

### Crypto donations

Crypto | Wallet address
:-------------------------------:|:----------------------------------------------------------------------:
[Levcoin](https://levcoin.net/) | <small>bg2HVDv6r9VhCi2fR8QeBy5VAgbcav7YY3yypi6ugYoBFXgFmqjQGKWjm7LZrsRQx488v58UjnYXRNdQKU5vjsiA2Yj1kNtYZ</small>
Bitcoin (BTC) | bc1q0l2zv2ayns5ppz6v9xnggkjyskdt0ywgk6zsck
Helium (HNT) | 9Un8EUQdXY53rSst26B5tufz9FUZbhcfqTYNMr4AuATh

---

http://www.youtube.com/@hobbyiot | https://www.hobbyiot.net/
:----------------------------:|:------------------------------:
https://x.com/HobbyIoT | https://www.patreon.com/HobbyIoT
