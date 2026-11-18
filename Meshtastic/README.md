# H2S-Dev Board - Meshtastic Implementation

## H2S-Dev Development Board | [H2S-Dev V1.2](https://github.com/hobbyiot/HELIUM-SENSORS/tree/main/H2S-Dev%20V1.2)

This folder holds the H2S-Dev board support for the [Meshtastic firmware](https://github.com/meshtastic/firmware).
The official firmware is included as a git submodule, pinned to a Meshtastic release
(the tag is recorded in `UPSTREAM_TAG`), so every H2S-Dev build is tied to a known Meshtastic version.

```
Meshtastic/
├── variant/h2s_dev/      variant.h + platformio.ini (PlatformIO env: h2s-dev)
├── boards/h2s_dev.json   PlatformIO board definition for H2S-Dev (ESP32, 4 MB flash)
├── link_variant.sh       links the variant and board into upstream/
├── update_upstream.sh    moves upstream/ to a new Meshtastic release and builds
├── UPSTREAM_TAG          the pinned Meshtastic release
└── upstream/             git submodule: meshtastic/firmware
```

### Ready-made firmware

Binaries for each supported Meshtastic release are on the
[Releases](https://github.com/hobbyiot/LoRa-Nodes/releases) page (`h2s-dev-meshtastic-<version>`).

### Build it yourself

```sh
git clone --recursive https://github.com/hobbyiot/LoRa-Nodes
cd LoRa-Nodes/Meshtastic
./link_variant.sh
pio run -d upstream -e h2s-dev               # add  -t upload  to flash the board
```

In Visual Studio Code with the PlatformIO extension, open `Meshtastic/upstream` as the project
and select the `h2s-dev` environment.

### Moving to a new Meshtastic release

```sh
./update_upstream.sh                 # latest stable release, or: ./update_upstream.sh <tag>
```

Flash and test, then commit `upstream` and `UPSTREAM_TAG`.
A GitHub workflow also checks every Monday for a new Meshtastic release and opens a pull
request when H2S-Dev builds on it. Merging to `main` publishes the binaries as a release.

### Don't have an H2S-Dev board yet?
Get yours from our [webstore](https://www.elecrow.com/helium-iot-network-sensor-development-board-h2s-dev-v1-2-basic.html)
