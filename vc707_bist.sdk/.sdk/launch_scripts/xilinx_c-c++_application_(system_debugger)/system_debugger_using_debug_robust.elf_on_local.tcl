connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
loadhw C:/Users/umram-bt/Documents/rdf0195-vc707-bist-c-2015-1/vc707_bist/vc707_bist.sdk/system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
dow C:/Users/umram-bt/Documents/rdf0195-vc707-bist-c-2015-1/vc707_bist/vc707_bist.sdk/robust/Debug/robust.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
con
