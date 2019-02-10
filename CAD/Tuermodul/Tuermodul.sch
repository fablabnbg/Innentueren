EESchema Schematic File Version 4
LIBS:Tuermodul-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_USB:FT4232H U103
U 1 1 5C413BCF
P 5750 3800
F 0 "U103" H 5750 5150 50  0000 C CNN
F 1 "FT4232H" H 5750 5000 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5750 3800 50  0001 C CNN
F 3 "" H 5750 3800 50  0001 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x16_Counter_Clockwise J101
U 1 1 5C412D5E
P 1750 3400
F 0 "J101" H 1800 4317 50  0000 C CNN
F 1 "Conn_02x16_Counter_Clockwise" H 1800 4226 50  0000 C CNN
F 2 "DIN41612_Connectors_custom:DIN41612_B_2x16_Horizontal_counter_clockwise" H 1750 3400 50  0001 C CNN
F 3 "~" H 1750 3400 50  0001 C CNN
	1    1750 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C41C30A
P 1400 2850
F 0 "#PWR0103" H 1400 2600 50  0001 C CNN
F 1 "GND" V 1405 2722 50  0000 R CNN
F 2 "" H 1400 2850 50  0001 C CNN
F 3 "" H 1400 2850 50  0001 C CNN
	1    1400 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 2800 2150 2800
Wire Wire Line
	2050 2900 2150 2900
$Comp
L power:+12V #PWR0110
U 1 1 5C41CCC9
P 2300 2600
F 0 "#PWR0110" H 2300 2450 50  0001 C CNN
F 1 "+12V" H 2315 2773 50  0000 C CNN
F 2 "" H 2300 2600 50  0001 C CNN
F 3 "" H 2300 2600 50  0001 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0105
U 1 1 5C41CCFF
P 1450 2600
F 0 "#PWR0105" H 1450 2450 50  0001 C CNN
F 1 "+12V" H 1465 2773 50  0000 C CNN
F 2 "" H 1450 2600 50  0001 C CNN
F 3 "" H 1450 2600 50  0001 C CNN
	1    1450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2700 2300 2700
Wire Wire Line
	2300 2700 2300 2600
Wire Wire Line
	1450 2700 1450 2600
Wire Wire Line
	1550 2800 1450 2800
Wire Wire Line
	1450 2800 1450 2850
Wire Wire Line
	1450 2900 1550 2900
Wire Wire Line
	1450 2850 1400 2850
Connection ~ 1450 2850
Wire Wire Line
	1450 2850 1450 2900
Wire Wire Line
	1550 2700 1450 2700
$Comp
L power:+5V #PWR0109
U 1 1 5C42278E
P 2200 3000
F 0 "#PWR0109" H 2200 2850 50  0001 C CNN
F 1 "+5V" H 2215 3173 50  0000 C CNN
F 2 "" H 2200 3000 50  0001 C CNN
F 3 "" H 2200 3000 50  0001 C CNN
	1    2200 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 2800 2150 2850
$Comp
L power:GND #PWR0108
U 1 1 5C41C2DA
P 2200 2850
F 0 "#PWR0108" H 2200 2600 50  0001 C CNN
F 1 "GND" V 2205 2722 50  0000 R CNN
F 2 "" H 2200 2850 50  0001 C CNN
F 3 "" H 2200 2850 50  0001 C CNN
	1    2200 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 2850 2200 2850
Connection ~ 2150 2850
Wire Wire Line
	2150 2850 2150 2900
$Comp
L power:+5V #PWR0104
U 1 1 5C423B74
P 1400 3000
F 0 "#PWR0104" H 1400 2850 50  0001 C CNN
F 1 "+5V" V 1415 3128 50  0000 L CNN
F 2 "" H 1400 3000 50  0001 C CNN
F 3 "" H 1400 3000 50  0001 C CNN
	1    1400 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3000 2050 3000
Wire Wire Line
	1400 3000 1550 3000
$Comp
L Memory_EEPROM:93LCxxB U101
U 1 1 5C42642B
P 1800 5100
F 0 "U101" H 1600 5350 50  0000 C CNN
F 1 "93LC46B" H 2000 4850 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1800 5100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001749K.pdf" H 1800 5100 50  0001 C CNN
	1    1800 5100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U102
U 1 1 5C426653
P 2450 6650
F 0 "U102" H 2450 7428 50  0000 C CNN
F 1 "74HC595" H 2450 7337 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 2450 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2450 6650 50  0001 C CNN
	1    2450 6650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C4267EE
P 2450 7450
F 0 "#PWR0113" H 2450 7200 50  0001 C CNN
F 1 "GND" H 2455 7277 50  0000 C CNN
F 2 "" H 2450 7450 50  0001 C CNN
F 3 "" H 2450 7450 50  0001 C CNN
	1    2450 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7350 2450 7450
Wire Wire Line
	2450 5950 2450 6050
Wire Wire Line
	2850 6250 3150 6250
Wire Wire Line
	2850 6450 3150 6450
Wire Wire Line
	2850 6750 3150 6750
Text HLabel 3150 6250 2    50   Input ~ 0
EEDATA
Text HLabel 4400 4700 0    50   Input ~ 0
EEDATA
Wire Wire Line
	4550 4700 4400 4700
Text HLabel 3150 6750 2    50   Input ~ 0
EECS
$Comp
L power:+5V #PWR0112
U 1 1 5C42A12C
P 2450 5950
F 0 "#PWR0112" H 2450 5800 50  0001 C CNN
F 1 "+5V" H 2465 6123 50  0000 C CNN
F 2 "" H 2450 5950 50  0001 C CNN
F 3 "" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5C42A160
P 3600 6450
F 0 "#PWR0116" H 3600 6300 50  0001 C CNN
F 1 "+5V" H 3615 6623 50  0000 C CNN
F 2 "" H 3600 6450 50  0001 C CNN
F 3 "" H 3600 6450 50  0001 C CNN
	1    3600 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6550 3600 6450
Wire Wire Line
	2850 6550 3600 6550
$Comp
L Device:R_Small R119
U 1 1 5C42AC87
P 3600 6700
F 0 "R119" H 3659 6746 50  0000 L CNN
F 1 "10k" H 3659 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3600 6700 50  0001 C CNN
F 3 "~" H 3600 6700 50  0001 C CNN
	1    3600 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6600 3600 6550
Connection ~ 3600 6550
Wire Wire Line
	3600 6850 3600 6800
Wire Wire Line
	2850 6850 3600 6850
Wire Wire Line
	3600 6850 3950 6850
Connection ~ 3600 6850
Text HLabel 3950 6850 2    50   Input ~ 0
~PWREN~
Text HLabel 7050 5500 2    50   Input ~ 0
~PWREN~
Text HLabel 4400 4600 0    50   Input ~ 0
EECLK
Text HLabel 3150 6450 2    50   Input ~ 0
EECLK
Text HLabel 4400 4500 0    50   Input ~ 0
EECS
Wire Wire Line
	4550 4500 4400 4500
Wire Wire Line
	4400 4600 4550 4600
$Comp
L power:GND #PWR0107
U 1 1 5C42DDBE
P 1800 5450
F 0 "#PWR0107" H 1800 5200 50  0001 C CNN
F 1 "GND" H 1805 5277 50  0000 C CNN
F 2 "" H 1800 5450 50  0001 C CNN
F 3 "" H 1800 5450 50  0001 C CNN
	1    1800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5400 1800 5450
Wire Wire Line
	1800 4500 1800 4550
Text HLabel 1150 5000 0    50   Input ~ 0
EECS
Text HLabel 2700 5000 2    50   Input ~ 0
EECLK
Text HLabel 2700 5100 2    50   Input ~ 0
EEDATA
$Comp
L Device:R_Small R115
U 1 1 5C42FA28
P 2300 4700
F 0 "R115" H 2050 4750 50  0000 L CNN
F 1 "10k" H 2100 4650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2300 4700 50  0001 C CNN
F 3 "~" H 2300 4700 50  0001 C CNN
	1    2300 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R117
U 1 1 5C42FA6E
P 2450 4700
F 0 "R117" H 2509 4746 50  0000 L CNN
F 1 "10k" H 2509 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2450 4700 50  0001 C CNN
F 3 "~" H 2450 4700 50  0001 C CNN
	1    2450 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R103
U 1 1 5C42FABF
P 1300 4700
F 0 "R103" H 1359 4746 50  0000 L CNN
F 1 "10k" H 1359 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1300 4700 50  0001 C CNN
F 3 "~" H 1300 4700 50  0001 C CNN
	1    1300 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R116
U 1 1 5C42FBFF
P 2400 5200
F 0 "R116" V 2300 5300 50  0000 C CNN
F 1 "2k" V 2300 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2400 5200 50  0001 C CNN
F 3 "~" H 2400 5200 50  0001 C CNN
	1    2400 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 4550 2300 4550
Wire Wire Line
	2300 4550 2300 4600
Connection ~ 1800 4550
Wire Wire Line
	1800 4550 1800 4800
Wire Wire Line
	2300 4550 2450 4550
Wire Wire Line
	2450 4550 2450 4600
Connection ~ 2300 4550
Wire Wire Line
	2300 4800 2300 5000
Wire Wire Line
	2300 5000 2200 5000
Wire Wire Line
	2700 5000 2300 5000
Connection ~ 2300 5000
Wire Wire Line
	2450 4800 2450 5100
Wire Wire Line
	2450 5100 2600 5100
Wire Wire Line
	2200 5100 2450 5100
Connection ~ 2450 5100
Wire Wire Line
	2200 5200 2300 5200
Wire Wire Line
	2500 5200 2600 5200
Wire Wire Line
	2600 5200 2600 5100
Connection ~ 2600 5100
Wire Wire Line
	2600 5100 2700 5100
Wire Wire Line
	1800 4550 1300 4550
Wire Wire Line
	1300 4550 1300 4600
Wire Wire Line
	1400 5000 1300 5000
Wire Wire Line
	1300 4800 1300 5000
Connection ~ 1300 5000
Wire Wire Line
	1300 5000 1150 5000
Wire Wire Line
	2050 3100 2150 3100
Wire Wire Line
	2050 3200 2150 3200
Wire Wire Line
	2050 3300 2150 3300
Wire Wire Line
	2050 3400 2150 3400
Wire Wire Line
	2050 3500 2150 3500
Wire Wire Line
	2050 3600 2150 3600
Wire Wire Line
	2050 3700 2150 3700
Wire Wire Line
	2050 3800 2150 3800
Wire Wire Line
	2050 3900 2150 3900
Wire Wire Line
	2050 4000 2150 4000
Wire Wire Line
	2050 4100 2150 4100
Wire Wire Line
	2050 4200 2150 4200
Wire Wire Line
	1550 3100 1450 3100
Wire Wire Line
	1550 3200 1450 3200
Wire Wire Line
	1450 3300 1550 3300
Wire Wire Line
	1450 3400 1550 3400
Wire Wire Line
	1450 3500 1550 3500
Wire Wire Line
	1450 3600 1550 3600
Wire Wire Line
	1450 3700 1550 3700
Wire Wire Line
	1450 3800 1550 3800
Wire Wire Line
	1450 3900 1550 3900
Wire Wire Line
	1450 4000 1550 4000
Wire Wire Line
	1450 4100 1550 4100
Wire Wire Line
	1450 4200 1550 4200
Text HLabel 2150 3100 2    50   Input ~ 0
D-
Text HLabel 2150 3200 2    50   Input ~ 0
UID
Text HLabel 2150 3300 2    50   Input ~ 0
DoorC_TX_DTE
Text HLabel 2150 3400 2    50   Input ~ 0
DoorC_RX_DTE
Text HLabel 2150 3500 2    50   Input ~ 0
DoorC_VCC
Text HLabel 2150 3600 2    50   Input ~ 0
DoorC_MK
Text HLabel 2150 3700 2    50   Input ~ 0
DoorC_Lock
Text HLabel 2150 3800 2    50   Input ~ 0
DoorD_TX_DTE
Text HLabel 2150 3900 2    50   Input ~ 0
DoorD_RX_DTE
Text HLabel 2150 4000 2    50   Input ~ 0
DoorD_VCC
Text HLabel 2150 4100 2    50   Input ~ 0
DoorD_MK
Text HLabel 2150 4200 2    50   Input ~ 0
DoorD_Lock
Text HLabel 1450 3100 0    50   Input ~ 0
D+
Text HLabel 1450 3200 0    50   Input ~ 0
Error
Text HLabel 1450 3300 0    50   Input ~ 0
DoorA_TX_DTE
Text HLabel 1450 3400 0    50   Input ~ 0
DoorA_RX_DTE
Text HLabel 1450 3500 0    50   Input ~ 0
DoorA_VCC
Text HLabel 1450 3600 0    50   Input ~ 0
DoorA_MK
Text HLabel 1450 3700 0    50   Input ~ 0
DoorA_Lock
Text HLabel 1450 3800 0    50   Input ~ 0
DoorB_TX_DTE
Text HLabel 1450 3900 0    50   Input ~ 0
DoorB_RX_DTE
Text HLabel 1450 4000 0    50   Input ~ 0
DoorB_VCC
Text HLabel 1450 4100 0    50   Input ~ 0
DoorB_MK
Text HLabel 1450 4200 0    50   Input ~ 0
DoorB_Lock
Wire Wire Line
	7100 1900 6950 1900
Wire Wire Line
	7100 2000 6950 2000
Wire Wire Line
	7100 2800 6950 2800
Wire Wire Line
	7100 2900 6950 2900
Wire Wire Line
	7100 3700 6950 3700
Wire Wire Line
	7100 3800 6950 3800
Wire Wire Line
	7100 4600 6950 4600
Wire Wire Line
	7100 4700 6950 4700
Wire Wire Line
	7100 2100 6950 2100
Text HLabel 7100 1900 2    50   Input ~ 0
DoorA_TX_DTE
Text HLabel 7100 2000 2    50   Input ~ 0
DoorA_RX_DTE
Text HLabel 7100 2100 2    50   Input ~ 0
DoorA_RTS
Wire Wire Line
	6950 3000 7100 3000
Wire Wire Line
	7100 3900 6950 3900
Wire Wire Line
	7100 4800 6950 4800
Text HLabel 7100 2800 2    50   Input ~ 0
DoorB_TX_DTE
Text HLabel 7100 2900 2    50   Input ~ 0
DoorB_RX_DTE
Text HLabel 7100 3000 2    50   Input ~ 0
DoorB_RTS
Text HLabel 7100 3700 2    50   Input ~ 0
DoorC_TX_DTE
Text HLabel 7100 3800 2    50   Input ~ 0
DoorC_RX_DTE
Text HLabel 7100 3900 2    50   Input ~ 0
DoorC_RTS
Text HLabel 7100 4600 2    50   Input ~ 0
DoorD_TX_DTE
Text HLabel 7100 4700 2    50   Input ~ 0
DoorD_RX_DTE
Text HLabel 7100 4800 2    50   Input ~ 0
DoorD_RTS
Wire Wire Line
	7050 5500 6950 5500
Wire Wire Line
	4550 5600 4450 5600
Wire Wire Line
	4450 5600 4450 5950
Wire Wire Line
	4450 5950 5150 5950
Wire Wire Line
	6050 5950 6050 5900
Wire Wire Line
	5950 5900 5950 5950
Connection ~ 5950 5950
Wire Wire Line
	5950 5950 6050 5950
Wire Wire Line
	5850 5900 5850 5950
Connection ~ 5850 5950
Wire Wire Line
	5850 5950 5950 5950
Wire Wire Line
	5750 5900 5750 5950
Connection ~ 5750 5950
Wire Wire Line
	5750 5950 5850 5950
Wire Wire Line
	5650 5900 5650 5950
Connection ~ 5650 5950
Wire Wire Line
	5650 5950 5750 5950
Wire Wire Line
	5550 5900 5550 5950
Connection ~ 5550 5950
Wire Wire Line
	5550 5950 5650 5950
Wire Wire Line
	5450 5900 5450 5950
Connection ~ 5450 5950
Wire Wire Line
	5450 5950 5550 5950
Wire Wire Line
	5350 5900 5350 5950
Connection ~ 5350 5950
Wire Wire Line
	5350 5950 5450 5950
Wire Wire Line
	5150 5900 5150 5950
Connection ~ 5150 5950
Wire Wire Line
	5150 5950 5350 5950
$Comp
L power:GND #PWR0117
U 1 1 5C58B3E4
P 5550 6050
F 0 "#PWR0117" H 5550 5800 50  0001 C CNN
F 1 "GND" H 5555 5877 50  0000 C CNN
F 2 "" H 5550 6050 50  0001 C CNN
F 3 "" H 5550 6050 50  0001 C CNN
	1    5550 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5950 5550 6050
Text HLabel 8350 2500 0    50   Input ~ 0
DoorA_RTS
Text HLabel 8350 2650 0    50   Input ~ 0
DoorB_RTS
Text HLabel 8350 2800 0    50   Input ~ 0
DoorC_RTS
Text HLabel 8350 2950 0    50   Input ~ 0
DoorD_RTS
$Sheet
S 8500 1800 1450 3950
U 5C5BDAF5
F0 "Peripherie" 50
F1 "Peripherie.sch" 50
F2 "DoorA_Lock" O R 9950 1900 50 
F3 "DoorC_Lock" O R 9950 2200 50 
F4 "DoorD_Lock" O R 9950 2350 50 
F5 "DoorA_In" I L 8500 2500 50 
F6 "DoorB_In" I L 8500 2650 50 
F7 "DoorC_In" I L 8500 2800 50 
F8 "DoorD_In" I L 8500 2950 50 
F9 "DoorB_Lock" O R 9950 2050 50 
F10 "12V" I L 8500 3250 50 
F11 "GND" I L 8500 3400 50 
F12 "DoorA_12V" I R 9950 2600 50 
F13 "DoorB_12V" I R 9950 2750 50 
F14 "DoorC_12V" I R 9950 2900 50 
F15 "DoorD_12V" I R 9950 3050 50 
F16 "DoorA_VCC" I L 8500 1900 50 
F17 "DoorB_VCC" I L 8500 2050 50 
F18 "DoorC_VCC" I L 8500 2200 50 
F19 "DoorD_VCC" I L 8500 2350 50 
F20 "UID" I R 9950 3200 50 
F21 "Fuse_Error" O R 9950 3350 50 
F22 "5V" I L 8500 3550 50 
F23 "DA_Tx" I R 9950 3500 50 
F24 "DA_Rx" I R 9950 3650 50 
F25 "DB_Tx" I R 9950 3800 50 
F26 "DB_Rx" I R 9950 3950 50 
F27 "DC_Tx" I R 9950 4100 50 
F28 "DC_Rx" I R 9950 4250 50 
F29 "DD_Tx" I R 9950 4400 50 
F30 "DD_Rx" I R 9950 4550 50 
F31 "DoorA_MK" I R 9950 4700 50 
F32 "DoorB_MK" I R 9950 4850 50 
F33 "DoorC_MK" I R 9950 5000 50 
F34 "DoorD_MK" I R 9950 5150 50 
F35 "DoorA_Auto" I R 9950 5300 50 
F36 "DoorB_Auto" I R 9950 5400 50 
F37 "DoorC_Auto" I R 9950 5500 50 
F38 "DoorD_Auto" I R 9950 5600 50 
F39 "3V3" I L 8500 3750 50 
$EndSheet
Wire Wire Line
	8500 2500 8350 2500
Wire Wire Line
	8500 2650 8350 2650
Wire Wire Line
	8350 2800 8500 2800
Wire Wire Line
	8500 2950 8350 2950
$Comp
L power:+12V #PWR0133
U 1 1 5C6544D7
P 8200 3250
F 0 "#PWR0133" H 8200 3100 50  0001 C CNN
F 1 "+12V" H 8250 3400 50  0000 C CNN
F 2 "" H 8200 3250 50  0001 C CNN
F 3 "" H 8200 3250 50  0001 C CNN
	1    8200 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5C6546F2
P 8200 3400
F 0 "#PWR0134" H 8200 3150 50  0001 C CNN
F 1 "GND" H 8200 3250 50  0000 C CNN
F 2 "" H 8200 3400 50  0001 C CNN
F 3 "" H 8200 3400 50  0001 C CNN
	1    8200 3400
	0    1    1    0   
$EndComp
Text HLabel 10300 1900 2    50   Input ~ 0
DoorA_Lock
Text HLabel 10300 2050 2    50   Input ~ 0
DoorB_Lock
Text HLabel 10300 2200 2    50   Input ~ 0
DoorC_Lock
Text HLabel 10300 2350 2    50   Input ~ 0
DoorD_Lock
$Comp
L Device:Crystal_Small Y101
U 1 1 5C73FABC
P 4200 5200
F 0 "Y101" V 4100 5100 50  0000 C CNN
F 1 "12MHz" V 4100 5350 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 4200 5200 50  0001 C CNN
F 3 "~" H 4200 5200 50  0001 C CNN
	1    4200 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 5000 4200 5000
Wire Wire Line
	4200 5000 4200 5100
Wire Wire Line
	4200 5300 4200 5400
Wire Wire Line
	4200 5400 4550 5400
$Comp
L Device:C_Small C104
U 1 1 5C75CE3A
P 3850 5000
F 0 "C104" V 3750 5000 50  0000 C CNN
F 1 "27p" V 3950 5000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3850 5000 50  0001 C CNN
F 3 "~" H 3850 5000 50  0001 C CNN
	1    3850 5000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C105
U 1 1 5C75D14D
P 3850 5400
F 0 "C105" V 3750 5400 50  0000 C CNN
F 1 "27p" V 3950 5400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3850 5400 50  0001 C CNN
F 3 "~" H 3850 5400 50  0001 C CNN
	1    3850 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 5000 4200 5000
Connection ~ 4200 5000
Wire Wire Line
	4200 5400 3950 5400
Connection ~ 4200 5400
Wire Wire Line
	3750 5000 3650 5000
Wire Wire Line
	3650 5000 3650 5400
Wire Wire Line
	3650 5400 3750 5400
$Comp
L power:GND #PWR0122
U 1 1 5C7E1E42
P 3650 5500
F 0 "#PWR0122" H 3650 5250 50  0001 C CNN
F 1 "GND" H 3655 5327 50  0000 C CNN
F 2 "" H 3650 5500 50  0001 C CNN
F 3 "" H 3650 5500 50  0001 C CNN
	1    3650 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5500 3650 5400
Connection ~ 3650 5400
$Comp
L power:GND #PWR0118
U 1 1 5C82CDEA
P 3000 1350
F 0 "#PWR0118" H 3000 1100 50  0001 C CNN
F 1 "GND" V 3005 1222 50  0000 R CNN
F 2 "" H 3000 1350 50  0001 C CNN
F 3 "" H 3000 1350 50  0001 C CNN
	1    3000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5C82CFA2
P 2550 650
F 0 "#PWR0114" H 2550 500 50  0001 C CNN
F 1 "+5V" H 2450 750 50  0000 C CNN
F 2 "" H 2550 650 50  0001 C CNN
F 3 "" H 2550 650 50  0001 C CNN
	1    2550 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 650  2550 800 
Connection ~ 2550 800 
$Comp
L Device:CP_Small C101
U 1 1 5C867A27
P 2350 1000
F 0 "C101" H 2438 1046 50  0000 L CNN
F 1 "1u" H 2438 955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2350 1000 50  0001 C CNN
F 3 "~" H 2350 1000 50  0001 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C102
U 1 1 5C867AA5
P 3400 1000
F 0 "C102" H 3450 1100 50  0000 L CNN
F 1 "1u" H 3488 955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3400 1000 50  0001 C CNN
F 3 "~" H 3400 1000 50  0001 C CNN
	1    3400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 800  2350 800 
Wire Wire Line
	2350 800  2350 900 
Wire Wire Line
	3400 800  3400 900 
$Comp
L power:GND #PWR0120
U 1 1 5C87BEFF
P 3400 1350
F 0 "#PWR0120" H 3400 1100 50  0001 C CNN
F 1 "GND" V 3405 1222 50  0000 R CNN
F 2 "" H 3400 1350 50  0001 C CNN
F 3 "" H 3400 1350 50  0001 C CNN
	1    3400 1350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C87BF52
P 2350 1350
F 0 "#PWR0106" H 2350 1100 50  0001 C CNN
F 1 "GND" V 2355 1222 50  0000 R CNN
F 2 "" H 2350 1350 50  0001 C CNN
F 3 "" H 2350 1350 50  0001 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1100 2350 1350
Wire Wire Line
	3400 1100 3400 1350
$Comp
L power:+3.3V #PWR0101
U 1 1 5C89AF99
P 1800 4500
F 0 "#PWR0101" H 1800 4350 50  0001 C CNN
F 1 "+3.3V" H 1815 4673 50  0000 C CNN
F 2 "" H 1800 4500 50  0001 C CNN
F 3 "" H 1800 4500 50  0001 C CNN
	1    1800 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 5C89AFF3
P 3400 650
F 0 "#PWR0119" H 3400 500 50  0001 C CNN
F 1 "+3.3V" H 3550 750 50  0000 C CNN
F 2 "" H 3400 650 50  0001 C CNN
F 3 "" H 3400 650 50  0001 C CNN
	1    3400 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 650  3400 800 
Connection ~ 3400 800 
$Comp
L power:+3.3V #PWR0135
U 1 1 5C8B0289
P 8350 700
F 0 "#PWR0135" H 8350 550 50  0001 C CNN
F 1 "+3.3V" H 8365 873 50  0000 C CNN
F 2 "" H 8350 700 50  0001 C CNN
F 3 "" H 8350 700 50  0001 C CNN
	1    8350 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0136
U 1 1 5C8B065A
P 10000 700
F 0 "#PWR0136" H 10000 550 50  0001 C CNN
F 1 "+1V8" H 10015 873 50  0000 C CNN
F 2 "" H 10000 700 50  0001 C CNN
F 3 "" H 10000 700 50  0001 C CNN
	1    10000 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C107
U 1 1 5C8B1388
P 4650 900
F 0 "C107" H 4700 1000 50  0000 L CNN
F 1 "4u7" H 4700 800 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4650 900 50  0001 C CNN
F 3 "~" H 4650 900 50  0001 C CNN
	1    4650 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C109
U 1 1 5C8B13FA
P 5850 900
F 0 "C109" H 5900 1000 50  0000 L CNN
F 1 "4u7" H 5900 800 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5850 900 50  0001 C CNN
F 3 "~" H 5850 900 50  0001 C CNN
	1    5850 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C108
U 1 1 5C8B1774
P 4950 900
F 0 "C108" H 5000 1000 50  0000 L CNN
F 1 "100n" H 5000 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4950 900 50  0001 C CNN
F 3 "~" H 4950 900 50  0001 C CNN
	1    4950 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C110
U 1 1 5C8C654D
P 6150 900
F 0 "C110" H 6250 1000 50  0000 L CNN
F 1 "100n" H 6250 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6150 900 50  0001 C CNN
F 3 "~" H 6150 900 50  0001 C CNN
	1    6150 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite_Small L101
U 1 1 5C8C693C
P 4400 700
F 0 "L101" V 4300 700 50  0000 C CNN
F 1 "600R/0.5A" V 4500 700 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 700 50  0001 C CNN
F 3 "~" H 4400 700 50  0001 C CNN
	1    4400 700 
	0    1    1    0   
$EndComp
$Comp
L Device:L_Core_Ferrite_Small L102
U 1 1 5C8F00AC
P 5650 700
F 0 "L102" V 5550 700 50  0000 C CNN
F 1 "600R/0.5A" V 5750 650 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5650 700 50  0001 C CNN
F 3 "~" H 5650 700 50  0001 C CNN
	1    5650 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 700  5850 700 
Wire Wire Line
	5850 700  5850 800 
Wire Wire Line
	6150 700  6150 800 
Wire Wire Line
	5850 700  6150 700 
Connection ~ 5850 700 
Wire Wire Line
	4950 800  4950 700 
Wire Wire Line
	4950 700  4650 700 
Wire Wire Line
	4650 700  4650 800 
Connection ~ 4650 700 
Wire Wire Line
	4650 700  4500 700 
$Comp
L power:+3.3V #PWR0125
U 1 1 5C925F07
P 4150 650
F 0 "#PWR0125" H 4150 500 50  0001 C CNN
F 1 "+3.3V" H 4000 750 50  0000 C CNN
F 2 "" H 4150 650 50  0001 C CNN
F 3 "" H 4150 650 50  0001 C CNN
	1    4150 650 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0130
U 1 1 5C925F66
P 5400 650
F 0 "#PWR0130" H 5400 500 50  0001 C CNN
F 1 "+3.3V" H 5250 750 50  0000 C CNN
F 2 "" H 5400 650 50  0001 C CNN
F 3 "" H 5400 650 50  0001 C CNN
	1    5400 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 700  5400 650 
Wire Wire Line
	5400 700  5550 700 
Wire Wire Line
	4300 700  4150 700 
Wire Wire Line
	4150 700  4150 650 
Wire Wire Line
	4950 700  5250 700 
Wire Wire Line
	5250 700  5250 1600
Connection ~ 4950 700 
Wire Wire Line
	6150 700  6600 700 
Wire Wire Line
	6600 700  6600 1200
Wire Wire Line
	6600 1200 5350 1200
Wire Wire Line
	5350 1200 5350 1600
Connection ~ 6150 700 
$Comp
L power:GND #PWR0131
U 1 1 5C95F644
P 5850 1050
F 0 "#PWR0131" H 5850 800 50  0001 C CNN
F 1 "GND" V 5855 922 50  0000 R CNN
F 2 "" H 5850 1050 50  0001 C CNN
F 3 "" H 5850 1050 50  0001 C CNN
	1    5850 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5C95F7A0
P 6150 1050
F 0 "#PWR0132" H 6150 800 50  0001 C CNN
F 1 "GND" V 6155 922 50  0000 R CNN
F 2 "" H 6150 1050 50  0001 C CNN
F 3 "" H 6150 1050 50  0001 C CNN
	1    6150 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5C95F7FF
P 4950 1050
F 0 "#PWR0129" H 4950 800 50  0001 C CNN
F 1 "GND" V 4955 922 50  0000 R CNN
F 2 "" H 4950 1050 50  0001 C CNN
F 3 "" H 4950 1050 50  0001 C CNN
	1    4950 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5C95F85E
P 4650 1050
F 0 "#PWR0128" H 4650 800 50  0001 C CNN
F 1 "GND" V 4655 922 50  0000 R CNN
F 2 "" H 4650 1050 50  0001 C CNN
F 3 "" H 4650 1050 50  0001 C CNN
	1    4650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1000 4650 1050
Wire Wire Line
	4950 1000 4950 1050
Wire Wire Line
	6150 1000 6150 1050
Wire Wire Line
	5850 1000 5850 1050
$Comp
L Device:C_Small C106
U 1 1 5C99C166
P 4300 2300
F 0 "C106" H 4392 2346 50  0000 L CNN
F 1 "3u3" H 4392 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4300 2300 50  0001 C CNN
F 3 "~" H 4300 2300 50  0001 C CNN
	1    4300 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5C9C095B
P 4300 2500
F 0 "#PWR0126" H 4300 2250 50  0001 C CNN
F 1 "GND" V 4305 2372 50  0000 R CNN
F 2 "" H 4300 2500 50  0001 C CNN
F 3 "" H 4300 2500 50  0001 C CNN
	1    4300 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 2100 4300 2100
Wire Wire Line
	4300 2100 4300 2200
Wire Wire Line
	4300 2500 4300 2400
$Comp
L power:+3.3V #PWR0127
U 1 1 5C9D9666
P 4500 1800
F 0 "#PWR0127" H 4500 1650 50  0001 C CNN
F 1 "+3.3V" H 4515 1973 50  0000 C CNN
F 2 "" H 4500 1800 50  0001 C CNN
F 3 "" H 4500 1800 50  0001 C CNN
	1    4500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1900 4500 1900
Wire Wire Line
	4500 1900 4500 1800
Wire Wire Line
	5550 1600 5550 1550
Wire Wire Line
	5550 1550 5650 1550
Wire Wire Line
	5750 1550 5750 1600
Wire Wire Line
	5650 1600 5650 1550
Connection ~ 5650 1550
Wire Wire Line
	5650 1550 5750 1550
Wire Wire Line
	5950 1600 5950 1550
Wire Wire Line
	5950 1550 6050 1550
Wire Wire Line
	6250 1550 6250 1600
Wire Wire Line
	6150 1600 6150 1550
Connection ~ 6150 1550
Wire Wire Line
	6150 1550 6250 1550
Wire Wire Line
	6050 1600 6050 1550
Connection ~ 6050 1550
Wire Wire Line
	6050 1550 6150 1550
Wire Wire Line
	4300 2100 4300 1450
Wire Wire Line
	4300 1450 5650 1450
Wire Wire Line
	5650 1450 5650 1550
Connection ~ 4300 2100
$Comp
L Device:C_Small C103
U 1 1 5CA36571
P 3700 1000
F 0 "C103" H 3750 1100 50  0000 L CNN
F 1 "100n" H 3792 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 1000 50  0001 C CNN
F 3 "~" H 3700 1000 50  0001 C CNN
	1    3700 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5CA366CB
P 3700 1350
F 0 "#PWR0123" H 3700 1100 50  0001 C CNN
F 1 "GND" V 3705 1222 50  0000 R CNN
F 2 "" H 3700 1350 50  0001 C CNN
F 3 "" H 3700 1350 50  0001 C CNN
	1    3700 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 800  3700 800 
Wire Wire Line
	3700 800  3700 900 
Wire Wire Line
	3700 1100 3700 1350
$Comp
L Device:R_Small R102
U 1 1 5CA70030
P 4250 3200
F 0 "R102" V 4350 3100 50  0000 L CNN
F 1 "12k" V 4150 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4250 3200 50  0001 C CNN
F 3 "~" H 4250 3200 50  0001 C CNN
	1    4250 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R101
U 1 1 5CA8CD07
P 3900 3400
F 0 "R101" V 4000 3300 50  0000 L CNN
F 1 "1k" V 3800 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3900 3400 50  0001 C CNN
F 3 "~" H 3900 3400 50  0001 C CNN
	1    3900 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 3200 4350 3200
Wire Wire Line
	4550 3400 4000 3400
$Comp
L power:+3.3V #PWR0121
U 1 1 5CAA9F47
P 3600 3200
F 0 "#PWR0121" H 3600 3050 50  0001 C CNN
F 1 "+3.3V" H 3615 3373 50  0000 C CNN
F 2 "" H 3600 3200 50  0001 C CNN
F 3 "" H 3600 3200 50  0001 C CNN
	1    3600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5CAB8D2D
P 4100 3250
F 0 "#PWR0124" H 4100 3000 50  0001 C CNN
F 1 "GND" V 4105 3122 50  0000 R CNN
F 2 "" H 4100 3250 50  0001 C CNN
F 3 "" H 4100 3250 50  0001 C CNN
	1    4100 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 3200 4100 3200
Wire Wire Line
	4100 3200 4100 3250
Wire Wire Line
	3800 3400 3600 3400
Wire Wire Line
	3600 3400 3600 3200
Text HLabel 4500 3000 0    50   Input ~ 0
D+
Text HLabel 4500 2900 0    50   Input ~ 0
D-
Wire Wire Line
	4550 2900 4500 2900
Wire Wire Line
	4550 3000 4500 3000
$Comp
L Device:C_Small C111
U 1 1 5CAF6577
P 8350 900
F 0 "C111" H 8442 946 50  0000 L CNN
F 1 "100n" H 8442 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8350 900 50  0001 C CNN
F 3 "~" H 8350 900 50  0001 C CNN
	1    8350 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C112
U 1 1 5CAF689A
P 8700 900
F 0 "C112" H 8792 946 50  0000 L CNN
F 1 "100n" H 8792 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8700 900 50  0001 C CNN
F 3 "~" H 8700 900 50  0001 C CNN
	1    8700 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C113
U 1 1 5CAF6914
P 9050 900
F 0 "C113" H 9142 946 50  0000 L CNN
F 1 "100n" H 9142 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9050 900 50  0001 C CNN
F 3 "~" H 9050 900 50  0001 C CNN
	1    9050 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C114
U 1 1 5CAF6990
P 9400 900
F 0 "C114" H 9492 946 50  0000 L CNN
F 1 "100n" H 9492 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9400 900 50  0001 C CNN
F 3 "~" H 9400 900 50  0001 C CNN
	1    9400 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C115
U 1 1 5CAF6ADA
P 10000 900
F 0 "C115" H 10092 946 50  0000 L CNN
F 1 "100n" H 10092 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10000 900 50  0001 C CNN
F 3 "~" H 10000 900 50  0001 C CNN
	1    10000 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C116
U 1 1 5CAF6B68
P 10350 900
F 0 "C116" H 10442 946 50  0000 L CNN
F 1 "100n" H 10442 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10350 900 50  0001 C CNN
F 3 "~" H 10350 900 50  0001 C CNN
	1    10350 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C117
U 1 1 5CAF6BEE
P 10700 900
F 0 "C117" H 10792 946 50  0000 L CNN
F 1 "100n" H 10792 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10700 900 50  0001 C CNN
F 3 "~" H 10700 900 50  0001 C CNN
	1    10700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 700  10000 750 
Wire Wire Line
	10000 750  10350 750 
Wire Wire Line
	10350 750  10350 800 
Connection ~ 10000 750 
Wire Wire Line
	10000 750  10000 800 
Wire Wire Line
	10350 750  10700 750 
Wire Wire Line
	10700 750  10700 800 
Connection ~ 10350 750 
Wire Wire Line
	8350 700  8350 750 
Wire Wire Line
	8350 750  8700 750 
Wire Wire Line
	9400 750  9400 800 
Connection ~ 8350 750 
Wire Wire Line
	8350 750  8350 800 
Wire Wire Line
	9050 800  9050 750 
Connection ~ 9050 750 
Wire Wire Line
	9050 750  9400 750 
Wire Wire Line
	8700 800  8700 750 
Connection ~ 8700 750 
Wire Wire Line
	8700 750  9050 750 
Wire Wire Line
	8350 1000 8350 1050
Wire Wire Line
	8350 1050 8700 1050
Wire Wire Line
	9400 1050 9400 1000
Wire Wire Line
	9050 1000 9050 1050
Connection ~ 9050 1050
Wire Wire Line
	9050 1050 9400 1050
Wire Wire Line
	8700 1000 8700 1050
Connection ~ 8700 1050
Wire Wire Line
	8700 1050 9050 1050
Wire Wire Line
	10700 1000 10700 1050
Wire Wire Line
	10700 1050 10350 1050
Connection ~ 9400 1050
Wire Wire Line
	10000 1000 10000 1050
Connection ~ 10000 1050
Wire Wire Line
	10000 1050 9400 1050
Wire Wire Line
	10350 1000 10350 1050
Connection ~ 10350 1050
Wire Wire Line
	10350 1050 10000 1050
$Comp
L power:GND #PWR0137
U 1 1 5CBCED51
P 10700 1100
F 0 "#PWR0137" H 10700 850 50  0001 C CNN
F 1 "GND" H 10705 927 50  0000 C CNN
F 2 "" H 10700 1100 50  0001 C CNN
F 3 "" H 10700 1100 50  0001 C CNN
	1    10700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1050 10700 1100
Connection ~ 10700 1050
$Comp
L Regulator_Linear:MCP1825S U104
U 1 1 5CBF3AE6
P 3000 800
F 0 "U104" H 3000 1042 50  0000 C CNN
F 1 "MCP1825S" H 3000 951 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2900 950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/22056b.pdf" H 3000 1050 50  0001 C CNN
	1    3000 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 800  3400 800 
Wire Wire Line
	3000 1100 3000 1350
Wire Wire Line
	2550 800  2700 800 
Wire Wire Line
	8400 1900 8500 1900
Wire Wire Line
	8400 2050 8500 2050
Wire Wire Line
	8400 2200 8500 2200
Wire Wire Line
	8400 2350 8500 2350
Text HLabel 8400 1900 0    50   Input ~ 0
DoorA_VCC
Text HLabel 8400 2050 0    50   Input ~ 0
DoorB_VCC
Text HLabel 8400 2200 0    50   Input ~ 0
DoorC_VCC
Text HLabel 8400 2350 0    50   Input ~ 0
DoorD_VCC
Text HLabel 10400 3350 2    50   Input ~ 0
Error
Text HLabel 10400 3200 2    50   Input ~ 0
UID
Wire Wire Line
	8200 3400 8500 3400
Wire Wire Line
	8200 3250 8500 3250
$Comp
L power:+5V #PWR0115
U 1 1 5C76050F
P 8200 3550
F 0 "#PWR0115" H 8200 3400 50  0001 C CNN
F 1 "+5V" H 8150 3700 50  0000 C CNN
F 2 "" H 8200 3550 50  0001 C CNN
F 3 "" H 8200 3550 50  0001 C CNN
	1    8200 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 3550 8200 3550
Wire Wire Line
	9950 1900 10300 1900
Wire Wire Line
	9950 2050 10300 2050
Wire Wire Line
	9950 2200 10300 2200
Wire Wire Line
	9950 2350 10300 2350
Wire Wire Line
	9950 3200 10400 3200
Wire Wire Line
	9950 3350 10400 3350
Text HLabel 10100 3500 2    50   Input ~ 0
DA_Tx
Text HLabel 10100 3650 2    50   Input ~ 0
DA_Rx
Text HLabel 10100 3800 2    50   Input ~ 0
DB_Tx
Text HLabel 10100 3950 2    50   Input ~ 0
DB_Rx
Text HLabel 10100 4100 2    50   Input ~ 0
DC_Tx
Text HLabel 10100 4250 2    50   Input ~ 0
DC_Rx
Text HLabel 10100 4400 2    50   Input ~ 0
DD_Tx
Text HLabel 10100 4550 2    50   Input ~ 0
DD_Rx
Text HLabel 10100 4700 2    50   Input ~ 0
DoorA_MK
Text HLabel 10100 4850 2    50   Input ~ 0
DoorB_MK
Text HLabel 10100 5000 2    50   Input ~ 0
DoorC_MK
Text HLabel 10100 5150 2    50   Input ~ 0
DoorD_MK
Wire Wire Line
	9950 3500 10100 3500
Wire Wire Line
	10100 3650 9950 3650
Wire Wire Line
	9950 3800 10100 3800
Wire Wire Line
	10100 3950 9950 3950
Wire Wire Line
	9950 4100 10100 4100
Wire Wire Line
	10100 4250 9950 4250
Wire Wire Line
	9950 4400 10100 4400
Wire Wire Line
	10100 4550 9950 4550
Wire Wire Line
	9950 5150 10100 5150
Wire Wire Line
	10100 5000 9950 5000
Wire Wire Line
	9950 4850 10100 4850
Wire Wire Line
	10100 4700 9950 4700
Text HLabel 1850 6250 0    50   Input ~ 0
DA_Tx
Text HLabel 1850 6350 0    50   Input ~ 0
DA_Rx
Text HLabel 1850 6450 0    50   Input ~ 0
DB_Tx
Text HLabel 1850 6550 0    50   Input ~ 0
DB_Rx
Text HLabel 1850 6650 0    50   Input ~ 0
DC_Tx
Text HLabel 1850 6750 0    50   Input ~ 0
DC_Rx
Text HLabel 1850 6850 0    50   Input ~ 0
DD_Tx
Text HLabel 1850 6950 0    50   Input ~ 0
DD_Rx
Wire Wire Line
	1850 6250 2050 6250
Wire Wire Line
	2050 6350 1850 6350
Wire Wire Line
	1850 6450 2050 6450
Wire Wire Line
	2050 6550 1850 6550
Wire Wire Line
	1850 6650 2050 6650
Wire Wire Line
	2050 6750 1850 6750
Wire Wire Line
	1850 6850 2050 6850
Wire Wire Line
	2050 6950 1850 6950
$Sheet
S 5350 6350 900  1300
U 5C54653F
F0 "Front" 50
F1 "Front.sch" 50
$EndSheet
$Comp
L power:+3.3V #PWR0102
U 1 1 5C624F88
P 8150 3750
F 0 "#PWR0102" H 8150 3600 50  0001 C CNN
F 1 "+3.3V" H 8000 3850 50  0000 C CNN
F 2 "" H 8150 3750 50  0001 C CNN
F 3 "" H 8150 3750 50  0001 C CNN
	1    8150 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 3750 8150 3750
Text HLabel 800  1450 3    50   Input ~ 0
DoorA_MK
Text HLabel 900  1450 3    50   Input ~ 0
DoorB_MK
Text HLabel 1000 1450 3    50   Input ~ 0
DoorC_MK
Text HLabel 1100 1450 3    50   Input ~ 0
DoorD_MK
$Comp
L Device:R_Network04 RN101
U 1 1 5C769116
P 1000 1000
F 0 "RN101" H 1180 1046 50  0000 L CNN
F 1 "2k7" H 1180 955 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP5" V 1275 1000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1000 1000 50  0001 C CNN
	1    1000 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5C769345
P 800 650
F 0 "#PWR0111" H 800 500 50  0001 C CNN
F 1 "+5V" H 700 750 50  0000 C CNN
F 2 "" H 800 650 50  0001 C CNN
F 3 "" H 800 650 50  0001 C CNN
	1    800  650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  650  800  800 
Wire Wire Line
	800  1200 800  1450
Wire Wire Line
	900  1200 900  1450
Wire Wire Line
	1000 1200 1000 1450
Wire Wire Line
	1100 1200 1100 1450
Text Notes 850  850  0    50   ~ 0
Pull-up + Vorwiderstand LED
Wire Wire Line
	7100 2200 6950 2200
Wire Wire Line
	7100 3100 6950 3100
Wire Wire Line
	7100 4000 6950 4000
Wire Wire Line
	7100 4900 6950 4900
Text HLabel 7100 2200 2    50   Input ~ 0
DoorA_MK
Text HLabel 7100 3100 2    50   Input ~ 0
DoorB_MK
Text HLabel 7100 4000 2    50   Input ~ 0
DoorC_MK
Text HLabel 7100 4900 2    50   Input ~ 0
DoorD_MK
$Comp
L power:+3.3V #PWR?
U 1 1 5C607DE2
P 6250 1500
F 0 "#PWR?" H 6250 1350 50  0001 C CNN
F 1 "+3.3V" H 6100 1600 50  0000 C CNN
F 2 "" H 6250 1500 50  0001 C CNN
F 3 "" H 6250 1500 50  0001 C CNN
	1    6250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1500 6250 1550
Connection ~ 6250 1550
$Comp
L power:+1V8 #PWR?
U 1 1 5C618DD8
P 4300 1400
F 0 "#PWR?" H 4300 1250 50  0001 C CNN
F 1 "+1V8" H 4315 1573 50  0000 C CNN
F 2 "" H 4300 1400 50  0001 C CNN
F 3 "" H 4300 1400 50  0001 C CNN
	1    4300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1400 4300 1450
Connection ~ 4300 1450
$EndSCHEMATC
