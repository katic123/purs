onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+v3 -L xil_defaultlib -L secureip -O5 xil_defaultlib.v3

do {wave.do}

view wave
view structure

do {v3.udo}

run -all

endsim

quit -force
