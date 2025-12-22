# H2S-Dev Board - Meshtastic Implementation

## H2S-Dev Development Board | [H2S-Dev V1.2](https://github.com/hobbyiot/HELIUM-SENSORS/tree/main/H2S-Dev%20V1.2)

This repository includes the `platformio.ini` and `variant.h` files structured to align with the standard Meshtastic firmware layout:  
`LoRa-Nodes/Meshtastic/firmware/variants/esp32/hobbyiot_basic/`.

These files define the necessary environment and pin configuration to build and run the Meshtastic firmware on the H2S-Dev board.

### Instructions

- Download the latest Meshtastic firmware from [meshtastic/firmware](https://github.com/meshtastic/firmware)
- Clone the H2S-Dev board files from [hobbyiot_basic](https://github.com/hobbyiot/LoRa-Nodes/tree/main/Meshtastic/firmware/variants/esp32/hobbyiot_basic)
- Place the `hobbyiot_basic` folder into the `/variants` directory of the Meshtastic firmware
- Open the project in Visual Studio Code with the PlatformIO extension
- Select the `hobbyiot_h2s_dev` environment
- Compile the firmware for the H2S-Dev board
- **Flash the firmware to your device and start using it!**

### Don't have an H2S-Dev board yet?  
Get yours from our [webstore](https://www.elecrow.com/helium-iot-network-sensor-development-board-h2s-dev-v1-2-basic.html)
