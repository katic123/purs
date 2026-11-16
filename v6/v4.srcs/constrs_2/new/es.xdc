# Takt 100 MHz, banka 13 (3.3 V)
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Reset, tipka BTNC, banka 34 (2.5 V, J18 na 2.5 V)
set_property PACKAGE_PIN P16 [get_ports reset]
set_property IOSTANDARD LVCMOS25 [get_ports reset]

# LD0, banka 33 (3.3 V)
set_property PACKAGE_PIN T22 [get_ports LD0]
set_property IOSTANDARD LVCMOS33 [get_ports LD0]
set_property DRIVE 12 [get_ports LD0]
set_property SLEW SLOW [get_ports LD0]
set_property PULLTYPE NONE [get_ports LD0]

# Zahtjev za takt: 100 MHz (period 10 ns)
create_clock -period 10.000 -waveform {0.000 5.000} [get_ports clk]