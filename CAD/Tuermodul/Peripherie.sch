EESchema Schematic File Version 4
LIBS:Tuermodul-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Device:Q_PMOS_GDS Q?
U 1 1 5C5EA225
P 4150 1500
AR Path="/5C5EA225" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5EA225" Ref="Q209"  Part="1" 
F 0 "Q209" H 4356 1546 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 4356 1455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4350 1600 50  0001 C CNN
F 3 "~" H 4150 1500 50  0001 C CNN
	1    4150 1500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C5EA22E
P 4250 2450
AR Path="/5C5EA22E" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5EA22E" Ref="#PWR0209"  Part="1" 
F 0 "#PWR0209" H 4250 2200 50  0001 C CNN
F 1 "GND" H 4255 2277 50  0000 C CNN
F 2 "" H 4250 2450 50  0001 C CNN
F 3 "" H 4250 2450 50  0001 C CNN
	1    4250 2450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 5C5EA234
P 4250 2250
AR Path="/5C5EA234" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C5EA234" Ref="D201"  Part="1" 
F 0 "D201" V 4204 2329 50  0000 L CNN
F 1 "1N4007" V 4295 2329 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4250 2075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4250 2250 50  0001 C CNN
	1    4250 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2450 4250 2400
$Comp
L power:+12V #PWR?
U 1 1 5C5EA23D
P 3300 1150
AR Path="/5C5EA23D" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5EA23D" Ref="#PWR0207"  Part="1" 
F 0 "#PWR0207" H 3300 1000 50  0001 C CNN
F 1 "+12V" H 3315 1323 50  0000 C CNN
F 2 "" H 3300 1150 50  0001 C CNN
F 3 "" H 3300 1150 50  0001 C CNN
	1    3300 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 5C5EA24A
P 4150 3350
AR Path="/5C5EA24A" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5EA24A" Ref="Q210"  Part="1" 
F 0 "Q210" H 4356 3396 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 4356 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4350 3450 50  0001 C CNN
F 3 "~" H 4150 3350 50  0001 C CNN
	1    4150 3350
	1    0    0    1   
$EndComp
Wire Wire Line
	4250 3150 4250 3050
Text HLabel 4250 1200 2    50   Input ~ 0
DoorA_12V
Text HLabel 4250 3050 2    50   Input ~ 0
DoorB_12V
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5C5EA25B
P 3200 1750
AR Path="/5C5EA25B" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5EA25B" Ref="Q207"  Part="1" 
F 0 "Q207" H 3391 1796 50  0000 L CNN
F 1 "Q_NPN_CBE" H 3391 1705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 3400 1850 50  0001 C CNN
F 3 "~" H 3200 1750 50  0001 C CNN
	1    3200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C5EA270
P 3300 1350
AR Path="/5C5EA270" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5EA270" Ref="R211"  Part="1" 
F 0 "R211" V 3400 1350 50  0000 C CNN
F 1 "100k" V 3200 1350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3300 1350 50  0001 C CNN
F 3 "~" H 3300 1350 50  0001 C CNN
	1    3300 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 1550 3300 1500
Wire Wire Line
	3300 2450 3300 1950
Wire Wire Line
	3300 1500 3950 1500
Connection ~ 3300 1500
Wire Wire Line
	3300 1500 3300 1450
$Comp
L power:GND #PWR?
U 1 1 5C5F7C3C
P 4250 4250
AR Path="/5C5F7C3C" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5F7C3C" Ref="#PWR0210"  Part="1" 
F 0 "#PWR0210" H 4250 4000 50  0001 C CNN
F 1 "GND" H 4255 4077 50  0000 C CNN
F 2 "" H 4250 4250 50  0001 C CNN
F 3 "" H 4250 4250 50  0001 C CNN
	1    4250 4250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 5C5F7C42
P 4250 4050
AR Path="/5C5F7C42" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C5F7C42" Ref="D202"  Part="1" 
F 0 "D202" V 4204 4129 50  0000 L CNN
F 1 "1N4007" V 4295 4129 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4250 3875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4250 4050 50  0001 C CNN
	1    4250 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 4250 4250 4200
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 5C5F7C4B
P 4150 4950
AR Path="/5C5F7C4B" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5F7C4B" Ref="Q211"  Part="1" 
F 0 "Q211" H 4356 4996 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 4356 4905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4350 5050 50  0001 C CNN
F 3 "~" H 4150 4950 50  0001 C CNN
	1    4150 4950
	1    0    0    1   
$EndComp
Wire Wire Line
	4250 4750 4250 4650
$Comp
L power:GND #PWR?
U 1 1 5C5F7C54
P 4250 5850
AR Path="/5C5F7C54" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5F7C54" Ref="#PWR0211"  Part="1" 
F 0 "#PWR0211" H 4250 5600 50  0001 C CNN
F 1 "GND" H 4255 5677 50  0000 C CNN
F 2 "" H 4250 5850 50  0001 C CNN
F 3 "" H 4250 5850 50  0001 C CNN
	1    4250 5850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 5C5F7C5A
P 4250 5650
AR Path="/5C5F7C5A" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C5F7C5A" Ref="D203"  Part="1" 
F 0 "D203" V 4204 5729 50  0000 L CNN
F 1 "1N4007" V 4295 5729 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4250 5475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4250 5650 50  0001 C CNN
	1    4250 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 5850 4250 5800
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 5C5F7C64
P 4150 6600
AR Path="/5C5F7C64" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5F7C64" Ref="Q212"  Part="1" 
F 0 "Q212" H 4356 6646 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 4356 6555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4350 6700 50  0001 C CNN
F 3 "~" H 4150 6600 50  0001 C CNN
	1    4150 6600
	1    0    0    1   
$EndComp
Wire Wire Line
	4250 6400 4250 6300
$Comp
L power:GND #PWR?
U 1 1 5C5F7C6D
P 4250 7500
AR Path="/5C5F7C6D" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5F7C6D" Ref="#PWR0212"  Part="1" 
F 0 "#PWR0212" H 4250 7250 50  0001 C CNN
F 1 "GND" H 4255 7327 50  0000 C CNN
F 2 "" H 4250 7500 50  0001 C CNN
F 3 "" H 4250 7500 50  0001 C CNN
	1    4250 7500
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 5C5F7C73
P 4250 7300
AR Path="/5C5F7C73" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C5F7C73" Ref="D204"  Part="1" 
F 0 "D204" V 4204 7379 50  0000 L CNN
F 1 "1N4007" V 4295 7379 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4250 7125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4250 7300 50  0001 C CNN
	1    4250 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 7500 4250 7450
Text HLabel 4250 4650 2    50   Input ~ 0
DoorC_12V
Text HLabel 4250 6300 2    50   Input ~ 0
DoorD_12V
$Comp
L power:+12V #PWR?
U 1 1 5C5F9E56
P 3300 3000
AR Path="/5C5F9E56" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5F9E56" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 3300 2850 50  0001 C CNN
F 1 "+12V" H 3315 3173 50  0000 C CNN
F 2 "" H 3300 3000 50  0001 C CNN
F 3 "" H 3300 3000 50  0001 C CNN
	1    3300 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5C5F9E69
P 3200 3600
AR Path="/5C5F9E69" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5F9E69" Ref="Q208"  Part="1" 
F 0 "Q208" H 3391 3646 50  0000 L CNN
F 1 "Q_NPN_CBE" H 3391 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 3400 3700 50  0001 C CNN
F 3 "~" H 3200 3600 50  0001 C CNN
	1    3200 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C5F9E6F
P 2750 3600
AR Path="/5C5F9E6F" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5F9E6F" Ref="R204"  Part="1" 
F 0 "R204" V 2650 3600 50  0000 C CNN
F 1 "1k" V 2850 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2750 3600 50  0001 C CNN
F 3 "~" H 2750 3600 50  0001 C CNN
	1    2750 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C5F9E7B
P 3300 3200
AR Path="/5C5F9E7B" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5F9E7B" Ref="R212"  Part="1" 
F 0 "R212" V 3400 3200 50  0000 C CNN
F 1 "100k" V 3200 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3300 3200 50  0001 C CNN
F 3 "~" H 3300 3200 50  0001 C CNN
	1    3300 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3400 3300 3350
Wire Wire Line
	3300 3350 3950 3350
Connection ~ 3300 3350
Wire Wire Line
	3300 3350 3300 3300
$Comp
L power:+12V #PWR?
U 1 1 5C5FAB91
P 3300 4600
AR Path="/5C5FAB91" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5FAB91" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 3300 4450 50  0001 C CNN
F 1 "+12V" H 3315 4773 50  0000 C CNN
F 2 "" H 3300 4600 50  0001 C CNN
F 3 "" H 3300 4600 50  0001 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C5FABAA
P 2800 5200
AR Path="/5C5FABAA" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5FABAA" Ref="R202"  Part="1" 
F 0 "R202" V 2700 5200 50  0000 C CNN
F 1 "1k" V 2900 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2800 5200 50  0001 C CNN
F 3 "~" H 2800 5200 50  0001 C CNN
	1    2800 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C5FABB6
P 3300 4800
AR Path="/5C5FABB6" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5FABB6" Ref="R210"  Part="1" 
F 0 "R210" V 3400 4800 50  0000 C CNN
F 1 "100k" V 3200 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3300 4800 50  0001 C CNN
F 3 "~" H 3300 4800 50  0001 C CNN
	1    3300 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 5000 3300 4950
Connection ~ 3300 4950
Wire Wire Line
	3300 4950 3300 4900
$Comp
L power:+12V #PWR?
U 1 1 5C5FC3E5
P 3300 6250
AR Path="/5C5FC3E5" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5FC3E5" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 3300 6100 50  0001 C CNN
F 1 "+12V" H 3315 6423 50  0000 C CNN
F 2 "" H 3300 6250 50  0001 C CNN
F 3 "" H 3300 6250 50  0001 C CNN
	1    3300 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5C5FC3F8
P 3200 6850
AR Path="/5C5FC3F8" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5FC3F8" Ref="Q205"  Part="1" 
F 0 "Q205" H 3391 6896 50  0000 L CNN
F 1 "Q_NPN_CBE" H 3391 6805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 3400 6950 50  0001 C CNN
F 3 "~" H 3200 6850 50  0001 C CNN
	1    3200 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C5FC3FE
P 2800 6850
AR Path="/5C5FC3FE" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5FC3FE" Ref="R201"  Part="1" 
F 0 "R201" V 2700 6850 50  0000 C CNN
F 1 "1k" V 2900 6850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2800 6850 50  0001 C CNN
F 3 "~" H 2800 6850 50  0001 C CNN
	1    2800 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C5FC40A
P 3300 6450
AR Path="/5C5FC40A" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5FC40A" Ref="R209"  Part="1" 
F 0 "R209" V 3400 6450 50  0000 C CNN
F 1 "100k" V 3200 6450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3300 6450 50  0001 C CNN
F 3 "~" H 3300 6450 50  0001 C CNN
	1    3300 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 6650 3300 6600
Connection ~ 3300 6600
Wire Wire Line
	3300 6600 3300 6550
Wire Wire Line
	3300 6600 3950 6600
Wire Wire Line
	3300 4950 3950 4950
Text HLabel 4350 2000 2    50   Output ~ 0
DoorA_Lock
Text HLabel 4350 3800 2    50   Output ~ 0
DoorB_Lock
Text HLabel 4350 5400 2    50   Output ~ 0
DoorC_Lock
Text HLabel 4350 7050 2    50   Output ~ 0
DoorD_Lock
Wire Wire Line
	4350 3800 4250 3800
Wire Wire Line
	4250 3800 4250 3900
Wire Wire Line
	4350 5400 4250 5400
Wire Wire Line
	4250 5400 4250 5500
Wire Wire Line
	4350 7050 4250 7050
Wire Wire Line
	4250 7050 4250 7150
Text HLabel 2550 1750 0    50   Input ~ 0
DoorA_In
Text HLabel 2500 3600 0    50   Input ~ 0
DoorB_In
Text HLabel 2550 5200 0    50   Input ~ 0
DoorC_In
Text HLabel 2550 6850 0    50   Input ~ 0
DoorD_In
Text HLabel 5300 1100 0    50   Input ~ 0
12V
$Comp
L power:GND #PWR?
U 1 1 5C61BBAB
P 950 1200
AR Path="/5C61BBAB" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C61BBAB" Ref="#PWR0213"  Part="1" 
F 0 "#PWR0213" H 950 950 50  0001 C CNN
F 1 "GND" H 955 1027 50  0000 C CNN
F 2 "" H 950 1200 50  0001 C CNN
F 3 "" H 950 1200 50  0001 C CNN
	1    950  1200
	1    0    0    -1  
$EndComp
Text HLabel 950  1000 1    50   Input ~ 0
GND
Wire Wire Line
	950  1000 950  1200
$Comp
L Device:Fuse_Small F?
U 1 1 5C814B6A
P 5750 1450
AR Path="/5C814B6A" Ref="F?"  Part="1" 
AR Path="/5C5BDAF5/5C814B6A" Ref="F201"  Part="1" 
F 0 "F201" H 5650 1500 50  0000 C CNN
F 1 "1A" H 5900 1500 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 5750 1450 50  0001 C CNN
F 3 "~" H 5750 1450 50  0001 C CNN
	1    5750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 5C814B71
P 5750 1550
AR Path="/5C814B71" Ref="F?"  Part="1" 
AR Path="/5C5BDAF5/5C814B71" Ref="F202"  Part="1" 
F 0 "F202" H 5650 1600 50  0000 C CNN
F 1 "1A" H 5900 1600 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 5750 1550 50  0001 C CNN
F 3 "~" H 5750 1550 50  0001 C CNN
	1    5750 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 5C814B78
P 5750 1650
AR Path="/5C814B78" Ref="F?"  Part="1" 
AR Path="/5C5BDAF5/5C814B78" Ref="F203"  Part="1" 
F 0 "F203" H 5650 1700 50  0000 C CNN
F 1 "1A" H 5900 1700 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 5750 1650 50  0001 C CNN
F 3 "~" H 5750 1650 50  0001 C CNN
	1    5750 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 5C814B7F
P 5750 1750
AR Path="/5C814B7F" Ref="F?"  Part="1" 
AR Path="/5C5BDAF5/5C814B7F" Ref="F204"  Part="1" 
F 0 "F204" H 5650 1800 50  0000 C CNN
F 1 "1A" H 5900 1800 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 5750 1750 50  0001 C CNN
F 3 "~" H 5750 1750 50  0001 C CNN
	1    5750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1450 5550 1450
Wire Wire Line
	5550 1450 5550 1550
Wire Wire Line
	5550 1750 5650 1750
Wire Wire Line
	5650 1650 5550 1650
Connection ~ 5550 1650
Wire Wire Line
	5550 1650 5550 1750
Wire Wire Line
	5650 1550 5550 1550
Connection ~ 5550 1550
Wire Wire Line
	5550 1550 5550 1650
$Comp
L power:+12V #PWR?
U 1 1 5C814B8F
P 5550 1050
AR Path="/5C814B8F" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C814B8F" Ref="#PWR0214"  Part="1" 
F 0 "#PWR0214" H 5550 900 50  0001 C CNN
F 1 "+12V" H 5565 1223 50  0000 C CNN
F 2 "" H 5550 1050 50  0001 C CNN
F 3 "" H 5550 1050 50  0001 C CNN
	1    5550 1050
	1    0    0    -1  
$EndComp
Connection ~ 5550 1450
Text HLabel 7250 1450 2    50   Input ~ 0
DoorA_12V
Text HLabel 7250 1550 2    50   Input ~ 0
DoorB_12V
Text HLabel 7250 1650 2    50   Input ~ 0
DoorC_12V
Text HLabel 7250 1750 2    50   Input ~ 0
DoorD_12V
Wire Wire Line
	5850 1450 6000 1450
Wire Wire Line
	5850 1550 6300 1550
$Comp
L Device:D_Small D?
U 1 1 5C814B9C
P 6000 1250
AR Path="/5C814B9C" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C814B9C" Ref="D205"  Part="1" 
F 0 "D205" V 6046 1182 50  0000 R CNN
F 1 "1N4148" V 5900 1250 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6000 1250 50  0001 C CNN
F 3 "~" V 6000 1250 50  0001 C CNN
	1    6000 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D?
U 1 1 5C814BA3
P 6300 1250
AR Path="/5C814BA3" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C814BA3" Ref="D206"  Part="1" 
F 0 "D206" V 6346 1182 50  0000 R CNN
F 1 "1N4148" V 6150 1250 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6300 1250 50  0001 C CNN
F 3 "~" V 6300 1250 50  0001 C CNN
	1    6300 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D?
U 1 1 5C814BAA
P 6600 1250
AR Path="/5C814BAA" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C814BAA" Ref="D207"  Part="1" 
F 0 "D207" V 6646 1182 50  0000 R CNN
F 1 "1N4148" V 6500 1250 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6600 1250 50  0001 C CNN
F 3 "~" V 6600 1250 50  0001 C CNN
	1    6600 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D?
U 1 1 5C814BB1
P 6900 1250
AR Path="/5C814BB1" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C814BB1" Ref="D208"  Part="1" 
F 0 "D208" V 6946 1182 50  0000 R CNN
F 1 "1N4148" V 6750 1250 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6900 1250 50  0001 C CNN
F 3 "~" V 6900 1250 50  0001 C CNN
	1    6900 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 1100 6000 1150
Wire Wire Line
	6300 1100 6300 1150
Wire Wire Line
	6600 1100 6600 1150
Wire Wire Line
	6900 1100 6900 1150
Wire Wire Line
	6900 1350 6900 1750
Connection ~ 6900 1750
Wire Wire Line
	6900 1750 7250 1750
Wire Wire Line
	6600 1350 6600 1650
Wire Wire Line
	6300 1350 6300 1550
Wire Wire Line
	6000 1350 6000 1450
Wire Wire Line
	5550 1050 5550 1100
$Comp
L Device:R_Small R?
U 1 1 5C814BC3
P 5750 1100
AR Path="/5C814BC3" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C814BC3" Ref="R213"  Part="1" 
F 0 "R213" V 5650 1100 50  0000 C CNN
F 1 "1M" V 5850 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5750 1100 50  0001 C CNN
F 3 "~" H 5750 1100 50  0001 C CNN
	1    5750 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1100 5550 1100
Connection ~ 5550 1100
Wire Wire Line
	5550 1100 5550 1450
Wire Wire Line
	5850 1100 6000 1100
Connection ~ 6000 1100
Wire Wire Line
	6600 1100 6900 1100
Connection ~ 6600 1100
Wire Wire Line
	6000 1450 7250 1450
Connection ~ 6000 1450
Wire Wire Line
	6300 1550 7250 1550
Connection ~ 6300 1550
Wire Wire Line
	6600 1650 7250 1650
Connection ~ 6600 1650
Wire Wire Line
	5850 1750 6900 1750
Wire Wire Line
	5850 1650 6600 1650
Wire Wire Line
	6000 1100 6300 1100
Connection ~ 6300 1100
Wire Wire Line
	6300 1100 6600 1100
Wire Wire Line
	6000 1850 6000 1450
Wire Wire Line
	6900 1750 6900 1850
$Comp
L power:GND #PWR?
U 1 1 5C814C06
P 6600 2450
AR Path="/5C814C06" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C814C06" Ref="#PWR0215"  Part="1" 
F 0 "#PWR0215" H 6600 2200 50  0001 C CNN
F 1 "GND" H 6600 2300 50  0000 R CNN
F 2 "" H 6600 2450 50  0001 C CNN
F 3 "" H 6600 2450 50  0001 C CNN
	1    6600 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C814C0F
P 7900 1000
AR Path="/5C814C0F" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C814C0F" Ref="#PWR0216"  Part="1" 
F 0 "#PWR0216" H 7900 850 50  0001 C CNN
F 1 "+12V" H 7915 1173 50  0000 C CNN
F 2 "" H 7900 1000 50  0001 C CNN
F 3 "" H 7900 1000 50  0001 C CNN
	1    7900 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C814C19
P 7900 1250
AR Path="/5C814C19" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C814C19" Ref="R218"  Part="1" 
F 0 "R218" V 7800 1250 50  0000 C CNN
F 1 "10k" V 8000 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7900 1250 50  0001 C CNN
F 3 "~" H 7900 1250 50  0001 C CNN
	1    7900 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5C814C24
P 7800 1900
AR Path="/5C814C24" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C814C24" Ref="Q213"  Part="1" 
F 0 "Q213" H 7991 1946 50  0000 L CNN
F 1 "Q_NPN_CBE" H 7991 1855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8000 2000 50  0001 C CNN
F 3 "~" H 7800 1900 50  0001 C CNN
	1    7800 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 5C54897A
P 5750 3200
AR Path="/5C54897A" Ref="F?"  Part="1" 
AR Path="/5C5BDAF5/5C54897A" Ref="F205"  Part="1" 
F 0 "F205" H 5650 3250 50  0000 C CNN
F 1 "0.5A" H 5900 3250 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 5750 3200 50  0001 C CNN
F 3 "~" H 5750 3200 50  0001 C CNN
	1    5750 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 5C548981
P 5750 3300
AR Path="/5C548981" Ref="F?"  Part="1" 
AR Path="/5C5BDAF5/5C548981" Ref="F206"  Part="1" 
F 0 "F206" H 5650 3350 50  0000 C CNN
F 1 "0.5A" H 5900 3350 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 5750 3300 50  0001 C CNN
F 3 "~" H 5750 3300 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 5C548988
P 5750 3400
AR Path="/5C548988" Ref="F?"  Part="1" 
AR Path="/5C5BDAF5/5C548988" Ref="F207"  Part="1" 
F 0 "F207" H 5650 3450 50  0000 C CNN
F 1 "0.5A" H 5900 3450 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 5750 3400 50  0001 C CNN
F 3 "~" H 5750 3400 50  0001 C CNN
	1    5750 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 5C54898F
P 5750 3500
AR Path="/5C54898F" Ref="F?"  Part="1" 
AR Path="/5C5BDAF5/5C54898F" Ref="F208"  Part="1" 
F 0 "F208" H 5650 3550 50  0000 C CNN
F 1 "0.5A" H 5900 3550 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 5750 3500 50  0001 C CNN
F 3 "~" H 5750 3500 50  0001 C CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3200 5550 3200
Wire Wire Line
	5550 3200 5550 3300
Wire Wire Line
	5550 3500 5650 3500
Wire Wire Line
	5650 3300 5550 3300
Connection ~ 5550 3300
Wire Wire Line
	5550 3300 5550 3400
Wire Wire Line
	5650 3400 5550 3400
Connection ~ 5550 3400
Wire Wire Line
	5550 3400 5550 3500
$Comp
L power:+5V #PWR?
U 1 1 5C54899F
P 5550 2750
AR Path="/5C54899F" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C54899F" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 5550 2600 50  0001 C CNN
F 1 "+5V" H 5565 2923 50  0000 C CNN
F 2 "" H 5550 2750 50  0001 C CNN
F 3 "" H 5550 2750 50  0001 C CNN
	1    5550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2750 5550 2850
Connection ~ 5550 3200
Text HLabel 7400 3200 2    50   Input ~ 0
DoorA_VCC
Text HLabel 7400 3300 2    50   Input ~ 0
DoorB_VCC
Text HLabel 7400 3400 2    50   Input ~ 0
DoorC_VCC
Text HLabel 7400 3500 2    50   Input ~ 0
DoorD_VCC
$Comp
L Device:D_Small D?
U 1 1 5C598E38
P 6000 3000
AR Path="/5C598E38" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C598E38" Ref="D209"  Part="1" 
F 0 "D209" V 6046 2932 50  0000 R CNN
F 1 "1N4148" V 5900 3000 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6000 3000 50  0001 C CNN
F 3 "~" V 6000 3000 50  0001 C CNN
	1    6000 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D?
U 1 1 5C598E3F
P 6300 3000
AR Path="/5C598E3F" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C598E3F" Ref="D210"  Part="1" 
F 0 "D210" V 6346 2932 50  0000 R CNN
F 1 "1N4148" V 6150 3000 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6300 3000 50  0001 C CNN
F 3 "~" V 6300 3000 50  0001 C CNN
	1    6300 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D?
U 1 1 5C598E46
P 6600 3000
AR Path="/5C598E46" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C598E46" Ref="D211"  Part="1" 
F 0 "D211" V 6646 2932 50  0000 R CNN
F 1 "1N4148" V 6500 3000 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6600 3000 50  0001 C CNN
F 3 "~" V 6600 3000 50  0001 C CNN
	1    6600 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D?
U 1 1 5C598E4D
P 6900 3000
AR Path="/5C598E4D" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C598E4D" Ref="D212"  Part="1" 
F 0 "D212" V 6946 2932 50  0000 R CNN
F 1 "1N4148" V 6750 3000 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6900 3000 50  0001 C CNN
F 3 "~" V 6900 3000 50  0001 C CNN
	1    6900 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 2850 6000 2900
Wire Wire Line
	6300 2850 6300 2900
Wire Wire Line
	6600 2850 6600 2900
Wire Wire Line
	6900 2850 6900 2900
Wire Wire Line
	6900 3100 6900 3500
Connection ~ 6900 3500
Wire Wire Line
	6900 3500 7400 3500
Wire Wire Line
	6600 3100 6600 3400
Wire Wire Line
	6300 3100 6300 3300
Wire Wire Line
	6000 3100 6000 3200
Connection ~ 6000 2850
Wire Wire Line
	6600 2850 6900 2850
Connection ~ 6600 2850
Wire Wire Line
	6000 3200 7400 3200
Connection ~ 6000 3200
Wire Wire Line
	6300 3300 7400 3300
Connection ~ 6300 3300
Wire Wire Line
	6600 3400 7400 3400
Connection ~ 6600 3400
Wire Wire Line
	6000 2850 6300 2850
Connection ~ 6300 2850
Wire Wire Line
	6300 2850 6600 2850
$Comp
L power:GND #PWR?
U 1 1 5C598E97
P 6600 4150
AR Path="/5C598E97" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C598E97" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 6600 3900 50  0001 C CNN
F 1 "GND" H 6600 4000 50  0000 R CNN
F 2 "" H 6600 4150 50  0001 C CNN
F 3 "" H 6600 4150 50  0001 C CNN
	1    6600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4150 6600 4100
$Comp
L Device:R_Small R?
U 1 1 5C5A0CED
P 5750 2850
AR Path="/5C5A0CED" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5A0CED" Ref="R219"  Part="1" 
F 0 "R219" V 5650 2850 50  0000 C CNN
F 1 "1M" V 5850 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5750 2850 50  0001 C CNN
F 3 "~" H 5750 2850 50  0001 C CNN
	1    5750 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2850 5550 2850
Connection ~ 5550 2850
Wire Wire Line
	5550 2850 5550 3200
Wire Wire Line
	5850 3200 6000 3200
Wire Wire Line
	5850 3300 6300 3300
Wire Wire Line
	5850 3400 6600 3400
Wire Wire Line
	5850 3500 6900 3500
Wire Wire Line
	5850 2850 6000 2850
$Comp
L Device:R_Small R?
U 1 1 5C5D07FB
P 7900 2950
AR Path="/5C5D07FB" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5D07FB" Ref="R224"  Part="1" 
F 0 "R224" V 7800 2850 50  0000 C CNN
F 1 "10k" V 7800 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7900 2950 50  0001 C CNN
F 3 "~" H 7900 2950 50  0001 C CNN
	1    7900 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5C5D0805
P 7800 3650
AR Path="/5C5D0805" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5D0805" Ref="Q214"  Part="1" 
F 0 "Q214" H 7991 3696 50  0000 L CNN
F 1 "Q_NPN_CBE" H 7991 3605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8000 3750 50  0001 C CNN
F 3 "~" H 7800 3650 50  0001 C CNN
	1    7800 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C5D8EC4
P 7900 2600
AR Path="/5C5D8EC4" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5D8EC4" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 7900 2450 50  0001 C CNN
F 1 "+5V" H 7915 2773 50  0000 C CNN
F 2 "" H 7900 2600 50  0001 C CNN
F 3 "" H 7900 2600 50  0001 C CNN
	1    7900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2600 7900 2850
Wire Wire Line
	7900 3050 7900 3200
Connection ~ 6900 2850
Wire Wire Line
	7900 1350 7900 1550
Wire Wire Line
	7900 1000 7900 1150
Connection ~ 6900 1100
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5C56CE7E
P 8600 1550
AR Path="/5C56CE7E" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C56CE7E" Ref="Q215"  Part="1" 
F 0 "Q215" H 8791 1596 50  0000 L CNN
F 1 "Q_NPN_CBE" H 8791 1505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8800 1650 50  0001 C CNN
F 3 "~" H 8600 1550 50  0001 C CNN
	1    8600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5C56CF3C
P 8600 3200
AR Path="/5C56CF3C" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C56CF3C" Ref="Q216"  Part="1" 
F 0 "Q216" H 8791 3246 50  0000 L CNN
F 1 "Q_NPN_CBE" H 8791 3155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8800 3300 50  0001 C CNN
F 3 "~" H 8600 3200 50  0001 C CNN
	1    8600 3200
	1    0    0    -1  
$EndComp
Connection ~ 7900 3200
Wire Wire Line
	7900 3200 7900 3450
Connection ~ 7900 1550
Wire Wire Line
	7900 1550 7900 1700
$Comp
L power:GND #PWR?
U 1 1 5C58F213
P 8700 2150
AR Path="/5C58F213" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C58F213" Ref="#PWR0222"  Part="1" 
F 0 "#PWR0222" H 8700 1900 50  0001 C CNN
F 1 "GND" H 8700 2000 50  0000 R CNN
F 2 "" H 8700 2150 50  0001 C CNN
F 3 "" H 8700 2150 50  0001 C CNN
	1    8700 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C58F29A
P 8700 3950
AR Path="/5C58F29A" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C58F29A" Ref="#PWR0224"  Part="1" 
F 0 "#PWR0224" H 8700 3700 50  0001 C CNN
F 1 "GND" H 8700 3800 50  0000 R CNN
F 2 "" H 8700 3950 50  0001 C CNN
F 3 "" H 8700 3950 50  0001 C CNN
	1    8700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2150 8700 1750
$Comp
L power:+5V #PWR?
U 1 1 5C5A08F9
P 8700 2600
AR Path="/5C5A08F9" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5A08F9" Ref="#PWR0223"  Part="1" 
F 0 "#PWR0223" H 8700 2450 50  0001 C CNN
F 1 "+5V" H 8715 2773 50  0000 C CNN
F 2 "" H 8700 2600 50  0001 C CNN
F 3 "" H 8700 2600 50  0001 C CNN
	1    8700 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C5A0C34
P 8700 2800
AR Path="/5C5A0C34" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5A0C34" Ref="R228"  Part="1" 
F 0 "R228" V 8600 2800 50  0000 C CNN
F 1 "10k" V 8800 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8700 2800 50  0001 C CNN
F 3 "~" H 8700 2800 50  0001 C CNN
	1    8700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2600 8700 2700
Wire Wire Line
	8700 3000 8700 2950
Wire Wire Line
	8700 1350 8700 1150
Wire Wire Line
	8700 1150 9250 1150
Wire Wire Line
	9250 1150 9250 2100
Wire Wire Line
	9250 2950 8700 2950
Connection ~ 8700 2950
Wire Wire Line
	8700 2950 8700 2900
Wire Wire Line
	8700 3400 8700 3950
Wire Wire Line
	7900 1550 8400 1550
Wire Wire Line
	7900 3200 8400 3200
Text HLabel 9350 2100 2    50   Output ~ 0
Fuse_Error
Wire Wire Line
	9350 2100 9250 2100
Connection ~ 9250 2100
Text HLabel 5300 2850 0    50   Input ~ 0
5V
Wire Wire Line
	5550 2850 5300 2850
Wire Wire Line
	5300 1100 5550 1100
Text HLabel 7050 4750 0    50   Input ~ 0
DA_Tx
Text HLabel 7050 4850 0    50   Input ~ 0
DA_Rx
Text HLabel 8700 4750 2    50   Input ~ 0
DB_Tx
Text HLabel 8700 4850 2    50   Input ~ 0
DB_Rx
Text HLabel 7050 5450 0    50   Input ~ 0
DC_Tx
Text HLabel 7050 5550 0    50   Input ~ 0
DC_Rx
Text HLabel 8700 5450 2    50   Input ~ 0
DD_Tx
Text HLabel 8700 5550 2    50   Input ~ 0
DD_Rx
$Comp
L power:+12V #PWR?
U 1 1 5C5D914C
P 7250 4450
AR Path="/5C5D914C" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5D914C" Ref="#PWR0218"  Part="1" 
F 0 "#PWR0218" H 7250 4300 50  0001 C CNN
F 1 "+12V" H 7350 4600 50  0000 C CNN
F 2 "" H 7250 4450 50  0001 C CNN
F 3 "" H 7250 4450 50  0001 C CNN
	1    7250 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C5D9670
P 8700 4450
AR Path="/5C5D9670" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5D9670" Ref="#PWR0219"  Part="1" 
F 0 "#PWR0219" H 8700 4300 50  0001 C CNN
F 1 "+5V" H 8700 4600 50  0000 C CNN
F 2 "" H 8700 4450 50  0001 C CNN
F 3 "" H 8700 4450 50  0001 C CNN
	1    8700 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C5F45D1
P 7550 6400
AR Path="/5C5F45D1" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C5F45D1" Ref="#PWR0217"  Part="1" 
F 0 "#PWR0217" H 7550 6150 50  0001 C CNN
F 1 "GND" H 7600 6200 50  0000 R CNN
F 2 "" H 7550 6400 50  0001 C CNN
F 3 "" H 7550 6400 50  0001 C CNN
	1    7550 6400
	1    0    0    -1  
$EndComp
Text HLabel 7050 4550 0    50   Output ~ 0
Fuse_Error
Text HLabel 7050 5150 0    50   Output ~ 0
DoorA_Lock
Text HLabel 7050 4950 0    50   Input ~ 0
DoorA_MK
Text HLabel 7050 5050 0    50   Input ~ 0
DoorA_12V
Text HLabel 7050 4650 0    50   Input ~ 0
DoorA_VCC
Text HLabel 8700 5150 2    50   Output ~ 0
DoorB_Lock
Text HLabel 7050 5850 0    50   Output ~ 0
DoorC_Lock
Text HLabel 8700 5850 2    50   Output ~ 0
DoorD_Lock
Text HLabel 8700 4950 2    50   Input ~ 0
DoorB_MK
Text HLabel 7050 5650 0    50   Input ~ 0
DoorC_MK
Text HLabel 8700 5650 2    50   Input ~ 0
DoorD_MK
Text HLabel 8700 5050 2    50   Input ~ 0
DoorB_12V
Text HLabel 7050 5750 0    50   Input ~ 0
DoorC_12V
Text HLabel 8700 5750 2    50   Input ~ 0
DoorD_12V
Text HLabel 8700 4650 2    50   Input ~ 0
DoorB_VCC
Text HLabel 7050 5350 0    50   Input ~ 0
DoorC_VCC
Text HLabel 8700 5350 2    50   Input ~ 0
DoorD_VCC
Text HLabel 4350 1850 2    50   Input ~ 0
DoorA_Auto
Wire Wire Line
	4250 1200 4250 1300
Text HLabel 4350 3650 2    50   Input ~ 0
DoorB_Auto
Text HLabel 4350 5250 2    50   Input ~ 0
DoorC_Auto
Text HLabel 4350 6900 2    50   Input ~ 0
DoorD_Auto
Wire Wire Line
	4250 6800 4250 6900
Wire Wire Line
	4250 6900 4350 6900
Wire Wire Line
	4250 5150 4250 5250
Wire Wire Line
	4250 5250 4350 5250
Wire Wire Line
	4250 3550 4250 3650
Wire Wire Line
	4250 3650 4350 3650
Wire Wire Line
	4250 1700 4250 1850
Wire Wire Line
	4250 1850 4350 1850
Wire Wire Line
	4350 2000 4250 2000
Wire Wire Line
	4250 2000 4250 2100
Text HLabel 7050 5250 0    50   Input ~ 0
DoorA_Auto
Text HLabel 8700 5250 2    50   Input ~ 0
DoorB_Auto
Text HLabel 7050 5950 0    50   Input ~ 0
DoorC_Auto
Text HLabel 8700 5950 2    50   Input ~ 0
DoorD_Auto
Wire Wire Line
	9250 2100 9250 2950
Wire Wire Line
	3300 7050 3300 7650
Wire Wire Line
	3300 3800 3300 4150
Wire Wire Line
	3300 5400 3300 5800
$Comp
L Device:D_Small D?
U 1 1 5C5C5BF9
P 7400 1900
AR Path="/5C5C5BF9" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C5C5BF9" Ref="D214"  Part="1" 
F 0 "D214" V 7446 1832 50  0000 R CNN
F 1 "1N4148" V 7250 1900 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 7400 1900 50  0001 C CNN
F 3 "~" V 7400 1900 50  0001 C CNN
	1    7400 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 1900 7500 1900
$Comp
L Device:D_Small D?
U 1 1 5C5D1F3B
P 7300 3650
AR Path="/5C5D1F3B" Ref="D?"  Part="1" 
AR Path="/5C5BDAF5/5C5D1F3B" Ref="D213"  Part="1" 
F 0 "D213" V 7346 3582 50  0000 R CNN
F 1 "1N4148" V 7150 3650 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 7300 3650 50  0001 C CNN
F 3 "~" V 7300 3650 50  0001 C CNN
	1    7300 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 3650 7400 3650
Wire Wire Line
	7200 3650 7100 3650
Wire Wire Line
	7100 3650 7100 2850
Wire Wire Line
	6900 2850 7100 2850
Wire Wire Line
	7300 1900 7100 1900
Wire Wire Line
	7100 1900 7100 1100
Wire Wire Line
	7100 1100 6900 1100
Wire Wire Line
	3300 1150 3300 1250
$Comp
L Device:R_Small R?
U 1 1 5C5EA262
P 2800 1750
AR Path="/5C5EA262" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C5EA262" Ref="R203"  Part="1" 
F 0 "R203" V 2700 1750 50  0000 C CNN
F 1 "1k" V 2900 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2800 1750 50  0001 C CNN
F 3 "~" H 2800 1750 50  0001 C CNN
	1    2800 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 1750 2900 1750
Wire Wire Line
	2700 1750 2550 1750
Wire Wire Line
	3300 6250 3300 6350
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5C5FABA4
P 3200 5200
AR Path="/5C5FABA4" Ref="Q?"  Part="1" 
AR Path="/5C5BDAF5/5C5FABA4" Ref="Q206"  Part="1" 
F 0 "Q206" H 3391 5246 50  0000 L CNN
F 1 "Q_NPN_CBE" H 3391 5155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 3400 5300 50  0001 C CNN
F 3 "~" H 3200 5200 50  0001 C CNN
	1    3200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4600 3300 4700
Wire Wire Line
	3300 3000 3300 3100
Wire Wire Line
	3000 6850 2900 6850
Wire Wire Line
	2550 6850 2700 6850
Wire Wire Line
	3000 5200 2900 5200
Wire Wire Line
	2700 5200 2550 5200
Wire Wire Line
	3000 3600 2850 3600
Wire Wire Line
	2500 3600 2650 3600
$Comp
L Device:R_Network04 RN201
U 1 1 5C70848E
P 6400 2100
F 0 "RN201" H 6120 2054 50  0000 R CNN
F 1 "4x10k" H 6120 2145 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP5" V 6675 2100 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6400 2100 50  0001 C CNN
	1    6400 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 2450 6600 2350
Wire Wire Line
	6900 1850 6600 1850
Wire Wire Line
	6600 1850 6600 1900
Wire Wire Line
	6600 1650 6600 1800
Wire Wire Line
	6600 1800 6500 1800
Wire Wire Line
	6500 1800 6500 1900
Wire Wire Line
	6300 1550 6300 1800
Wire Wire Line
	6300 1800 6400 1800
Wire Wire Line
	6400 1800 6400 1900
Wire Wire Line
	6300 1900 6300 1850
Wire Wire Line
	6300 1850 6000 1850
$Comp
L Device:R_Network04 RN202
U 1 1 5C742CAD
P 6400 3850
F 0 "RN202" H 6120 3804 50  0000 R CNN
F 1 "4x10k" H 6120 3895 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP5" V 6675 3850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6400 3850 50  0001 C CNN
	1    6400 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 2350 6600 2350
Wire Wire Line
	7900 2100 7900 2350
Connection ~ 6600 2350
Wire Wire Line
	6600 2350 6600 2300
Wire Wire Line
	7900 4100 6600 4100
Wire Wire Line
	6600 4100 6600 4050
Wire Wire Line
	7900 3850 7900 4100
Connection ~ 6600 4100
Wire Wire Line
	6600 3400 6600 3550
Wire Wire Line
	6600 3550 6500 3550
Wire Wire Line
	6500 3550 6500 3650
Wire Wire Line
	6300 3300 6300 3550
Wire Wire Line
	6300 3550 6400 3550
Wire Wire Line
	6400 3550 6400 3650
Wire Wire Line
	6900 3500 6900 3600
Wire Wire Line
	6900 3600 6600 3600
Wire Wire Line
	6600 3600 6600 3650
Wire Wire Line
	6000 3200 6000 3600
Wire Wire Line
	6000 3600 6300 3600
Wire Wire Line
	6300 3600 6300 3650
Text HLabel 3200 2450 0    50   Input ~ 0
~PWR_EN~
Text HLabel 3200 4150 0    50   Input ~ 0
~PWR_EN~
Text HLabel 3200 5800 0    50   Input ~ 0
~PWR_EN~
Text HLabel 3200 7650 0    50   Input ~ 0
~PWR_EN~
Text HLabel 1400 1300 3    50   Input ~ 0
~PWR_EN~
Wire Wire Line
	3200 2450 3300 2450
Wire Wire Line
	3200 4150 3300 4150
Wire Wire Line
	3200 5800 3300 5800
Wire Wire Line
	3300 7650 3200 7650
$Comp
L power:+5V #PWR?
U 1 1 5C7550B2
P 1400 900
AR Path="/5C7550B2" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C7550B2" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 1400 750 50  0001 C CNN
F 1 "+5V" H 1400 1050 50  0000 C CNN
F 2 "" H 1400 900 50  0001 C CNN
F 3 "" H 1400 900 50  0001 C CNN
	1    1400 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C7553DD
P 1400 1100
AR Path="/5C7553DD" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C7553DD" Ref="R205"  Part="1" 
F 0 "R205" V 1300 1100 50  0000 C CNN
F 1 "10k" V 1500 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1400 1100 50  0001 C CNN
F 3 "~" H 1400 1100 50  0001 C CNN
	1    1400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 900  1400 1000
Wire Wire Line
	1400 1200 1400 1300
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J201
U 1 1 5C76CCF2
P 7850 5350
F 0 "J201" H 7900 6467 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 7900 6376 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical_SMD" H 7850 5350 50  0001 C CNN
F 3 "~" H 7850 5350 50  0001 C CNN
	1    7850 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C90D28E
P 7400 4750
AR Path="/5C90D28E" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5C90D28E" Ref="R206"  Part="1" 
F 0 "R206" V 7450 4850 50  0000 L CNN
F 1 "1k" V 7450 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 4750 50  0001 C CNN
F 3 "~" H 7400 4750 50  0001 C CNN
	1    7400 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 5150 7650 5150
Wire Wire Line
	7050 5250 7650 5250
Wire Wire Line
	7050 5050 7650 5050
Wire Wire Line
	7050 5850 7650 5850
Wire Wire Line
	7050 5950 7650 5950
Wire Wire Line
	7050 5750 7650 5750
Wire Wire Line
	7650 4450 7250 4450
$Comp
L power:GND #PWR?
U 1 1 5C9D4ED1
P 8700 4550
AR Path="/5C9D4ED1" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5C9D4ED1" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 8700 4300 50  0001 C CNN
F 1 "GND" H 8750 4350 50  0000 R CNN
F 2 "" H 8700 4550 50  0001 C CNN
F 3 "" H 8700 4550 50  0001 C CNN
	1    8700 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 4550 7650 4550
$Comp
L Device:R_Small R?
U 1 1 5CA55B8A
P 7400 4850
AR Path="/5CA55B8A" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA55B8A" Ref="R207"  Part="1" 
F 0 "R207" V 7450 4950 50  0000 L CNN
F 1 "1k" V 7450 4650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 4850 50  0001 C CNN
F 3 "~" H 7400 4850 50  0001 C CNN
	1    7400 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CA55C88
P 7400 5450
AR Path="/5CA55C88" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA55C88" Ref="R215"  Part="1" 
F 0 "R215" V 7450 5550 50  0000 L CNN
F 1 "1k" V 7450 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 5450 50  0001 C CNN
F 3 "~" H 7400 5450 50  0001 C CNN
	1    7400 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CA55D12
P 7400 5550
AR Path="/5CA55D12" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA55D12" Ref="R216"  Part="1" 
F 0 "R216" V 7450 5650 50  0000 L CNN
F 1 "1k" V 7450 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 5550 50  0001 C CNN
F 3 "~" H 7400 5550 50  0001 C CNN
	1    7400 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CA55F00
P 7400 5350
AR Path="/5CA55F00" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA55F00" Ref="R214"  Part="1" 
F 0 "R214" V 7450 5450 50  0000 L CNN
F 1 "1k" V 7450 5150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 5350 50  0001 C CNN
F 3 "~" H 7400 5350 50  0001 C CNN
	1    7400 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CA55F88
P 8450 5350
AR Path="/5CA55F88" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA55F88" Ref="R223"  Part="1" 
F 0 "R223" V 8500 5450 50  0000 L CNN
F 1 "1k" V 8500 5150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 5350 50  0001 C CNN
F 3 "~" H 8450 5350 50  0001 C CNN
	1    8450 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CA560C2
P 8450 5550
AR Path="/5CA560C2" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA560C2" Ref="R226"  Part="1" 
F 0 "R226" V 8500 5650 50  0000 L CNN
F 1 "1k" V 8500 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 5550 50  0001 C CNN
F 3 "~" H 8450 5550 50  0001 C CNN
	1    8450 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CA5615C
P 8450 5450
AR Path="/5CA5615C" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA5615C" Ref="R225"  Part="1" 
F 0 "R225" V 8500 5550 50  0000 L CNN
F 1 "1k" V 8500 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 5450 50  0001 C CNN
F 3 "~" H 8450 5450 50  0001 C CNN
	1    8450 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CA5627E
P 8450 4850
AR Path="/5CA5627E" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA5627E" Ref="R221"  Part="1" 
F 0 "R221" V 8500 4950 50  0000 L CNN
F 1 "1k" V 8500 4650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 4850 50  0001 C CNN
F 3 "~" H 8450 4850 50  0001 C CNN
	1    8450 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CA56316
P 8450 4750
AR Path="/5CA56316" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5CA56316" Ref="R220"  Part="1" 
F 0 "R220" V 8500 4850 50  0000 L CNN
F 1 "1k" V 8500 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 4750 50  0001 C CNN
F 3 "~" H 8450 4750 50  0001 C CNN
	1    8450 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB6B886
P 8250 6400
AR Path="/5CB6B886" Ref="#PWR?"  Part="1" 
AR Path="/5C5BDAF5/5CB6B886" Ref="#PWR0201"  Part="1" 
F 0 "#PWR0201" H 8250 6150 50  0001 C CNN
F 1 "GND" H 8300 6200 50  0000 R CNN
F 2 "" H 8250 6400 50  0001 C CNN
F 3 "" H 8250 6400 50  0001 C CNN
	1    8250 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 6050 8250 6050
Wire Wire Line
	8250 6050 8250 6150
Wire Wire Line
	8150 6150 8250 6150
Connection ~ 8250 6150
Wire Wire Line
	8250 6150 8250 6250
Wire Wire Line
	8150 6250 8250 6250
Connection ~ 8250 6250
Wire Wire Line
	8250 6250 8250 6350
Wire Wire Line
	8150 6350 8250 6350
Connection ~ 8250 6350
Wire Wire Line
	8250 6350 8250 6400
Wire Wire Line
	7650 6350 7550 6350
Wire Wire Line
	7550 6350 7550 6400
Wire Wire Line
	7650 6250 7550 6250
Wire Wire Line
	7550 6250 7550 6350
Connection ~ 7550 6350
Wire Wire Line
	7650 6150 7550 6150
Wire Wire Line
	7550 6150 7550 6250
Connection ~ 7550 6250
Wire Wire Line
	7650 6050 7550 6050
Wire Wire Line
	7550 6050 7550 6150
Connection ~ 7550 6150
Wire Wire Line
	7050 4750 7300 4750
Wire Wire Line
	7650 4750 7500 4750
Wire Wire Line
	7050 4850 7300 4850
Wire Wire Line
	7650 4850 7500 4850
Wire Wire Line
	7050 5350 7300 5350
Wire Wire Line
	7650 5350 7500 5350
Wire Wire Line
	7050 5450 7300 5450
Wire Wire Line
	7500 5450 7650 5450
Wire Wire Line
	7500 5550 7650 5550
Wire Wire Line
	7300 5550 7050 5550
Wire Wire Line
	8700 5550 8550 5550
Wire Wire Line
	8550 5450 8700 5450
Wire Wire Line
	8700 5350 8550 5350
Wire Wire Line
	8550 4750 8700 4750
Wire Wire Line
	8700 4850 8550 4850
Wire Wire Line
	8150 4450 8700 4450
Wire Wire Line
	8150 4550 8700 4550
Wire Wire Line
	8150 4750 8350 4750
Wire Wire Line
	8150 4850 8350 4850
Wire Wire Line
	8150 5950 8700 5950
Wire Wire Line
	8150 5850 8700 5850
Wire Wire Line
	8150 5750 8700 5750
Wire Wire Line
	8150 5550 8350 5550
Wire Wire Line
	8150 5050 8700 5050
Wire Wire Line
	8150 5150 8700 5150
Wire Wire Line
	8150 5250 8700 5250
Wire Wire Line
	8150 5350 8350 5350
Wire Wire Line
	8150 5450 8350 5450
Wire Wire Line
	8150 4950 8700 4950
Wire Wire Line
	8150 5650 8700 5650
Wire Wire Line
	7050 4950 7650 4950
Wire Wire Line
	7050 5650 7650 5650
$Comp
L Device:R_Small R?
U 1 1 5D206D92
P 8450 4650
AR Path="/5D206D92" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5D206D92" Ref="R217"  Part="1" 
F 0 "R217" V 8500 4750 50  0000 L CNN
F 1 "1k" V 8500 4450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 4650 50  0001 C CNN
F 3 "~" H 8450 4650 50  0001 C CNN
	1    8450 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D206E1E
P 7400 4650
AR Path="/5D206E1E" Ref="R?"  Part="1" 
AR Path="/5C5BDAF5/5D206E1E" Ref="R208"  Part="1" 
F 0 "R208" V 7450 4750 50  0000 L CNN
F 1 "1k" V 7450 4450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 4650 50  0001 C CNN
F 3 "~" H 7400 4650 50  0001 C CNN
	1    7400 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 4650 8550 4650
Wire Wire Line
	8350 4650 8150 4650
Wire Wire Line
	7650 4650 7500 4650
Wire Wire Line
	7300 4650 7050 4650
$EndSCHEMATC
