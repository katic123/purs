# ============ Takt 100 MHz, banka 13 (3.3 V) ============
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PULLTYPE NONE [get_ports clk]
create_clock -period 10.000 -waveform {0.000 5.000} [get_ports clk]

# ============ Reset (BTNC) ============
set_property PACKAGE_PIN P16 [get_ports reset]
set_property IOSTANDARD LVCMOS25 [get_ports reset]
set_property PULLTYPE NONE [get_ports reset]

# ============ LD0 (led_blinker iz PL-a), banka 33 (3.3 V) ============
set_property PACKAGE_PIN T22 [get_ports LD0]
set_property IOSTANDARD LVCMOS33 [get_ports LD0]
set_property DRIVE 12 [get_ports LD0]
set_property SLEW SLOW [get_ports LD0]
set_property PULLTYPE NONE [get_ports LD0]

# ============ LED_7_1_tri_o[6:0] = LD1..LD7, banka 33 (3.3 V) ============
set_property PACKAGE_PIN T21 [get_ports {LED_7_1_tri_o[0]}]
set_property PACKAGE_PIN U22 [get_ports {LED_7_1_tri_o[1]}]
set_property PACKAGE_PIN U21 [get_ports {LED_7_1_tri_o[2]}]
set_property PACKAGE_PIN V22 [get_ports {LED_7_1_tri_o[3]}]
set_property PACKAGE_PIN W22 [get_ports {LED_7_1_tri_o[4]}]
set_property PACKAGE_PIN U19 [get_ports {LED_7_1_tri_o[5]}]
set_property PACKAGE_PIN U14 [get_ports {LED_7_1_tri_o[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_7_1_tri_o[*]}]
set_property DRIVE 12 [get_ports {LED_7_1_tri_o[*]}]
set_property SLEW SLOW [get_ports {LED_7_1_tri_o[*]}]
set_property PULLTYPE NONE [get_ports {LED_7_1_tri_o[*]}]

# ============ BUTTON_tri_i[1:0] = BTNL, BTNR, banka 34 (2.5 V, J18 na 2.5 V) ============
set_property PACKAGE_PIN N15 [get_ports {BUTTON_tri_i[0]}]
set_property PACKAGE_PIN R18 [get_ports {BUTTON_tri_i[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {BUTTON_tri_i[*]}]
set_property PULLTYPE NONE [get_ports {BUTTON_tri_i[*]}]