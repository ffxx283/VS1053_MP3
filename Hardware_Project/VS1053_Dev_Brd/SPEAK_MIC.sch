EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Connector:AudioJack4 J5
U 1 1 5F466507
P 5050 4250
F 0 "J5" H 4720 4133 50  0000 R CNN
F 1 "AudioJack4" H 4720 4224 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_PJ320D_Horizontal" H 5050 4250 50  0001 C CNN
F 3 "~" H 5050 4250 50  0001 C CNN
	1    5050 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:Microphone MC1
U 1 1 5F46650D
P 4750 6000
F 0 "MC1" H 4880 6046 50  0000 L CNN
F 1 "Microphone" H 4880 5955 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" V 4750 6100 50  0001 C CNN
F 3 "~" V 4750 6100 50  0001 C CNN
	1    4750 6000
	1    0    0    -1  
$EndComp
Text HLabel 2050 4850 0    50   Input ~ 0
MIC_P\LINE_INL
Text HLabel 2050 5850 0    50   Input ~ 0
MIC_N
Text HLabel 2050 4300 0    50   Input ~ 0
LINE_INR
$Comp
L Device:R R?
U 1 1 5F28AEF8
P 7500 1400
AR Path="/5F1CFDB8/5F28AEF8" Ref="R?"  Part="1" 
AR Path="/5F28AEF8" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F28AEF8" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F28AEF8" Ref="R22"  Part="1" 
F 0 "R22" V 7575 1375 50  0000 L CNN
F 1 "68R/100R" V 7400 1325 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7430 1400 50  0001 C CNN
F 3 "~" H 7500 1400 50  0001 C CNN
	1    7500 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F28DAEB
P 7500 1650
AR Path="/5F1CFDB8/5F28DAEB" Ref="R?"  Part="1" 
AR Path="/5F28DAEB" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F28DAEB" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F28DAEB" Ref="R23"  Part="1" 
F 0 "R23" V 7575 1625 50  0000 L CNN
F 1 "68R/100R" V 7400 1575 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7430 1650 50  0001 C CNN
F 3 "~" H 7500 1650 50  0001 C CNN
	1    7500 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F290A95
P 8100 2300
AR Path="/5F1CFDB8/5F290A95" Ref="R?"  Part="1" 
AR Path="/5F290A95" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F290A95" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F290A95" Ref="R24"  Part="1" 
F 0 "R24" H 8170 2346 50  0000 L CNN
F 1 "5.6M" H 8170 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8030 2300 50  0001 C CNN
F 3 "~" H 8100 2300 50  0001 C CNN
	1    8100 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F291566
P 8400 2300
AR Path="/5F1CFDB8/5F291566" Ref="R?"  Part="1" 
AR Path="/5F291566" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F291566" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F291566" Ref="R25"  Part="1" 
F 0 "R25" H 8470 2346 50  0000 L CNN
F 1 "5.6M" H 8470 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8330 2300 50  0001 C CNN
F 3 "~" H 8400 2300 50  0001 C CNN
	1    8400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2150 8100 2000
Connection ~ 8100 1400
Wire Wire Line
	8100 1400 7650 1400
Wire Wire Line
	7650 1650 7800 1650
Wire Wire Line
	7800 1650 7800 1500
Wire Wire Line
	7800 1500 8400 1500
Wire Wire Line
	8400 2150 8400 2000
Connection ~ 8400 1500
Wire Wire Line
	7950 1900 7950 1600
Wire Wire Line
	7950 1600 8700 1600
$Comp
L Device:R R?
U 1 1 5F294E17
P 8700 2300
AR Path="/5F1CFDB8/5F294E17" Ref="R?"  Part="1" 
AR Path="/5F294E17" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F294E17" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F294E17" Ref="R26"  Part="1" 
F 0 "R26" H 8770 2346 50  0000 L CNN
F 1 "5.6M" H 8770 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8630 2300 50  0001 C CNN
F 3 "~" H 8700 2300 50  0001 C CNN
	1    8700 2300
	1    0    0    -1  
$EndComp
Connection ~ 8700 1600
$Comp
L power:GND #PWR?
U 1 1 5F295427
P 8400 2700
AR Path="/5F1CFDB8/5F295427" Ref="#PWR?"  Part="1" 
AR Path="/5F295427" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F295427" Ref="#PWR?"  Part="1" 
AR Path="/5F46110A/5F295427" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 8400 2450 50  0001 C CNN
F 1 "GND" H 8405 2527 50  0000 C CNN
F 2 "" H 8400 2700 50  0001 C CNN
F 3 "" H 8400 2700 50  0001 C CNN
	1    8400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2450 8400 2600
Wire Wire Line
	8700 2450 8700 2600
Wire Wire Line
	8700 2600 8400 2600
Connection ~ 8400 2600
Wire Wire Line
	8400 2600 8400 2700
Wire Wire Line
	8100 2450 8100 2600
Wire Wire Line
	8100 2600 8400 2600
$Comp
L power:+3V3 #PWR?
U 1 1 5F29E5FA
P 5450 4850
AR Path="/5F1CFDB8/5F29E5FA" Ref="#PWR?"  Part="1" 
AR Path="/5F29E5FA" Ref="#PWR?"  Part="1" 
AR Path="/5F46110A/5F29E5FA" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 5450 4700 50  0001 C CNN
F 1 "+3V3" H 5465 5023 50  0000 C CNN
F 2 "" H 5450 4850 50  0001 C CNN
F 3 "" H 5450 4850 50  0001 C CNN
	1    5450 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F29F29A
P 5450 5100
AR Path="/5F1CFDB8/5F29F29A" Ref="R?"  Part="1" 
AR Path="/5F29F29A" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F29F29A" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F29F29A" Ref="R32"  Part="1" 
F 0 "R32" H 5520 5146 50  0000 L CNN
F 1 "1K" H 5520 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5380 5100 50  0001 C CNN
F 3 "~" H 5450 5100 50  0001 C CNN
	1    5450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4850 5450 4950
$Comp
L Device:R R?
U 1 1 5F2A28F0
P 5100 5450
AR Path="/5F1CFDB8/5F2A28F0" Ref="R?"  Part="1" 
AR Path="/5F2A28F0" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F2A28F0" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F2A28F0" Ref="R33"  Part="1" 
F 0 "R33" V 5175 5425 50  0000 L CNN
F 1 "2.2K" V 5000 5375 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5030 5450 50  0001 C CNN
F 3 "~" H 5100 5450 50  0001 C CNN
	1    5100 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 5450 5450 5450
Wire Wire Line
	5450 5450 5450 5250
Wire Wire Line
	4950 5450 4750 5450
Wire Wire Line
	4750 5450 4750 5600
$Comp
L Device:C C?
U 1 1 5F2A4F78
P 5450 5750
AR Path="/5F1CFDB8/5F2A4F78" Ref="C?"  Part="1" 
AR Path="/5F2A4F78" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F2A4F78" Ref="C?"  Part="1" 
AR Path="/5F46110A/5F2A4F78" Ref="C31"  Part="1" 
F 0 "C31" H 5400 5850 50  0000 R CNN
F 1 "10uF" H 5400 5650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5488 5600 50  0001 C CNN
F 3 "~" H 5450 5750 50  0001 C CNN
	1    5450 5750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2A5DA5
P 5450 6100
AR Path="/5F1CFDB8/5F2A5DA5" Ref="#PWR?"  Part="1" 
AR Path="/5F2A5DA5" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F2A5DA5" Ref="#PWR?"  Part="1" 
AR Path="/5F46110A/5F2A5DA5" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 5450 5850 50  0001 C CNN
F 1 "GND" H 5455 5927 50  0000 C CNN
F 2 "" H 5450 6100 50  0001 C CNN
F 3 "" H 5450 6100 50  0001 C CNN
	1    5450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5600 5450 5450
Connection ~ 5450 5450
Wire Wire Line
	5450 5900 5450 6100
$Comp
L power:GND #PWR?
U 1 1 5F2A7D4E
P 4750 6400
AR Path="/5F1CFDB8/5F2A7D4E" Ref="#PWR?"  Part="1" 
AR Path="/5F2A7D4E" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F2A7D4E" Ref="#PWR?"  Part="1" 
AR Path="/5F46110A/5F2A7D4E" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 4750 6150 50  0001 C CNN
F 1 "GND" H 4755 6227 50  0000 C CNN
F 2 "" H 4750 6400 50  0001 C CNN
F 3 "" H 4750 6400 50  0001 C CNN
	1    4750 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6400 4750 6200
$Comp
L Device:C C?
U 1 1 5F2A938E
P 3100 4850
AR Path="/5F1CFDB8/5F2A938E" Ref="C?"  Part="1" 
AR Path="/5F2A938E" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F2A938E" Ref="C?"  Part="1" 
AR Path="/5F46110A/5F2A938E" Ref="C30"  Part="1" 
F 0 "C30" V 3050 4750 50  0000 R CNN
F 1 "1uf" V 3150 4750 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 4700 50  0001 C CNN
F 3 "~" H 3100 4850 50  0001 C CNN
	1    3100 4850
	0    -1   1    0   
$EndComp
Connection ~ 4750 5600
Wire Wire Line
	4750 5600 4750 5800
Wire Wire Line
	3650 5600 3650 4950
Wire Wire Line
	3650 4950 3950 4950
Wire Wire Line
	3650 5600 4300 5600
Wire Wire Line
	3950 4750 3650 4750
Wire Wire Line
	3650 4750 3650 4050
Wire Wire Line
	3650 4050 4300 4050
Wire Wire Line
	3250 4850 3450 4850
$Comp
L power:GND #PWR?
U 1 1 5F2B106E
P 4600 4500
AR Path="/5F1CFDB8/5F2B106E" Ref="#PWR?"  Part="1" 
AR Path="/5F2B106E" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F2B106E" Ref="#PWR?"  Part="1" 
AR Path="/5F46110A/5F2B106E" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 4600 4250 50  0001 C CNN
F 1 "GND" H 4605 4327 50  0000 C CNN
F 2 "" H 4600 4500 50  0001 C CNN
F 3 "" H 4600 4500 50  0001 C CNN
	1    4600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4250 4600 4250
Wire Wire Line
	4600 4250 4600 4350
Wire Wire Line
	4850 4350 4600 4350
Connection ~ 4600 4350
Wire Wire Line
	4600 4350 4600 4500
$Comp
L Device:R R?
U 1 1 5F2B44AB
P 2600 4850
AR Path="/5F1CFDB8/5F2B44AB" Ref="R?"  Part="1" 
AR Path="/5F2B44AB" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F2B44AB" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F2B44AB" Ref="R31"  Part="1" 
F 0 "R31" V 2675 4825 50  0000 L CNN
F 1 "100R" V 2500 4775 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2530 4850 50  0001 C CNN
F 3 "~" H 2600 4850 50  0001 C CNN
	1    2600 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4850 2750 4850
Wire Wire Line
	2050 4850 2450 4850
$Comp
L Device:C C?
U 1 1 5F2BACEC
P 3100 5850
AR Path="/5F1CFDB8/5F2BACEC" Ref="C?"  Part="1" 
AR Path="/5F2BACEC" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F2BACEC" Ref="C?"  Part="1" 
AR Path="/5F46110A/5F2BACEC" Ref="C32"  Part="1" 
F 0 "C32" V 3050 5750 50  0000 R CNN
F 1 "1uf" V 3150 5750 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 5700 50  0001 C CNN
F 3 "~" H 3100 5850 50  0001 C CNN
	1    3100 5850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F2BACF2
P 2600 5850
AR Path="/5F1CFDB8/5F2BACF2" Ref="R?"  Part="1" 
AR Path="/5F2BACF2" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F2BACF2" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F2BACF2" Ref="R34"  Part="1" 
F 0 "R34" V 2675 5825 50  0000 L CNN
F 1 "100R" V 2500 5775 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2530 5850 50  0001 C CNN
F 3 "~" H 2600 5850 50  0001 C CNN
	1    2600 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 5850 2750 5850
Wire Wire Line
	2050 5850 2450 5850
$Comp
L Device:C C?
U 1 1 5F2BF7DD
P 3100 4300
AR Path="/5F1CFDB8/5F2BF7DD" Ref="C?"  Part="1" 
AR Path="/5F2BF7DD" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F2BF7DD" Ref="C?"  Part="1" 
AR Path="/5F46110A/5F2BF7DD" Ref="C29"  Part="1" 
F 0 "C29" V 3050 4200 50  0000 R CNN
F 1 "1uf" V 3150 4200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 4150 50  0001 C CNN
F 3 "~" H 3100 4300 50  0001 C CNN
	1    3100 4300
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F2BF7E3
P 2600 4300
AR Path="/5F1CFDB8/5F2BF7E3" Ref="R?"  Part="1" 
AR Path="/5F2BF7E3" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F2BF7E3" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F2BF7E3" Ref="R30"  Part="1" 
F 0 "R30" V 2675 4275 50  0000 L CNN
F 1 "100R" V 2500 4225 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2530 4300 50  0001 C CNN
F 3 "~" H 2600 4300 50  0001 C CNN
	1    2600 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4300 2750 4300
Wire Wire Line
	2450 4300 2050 4300
$Comp
L power:GND #PWR?
U 1 1 5F2C3991
P 3450 6150
AR Path="/5F1CFDB8/5F2C3991" Ref="#PWR?"  Part="1" 
AR Path="/5F2C3991" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F2C3991" Ref="#PWR?"  Part="1" 
AR Path="/5F46110A/5F2C3991" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 3450 5900 50  0001 C CNN
F 1 "GND" H 3455 5977 50  0000 C CNN
F 2 "" H 3450 6150 50  0001 C CNN
F 3 "" H 3450 6150 50  0001 C CNN
	1    3450 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6150 3450 5850
Wire Wire Line
	3450 5850 3250 5850
Wire Wire Line
	9100 1600 9300 1600
Connection ~ 9100 1600
Wire Wire Line
	9100 1700 9100 1600
Wire Wire Line
	9300 1700 9100 1700
Wire Wire Line
	8700 1600 9100 1600
Wire Wire Line
	8400 1500 9300 1500
Wire Wire Line
	9300 1400 8100 1400
$Comp
L Connector:AudioJack4 J4
U 1 1 5F466501
P 9500 1600
F 0 "J4" H 9170 1483 50  0000 R CNN
F 1 "AudioJack4" H 9170 1574 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_PJ320D_Horizontal" H 9500 1600 50  0001 C CNN
F 3 "~" H 9500 1600 50  0001 C CNN
	1    9500 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 1400 7350 1400
Connection ~ 6750 1400
Wire Wire Line
	6750 2200 6750 1400
Connection ~ 6450 1650
Wire Wire Line
	6450 2200 6450 1650
Wire Wire Line
	6100 1900 7950 1900
Connection ~ 6100 1900
Wire Wire Line
	6100 2200 6100 1900
Wire Wire Line
	7350 1650 6450 1650
Wire Wire Line
	6750 2950 6450 2950
Wire Wire Line
	6750 2900 6750 2950
Wire Wire Line
	6450 2950 6450 3050
Connection ~ 6450 2950
Wire Wire Line
	6100 2950 6450 2950
Wire Wire Line
	6100 2900 6100 2950
Wire Wire Line
	6450 2900 6450 2950
Wire Wire Line
	6750 2600 6750 2500
$Comp
L Device:C C?
U 1 1 5F289E50
P 6750 2750
AR Path="/5F1CFDB8/5F289E50" Ref="C?"  Part="1" 
AR Path="/5F289E50" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F289E50" Ref="C?"  Part="1" 
AR Path="/5F46110A/5F289E50" Ref="C28"  Part="1" 
F 0 "C28" H 6700 2850 50  0000 R CNN
F 1 "10nF" H 6700 2650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6788 2600 50  0001 C CNN
F 3 "~" H 6750 2750 50  0001 C CNN
	1    6750 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F289E4A
P 6750 2350
AR Path="/5F1CFDB8/5F289E4A" Ref="R?"  Part="1" 
AR Path="/5F289E4A" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F289E4A" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F289E4A" Ref="R29"  Part="1" 
F 0 "R29" H 6820 2396 50  0000 L CNN
F 1 "20R" H 6820 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6680 2350 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
	1    6750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2600 6450 2500
$Comp
L Device:C C?
U 1 1 5F289900
P 6450 2750
AR Path="/5F1CFDB8/5F289900" Ref="C?"  Part="1" 
AR Path="/5F289900" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F289900" Ref="C?"  Part="1" 
AR Path="/5F46110A/5F289900" Ref="C27"  Part="1" 
F 0 "C27" H 6400 2850 50  0000 R CNN
F 1 "10nF" H 6400 2650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6488 2600 50  0001 C CNN
F 3 "~" H 6450 2750 50  0001 C CNN
	1    6450 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F2898FA
P 6450 2350
AR Path="/5F1CFDB8/5F2898FA" Ref="R?"  Part="1" 
AR Path="/5F2898FA" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F2898FA" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F2898FA" Ref="R28"  Part="1" 
F 0 "R28" H 6520 2396 50  0000 L CNN
F 1 "20R" H 6520 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6380 2350 50  0001 C CNN
F 3 "~" H 6450 2350 50  0001 C CNN
	1    6450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2600 6100 2500
$Comp
L power:GND #PWR?
U 1 1 5F280C71
P 6450 3050
AR Path="/5F1CFDB8/5F280C71" Ref="#PWR?"  Part="1" 
AR Path="/5F280C71" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F280C71" Ref="#PWR?"  Part="1" 
AR Path="/5F46110A/5F280C71" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 6450 2800 50  0001 C CNN
F 1 "GND" H 6455 2877 50  0000 C CNN
F 2 "" H 6450 3050 50  0001 C CNN
F 3 "" H 6450 3050 50  0001 C CNN
	1    6450 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F280C5A
P 6100 2750
AR Path="/5F1CFDB8/5F280C5A" Ref="C?"  Part="1" 
AR Path="/5F280C5A" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F280C5A" Ref="C?"  Part="1" 
AR Path="/5F46110A/5F280C5A" Ref="C26"  Part="1" 
F 0 "C26" H 6050 2850 50  0000 R CNN
F 1 "47nF" H 6050 2650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6138 2600 50  0001 C CNN
F 3 "~" H 6100 2750 50  0001 C CNN
	1    6100 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F280C46
P 6100 2350
AR Path="/5F1CFDB8/5F280C46" Ref="R?"  Part="1" 
AR Path="/5F280C46" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F280C46" Ref="R?"  Part="1" 
AR Path="/5F46110A/5F280C46" Ref="R27"  Part="1" 
F 0 "R27" H 6170 2396 50  0000 L CNN
F 1 "20R" H 6170 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6030 2350 50  0001 C CNN
F 3 "~" H 6100 2350 50  0001 C CNN
	1    6100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1650 5650 1650
Wire Wire Line
	5650 1900 6100 1900
Wire Wire Line
	5650 1400 6750 1400
Text HLabel 5650 1900 0    50   Input ~ 0
LINE_OUT_CBUF
Text HLabel 5650 1400 0    50   Input ~ 0
LINE_OUT_L
Text HLabel 5650 1650 0    50   Input ~ 0
LINE_OUT_R
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 5F599A58
P 4150 4750
F 0 "J6" H 4100 5100 50  0000 L CNN
F 1 "Conn_01x05" H 3950 4400 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x05_P2.00mm_Vertical" H 4150 4750 50  0001 C CNN
F 3 "~" H 4150 4750 50  0001 C CNN
	1    4150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4150 3850 4550
Wire Wire Line
	3850 4550 3950 4550
Wire Wire Line
	3850 4150 4300 4150
Wire Wire Line
	3950 4650 3500 4650
Wire Wire Line
	3500 4650 3500 4300
Wire Wire Line
	3500 4300 3250 4300
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F81C76A
P 4300 4050
AR Path="/5F1CFDB8/5F81C76A" Ref="TP?"  Part="1" 
AR Path="/5F81C76A" Ref="TP?"  Part="1" 
AR Path="/5F46110A/5F81C76A" Ref="TP51"  Part="1" 
F 0 "TP51" H 4453 4105 50  0000 L CNN
F 1 "TestPoint_Probe" H 4453 4060 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4500 4050 50  0001 C CNN
F 3 "~" H 4500 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
Connection ~ 4300 4050
Wire Wire Line
	4300 4050 4850 4050
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F81E861
P 4300 4150
AR Path="/5F1CFDB8/5F81E861" Ref="TP?"  Part="1" 
AR Path="/5F81E861" Ref="TP?"  Part="1" 
AR Path="/5F46110A/5F81E861" Ref="TP52"  Part="1" 
F 0 "TP52" H 4453 4205 50  0000 L CNN
F 1 "TestPoint_Probe" H 4453 4160 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4500 4150 50  0001 C CNN
F 3 "~" H 4500 4150 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
Connection ~ 4300 4150
Wire Wire Line
	4300 4150 4850 4150
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F81EA0C
P 4300 5600
AR Path="/5F1CFDB8/5F81EA0C" Ref="TP?"  Part="1" 
AR Path="/5F81EA0C" Ref="TP?"  Part="1" 
AR Path="/5F46110A/5F81EA0C" Ref="TP54"  Part="1" 
F 0 "TP54" H 4453 5655 50  0000 L CNN
F 1 "TestPoint_Probe" H 4453 5610 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4500 5600 50  0001 C CNN
F 3 "~" H 4500 5600 50  0001 C CNN
	1    4300 5600
	1    0    0    -1  
$EndComp
Connection ~ 4300 5600
Wire Wire Line
	4300 5600 4750 5600
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F81FB3F
P 3450 5850
AR Path="/5F1CFDB8/5F81FB3F" Ref="TP?"  Part="1" 
AR Path="/5F81FB3F" Ref="TP?"  Part="1" 
AR Path="/5F46110A/5F81FB3F" Ref="TP55"  Part="1" 
F 0 "TP55" H 3603 5905 50  0000 L CNN
F 1 "TestPoint_Probe" H 3603 5860 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3650 5850 50  0001 C CNN
F 3 "~" H 3650 5850 50  0001 C CNN
	1    3450 5850
	1    0    0    -1  
$EndComp
Connection ~ 3450 5850
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F81FF98
P 3450 4850
AR Path="/5F1CFDB8/5F81FF98" Ref="TP?"  Part="1" 
AR Path="/5F81FF98" Ref="TP?"  Part="1" 
AR Path="/5F46110A/5F81FF98" Ref="TP53"  Part="1" 
F 0 "TP53" H 3603 4905 50  0000 L CNN
F 1 "TestPoint_Probe" H 3603 4860 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3650 4850 50  0001 C CNN
F 3 "~" H 3650 4850 50  0001 C CNN
	1    3450 4850
	1    0    0    -1  
$EndComp
Connection ~ 3450 4850
Wire Wire Line
	3450 4850 3950 4850
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F8204EF
P 8100 2000
AR Path="/5F1CFDB8/5F8204EF" Ref="TP?"  Part="1" 
AR Path="/5F8204EF" Ref="TP?"  Part="1" 
AR Path="/5F46110A/5F8204EF" Ref="TP48"  Part="1" 
F 0 "TP48" H 8253 2055 50  0000 L CNN
F 1 "TestPoint_Probe" H 8253 2010 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8300 2000 50  0001 C CNN
F 3 "~" H 8300 2000 50  0001 C CNN
	1    8100 2000
	1    0    0    -1  
$EndComp
Connection ~ 8100 2000
Wire Wire Line
	8100 2000 8100 1400
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F821CA2
P 8400 2000
AR Path="/5F1CFDB8/5F821CA2" Ref="TP?"  Part="1" 
AR Path="/5F821CA2" Ref="TP?"  Part="1" 
AR Path="/5F46110A/5F821CA2" Ref="TP49"  Part="1" 
F 0 "TP49" H 8553 2055 50  0000 L CNN
F 1 "TestPoint_Probe" H 8553 2010 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8600 2000 50  0001 C CNN
F 3 "~" H 8600 2000 50  0001 C CNN
	1    8400 2000
	1    0    0    -1  
$EndComp
Connection ~ 8400 2000
Wire Wire Line
	8400 2000 8400 1500
Wire Wire Line
	8700 1600 8700 2150
$EndSCHEMATC
