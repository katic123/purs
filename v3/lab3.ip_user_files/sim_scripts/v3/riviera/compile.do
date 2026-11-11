vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../../lab3.gen/sources_1/bd/v3/ipshared/96fb/led_blinker.vhd" \
"../../../../lab3.gen/sources_1/bd/v3/ip/v3_led_blinker_LD2_0/sim/v3_led_blinker_LD2_0.vhd" \
"../../../../lab3.gen/sources_1/bd/v3/ip/v3_LD3_0/sim/v3_LD3_0.vhd" \
"../../../../lab3.gen/sources_1/bd/v3/sim/v3.vhd" \


