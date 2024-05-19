# FRDM-KL43Z Template Application for VSCode

## Overview

The LED Blinky demo application provided by NXP SDK.

This project may serve as template to start developming an application on the
FRDM-KL43Z (or similar) development board.

It assumes a stardard configuration with CMAKE TOOLS

## Supported Toolchain
- GCC ARM Embedded  9.2.1

Note: If a newer toolchain is used with this SDK, some old de data types will not be found and you will be unabled to compile.

## Running the demo
When the demo runs successfully, you will find the LED is blinking.

## Script Building
When building from the scripts in armgcc, two environment variables must be set first

```bash
export MCUX_SDK_DIR=path/to/sdk
export ARMGCC_DIR=path/to/toolchain
```

## VSCode Project Configuration
Two files, "cmake-kits" and "mcuxpresso-tools", need to be configurated with the appropiated paths to the SDK and the crosscompilation toolchain.


cmake-kits.json
```json
{
    "name": "ARM GCC",
    "environmentVariables": {
      "ARMGCC_DIR": "path/to/toolkit",
      "MCUX_SDK_DIR":"path/to/sdk"
    },
    "cmakeSettings": {},
    "keep": true,
    "toolchainFile": "path/to/sdk/tools/cmake_toolchain_files/armgcc.cmake"
}
```


mcuxpresso-tools.json
```json
{
  "version": "1.4",
  "toolchainPath": "path/to/toolchain",
  "linkedProjects": [],
  "trustZoneType": "none",
  "multicoreType": "none",
  "debug": {
    "linkserver": {},
    "pemicro": {},
    "segger": {}
  },
  "projectType": "cmake-freestanding"
}
```

No need to madify any of the other options for now, most of them will be automatically configured when needed.