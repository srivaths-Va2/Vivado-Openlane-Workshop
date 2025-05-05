# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
	
#7 segment display
set_property PACKAGE_PIN W7 	 [get_ports {seg[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]

set_property PACKAGE_PIN W6 	 [get_ports {seg[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]

set_property PACKAGE_PIN U8 	 [get_ports {seg[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]

set_property PACKAGE_PIN V8 	 [get_ports {seg[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]

set_property PACKAGE_PIN U5 	 [get_ports {seg[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]

set_property PACKAGE_PIN V5 	 [get_ports {seg[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]

set_property PACKAGE_PIN U7 	 [get_ports {seg[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

# Digits
set_property PACKAGE_PIN U2 	 [get_ports {digit[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {digit[0]}]

set_property PACKAGE_PIN U4 	 [get_ports {digit[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {digit[1]}]

set_property PACKAGE_PIN V4 	 [get_ports {digit[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {digit[2]}]

set_property PACKAGE_PIN W4 	 [get_ports {digit[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {digit[3]}]

# LED Array
set_property PACKAGE_PIN U16 	 [get_ports {LED_array[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[0]}]

set_property PACKAGE_PIN E19 	 [get_ports {LED_array[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[1]}]

set_property PACKAGE_PIN U19 	 [get_ports {LED_array[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[2]}]

set_property PACKAGE_PIN V19 	 [get_ports {LED_array[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[3]}]

set_property PACKAGE_PIN W18 	 [get_ports {LED_array[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[4]}]

set_property PACKAGE_PIN U15 	 [get_ports {LED_array[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[5]}]

set_property PACKAGE_PIN U14 	 [get_ports {LED_array[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[6]}]

set_property PACKAGE_PIN V14 	 [get_ports {LED_array[7]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[7]}]

set_property PACKAGE_PIN V13 	 [get_ports {LED_array[8]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[8]}]

set_property PACKAGE_PIN V3 	 [get_ports {LED_array[9]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[9]}]

set_property PACKAGE_PIN W3 	 [get_ports {LED_array[10]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[10]}]

set_property PACKAGE_PIN U3 	 [get_ports {LED_array[11]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[11]}]

set_property PACKAGE_PIN P3 	 [get_ports {LED_array[12]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[12]}]

set_property PACKAGE_PIN N3 	 [get_ports {LED_array[13]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[13]}]

set_property PACKAGE_PIN P1 	 [get_ports {LED_array[14]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[14]}]

set_property PACKAGE_PIN L1 	 [get_ports {LED_array[15]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {LED_array[15]}]

##Buttons
set_property PACKAGE_PIN U18 	 [get_ports rst]						
set_property IOSTANDARD LVCMOS33 [get_ports rst]