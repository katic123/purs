onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib v3_opt

do {wave.do}

view wave
view structure
view signals

do {v3.udo}

run -all

quit -force
