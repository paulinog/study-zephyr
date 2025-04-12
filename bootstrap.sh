#!/bin/bash

python3 -m venv ./zephyr-venv
source zephyr-venv/bin/activate
pip install --upgrade pip
pip install west

west init -m https://github.com/paulinog/zephyr.git
west config manifest.project-filter +hal_stm32
west update
west zephyr-export

west packages pip --install
west sdk install -b . -t arm-zephyr-eabi
