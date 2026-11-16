onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib es_opt

do {wave.do}

view wave
view structure
view signals

do {es.udo}

run -all

quit -force
