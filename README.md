# Zephyr Study
This repository contains a collection of Zephyr projects and examples for study purposes.

## Getting Started
To get started with the projects in this repository, follow these steps:

Dependencies for macOS:
```
brew update
brew install python3 git cmake ninja gperf ccache dfu-util dtc qemu open-ocd
```

Clone this repository and initialize the Zephyr environment:
```
git clone https://github.com/paulinog/study-zephyr.git
cd study-zephyr/
./bootstrap.sh
```

## Building Example Projects
```
source zephyr-venv/bin/activate
west build -b nucleo_f756zg zephyr/samples/basic/blinky
west flash -r openocd
```
