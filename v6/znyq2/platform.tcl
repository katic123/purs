# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/leon/Desktop/katic_leon/v4/znyq2/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/leon/Desktop/katic_leon/v4/znyq2/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {znyq2}\
-hw {/home/leon/Desktop/katic_leon/v4/zynq1.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/leon/Desktop/katic_leon/v4}

platform write
platform generate -domains 
platform active {znyq2}
platform clean
platform generate
platform clean
platform active {znyq2}
platform config -updatehw {/home/leon/Desktop/katic_leon/v5/zynq1.xsa}
platform config -updatehw {/home/leon/Desktop/katic_leon/v5/zynq1.xsa}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
bsp config stdin "ps7_uart_1"
bsp config stdout "ps7_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
bsp write
platform generate
platform active {znyq2}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
bsp reload
platform clean
platform active {znyq2}
platform config -updatehw {/home/leon/Desktop/katic_leon/v5/es_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
bsp config stdin "ps7_uart_1"
bsp config stdin "ps7_uart_1"
bsp config stdout "ps7_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform generate
platform active {znyq2}
bsp reload
domain active {standalone_domain}
bsp reload
bsp write
bsp write
bsp config stdout "ps7_uart_1"
bsp write
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {/home/leon/Desktop/katic_leon/v5/zynq1.xsa}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
bsp write
domain active {zynq_fsbl}
bsp write
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {znyq2}
platform config -updatehw {/home/leon/Desktop/katic_leon/v6/zynq1.xsa}
platform clean
platform generate
platform clean
bsp reload
domain active {standalone_domain}
bsp reload
bsp write
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
