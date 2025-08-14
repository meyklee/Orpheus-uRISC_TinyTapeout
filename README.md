# Orpheus‑uRISC (TinyTapeout)
#  https://chatgpt.com/g/g-689db816ff608191bf7a05877df876e8-orpheus-pico-gpt
# https://poe.com/Orpheus_Pico_GPT
# https://www.coze.cn/s/p7LlpvZaEko/
# https://www.doubao.com/share?botId=7538390188222365735 
Open-source RISC-V microcontroller for TinyTapeout shuttles.
- CPU: PicoRV32 (RV32IC)
- Bus: Wishbone (single master)
- Periphs: GPIO, UART, SPI, Timer/PWM, PIO‑lite, DMA‑mini
- Boot: RP2040-assisted over SPI/UART (TinyTapeout demo board)

## Build & simulate
make sim        # builds tb_top and runs basic smoke tests
make waves      # open waves with gtkwave
make lint       # lint check

## Firmware
cd sw/hello_uart && make

## Precheck (TinyTapeout)
./scripts/precheck.sh
