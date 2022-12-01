EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "USB3 POWER UART"
Date "2020-07-26"
Rev "V1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 5F1D5481
P 1550 3250
AR Path="/5F1D5481" Ref="J?"  Part="1" 
AR Path="/5F1CFDB8/5F1D5481" Ref="J2"  Part="1" 
F 0 "J2" H 1657 4117 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1657 4026 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_Palconn_UTC16-G" H 1700 3250 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1700 3250 50  0001 C CNN
	1    1550 3250
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CH330N U?
U 1 1 5F1D5487
P 4050 6850
AR Path="/5F1D5487" Ref="U?"  Part="1" 
AR Path="/5F1CFDB8/5F1D5487" Ref="U9"  Part="1" 
F 0 "U9" H 3800 7100 50  0000 C CNN
F 1 "CH330N" H 3800 6450 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3900 7600 50  0001 C CNN
F 3 "http://www.wch.cn/downloads/file/240.html" H 3950 7050 50  0001 C CNN
	1    4050 6850
	1    0    0    -1  
$EndComp
$Comp
L A_FX_Library:RT9193 U6
U 1 1 5F1D78EC
P 4100 1200
F 0 "U6" H 4125 1665 50  0000 C CNN
F 1 "RT9193-3.3V" H 4125 1574 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 4100 1750 50  0001 C CNN
F 3 "" H 4100 1750 50  0001 C CNN
	1    4100 1200
	1    0    0    -1  
$EndComp
NoConn ~ 2150 3750
NoConn ~ 2150 3850
NoConn ~ 2150 2950
NoConn ~ 2150 2850
$Comp
L power:+5V #PWR043
U 1 1 5F1E33BD
P 2350 2500
F 0 "#PWR043" H 2350 2350 50  0001 C CNN
F 1 "+5V" H 2365 2673 50  0000 C CNN
F 2 "" H 2350 2500 50  0001 C CNN
F 3 "" H 2350 2500 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2650 2350 2650
Wire Wire Line
	2350 2650 2350 2500
Text Label 2450 3150 0    50   ~ 0
USB_DN
Text Label 2450 3450 0    50   ~ 0
USB_DP
Text Label 2450 3350 0    50   ~ 0
USB_DP
Text Label 2450 3250 0    50   ~ 0
USB_DN
Wire Wire Line
	2150 3150 2750 3150
Wire Wire Line
	2750 3250 2150 3250
Wire Wire Line
	2150 3350 2750 3350
Wire Wire Line
	2750 3450 2150 3450
$Comp
L power:GND #PWR050
U 1 1 5F1E608C
P 1550 4350
F 0 "#PWR050" H 1550 4100 50  0001 C CNN
F 1 "GND" H 1555 4177 50  0000 C CNN
F 2 "" H 1550 4350 50  0001 C CNN
F 3 "" H 1550 4350 50  0001 C CNN
	1    1550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4350 1550 4250
Wire Wire Line
	1250 4150 1250 4250
Wire Wire Line
	1250 4250 1550 4250
Connection ~ 1550 4250
Wire Wire Line
	1550 4250 1550 4150
Wire Wire Line
	3650 6950 2650 6950
Wire Wire Line
	2650 7050 3650 7050
$Comp
L power:GND #PWR061
U 1 1 5F1EB8E4
P 4050 7350
F 0 "#PWR061" H 4050 7100 50  0001 C CNN
F 1 "GND" H 4055 7177 50  0000 C CNN
F 2 "" H 4050 7350 50  0001 C CNN
F 3 "" H 4050 7350 50  0001 C CNN
	1    4050 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1000 3100 850 
Wire Wire Line
	3100 1000 3200 1000
$Comp
L power:GND #PWR035
U 1 1 5F1ED692
P 3300 1500
F 0 "#PWR035" H 3300 1250 50  0001 C CNN
F 1 "GND" H 3305 1327 50  0000 C CNN
F 2 "" H 3300 1500 50  0001 C CNN
F 3 "" H 3300 1500 50  0001 C CNN
	1    3300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1500 3300 1200
Wire Wire Line
	3300 1200 3800 1200
$Comp
L Device:C C15
U 1 1 5F1EDAFB
P 3100 1250
F 0 "C15" H 3250 1350 50  0000 R CNN
F 1 "1uF" H 3250 1150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 1100 50  0001 C CNN
F 3 "~" H 3100 1250 50  0001 C CNN
	1    3100 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 1000 3100 1100
Connection ~ 3100 1000
$Comp
L power:GND #PWR034
U 1 1 5F1F0B20
P 3100 1500
F 0 "#PWR034" H 3100 1250 50  0001 C CNN
F 1 "GND" H 3105 1327 50  0000 C CNN
F 2 "" H 3100 1500 50  0001 C CNN
F 3 "" H 3100 1500 50  0001 C CNN
	1    3100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1500 3100 1400
Wire Wire Line
	3800 1400 3500 1400
Wire Wire Line
	3500 1400 3500 1000
Connection ~ 3500 1000
Wire Wire Line
	3500 1000 3800 1000
$Comp
L Device:C C19
U 1 1 5F1F5B45
P 4600 1600
F 0 "C19" H 4750 1700 50  0000 R CNN
F 1 "22nF" H 4800 1500 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 1450 50  0001 C CNN
F 3 "~" H 4600 1600 50  0001 C CNN
	1    4600 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 1450 4600 1400
Wire Wire Line
	4600 1400 4450 1400
$Comp
L power:GND #PWR040
U 1 1 5F1F7EE9
P 4600 1800
F 0 "#PWR040" H 4600 1550 50  0001 C CNN
F 1 "GND" H 4605 1627 50  0000 C CNN
F 2 "" H 4600 1800 50  0001 C CNN
F 3 "" H 4600 1800 50  0001 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1750 4600 1800
Wire Wire Line
	4950 850  4950 1000
Wire Wire Line
	4950 1000 4450 1000
$Comp
L Device:C C16
U 1 1 5F1FACB9
P 4950 1300
F 0 "C16" H 5100 1400 50  0000 R CNN
F 1 "1uF" H 5100 1200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4988 1150 50  0001 C CNN
F 3 "~" H 4950 1300 50  0001 C CNN
	1    4950 1300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5F1FBAE4
P 4950 1550
F 0 "#PWR036" H 4950 1300 50  0001 C CNN
F 1 "GND" H 4955 1377 50  0000 C CNN
F 2 "" H 4950 1550 50  0001 C CNN
F 3 "" H 4950 1550 50  0001 C CNN
	1    4950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1550 4950 1450
Wire Wire Line
	4950 1150 4950 1000
Connection ~ 4950 1000
$Comp
L A_FX_Library:RT9193 U7
U 1 1 5F20E74D
P 7750 1250
F 0 "U7" H 7775 1715 50  0000 C CNN
F 1 "RT9193-1.8V" H 7775 1624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 7750 1800 50  0001 C CNN
F 3 "" H 7750 1800 50  0001 C CNN
	1    7750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1050 6750 900 
Wire Wire Line
	6750 1050 7150 1050
$Comp
L power:GND #PWR038
U 1 1 5F20E75B
P 6950 1550
F 0 "#PWR038" H 6950 1300 50  0001 C CNN
F 1 "GND" H 6955 1377 50  0000 C CNN
F 2 "" H 6950 1550 50  0001 C CNN
F 3 "" H 6950 1550 50  0001 C CNN
	1    6950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1550 6950 1250
Wire Wire Line
	6950 1250 7450 1250
$Comp
L Device:C C17
U 1 1 5F20E763
P 6750 1300
F 0 "C17" H 6900 1400 50  0000 R CNN
F 1 "1uF" H 6900 1200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6788 1150 50  0001 C CNN
F 3 "~" H 6750 1300 50  0001 C CNN
	1    6750 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 1050 6750 1150
Connection ~ 6750 1050
$Comp
L power:GND #PWR037
U 1 1 5F20E76B
P 6750 1550
F 0 "#PWR037" H 6750 1300 50  0001 C CNN
F 1 "GND" H 6755 1377 50  0000 C CNN
F 2 "" H 6750 1550 50  0001 C CNN
F 3 "" H 6750 1550 50  0001 C CNN
	1    6750 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1550 6750 1450
Wire Wire Line
	7450 1450 7150 1450
Wire Wire Line
	7150 1450 7150 1050
Connection ~ 7150 1050
Wire Wire Line
	7150 1050 7450 1050
$Comp
L Device:C C20
U 1 1 5F20E776
P 8250 1650
F 0 "C20" H 8400 1750 50  0000 R CNN
F 1 "22nF" H 8450 1550 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8288 1500 50  0001 C CNN
F 3 "~" H 8250 1650 50  0001 C CNN
	1    8250 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8250 1500 8250 1450
Wire Wire Line
	8250 1450 8100 1450
$Comp
L power:GND #PWR041
U 1 1 5F20E77E
P 8250 1850
F 0 "#PWR041" H 8250 1600 50  0001 C CNN
F 1 "GND" H 8255 1677 50  0000 C CNN
F 2 "" H 8250 1850 50  0001 C CNN
F 3 "" H 8250 1850 50  0001 C CNN
	1    8250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1800 8250 1850
Wire Wire Line
	8600 900  8600 1050
Wire Wire Line
	8600 1050 8100 1050
$Comp
L Device:C C18
U 1 1 5F20E78D
P 8600 1350
F 0 "C18" H 8750 1450 50  0000 R CNN
F 1 "1uF" H 8750 1250 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8638 1200 50  0001 C CNN
F 3 "~" H 8600 1350 50  0001 C CNN
	1    8600 1350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5F20E793
P 8600 1600
F 0 "#PWR039" H 8600 1350 50  0001 C CNN
F 1 "GND" H 8605 1427 50  0000 C CNN
F 2 "" H 8600 1600 50  0001 C CNN
F 3 "" H 8600 1600 50  0001 C CNN
	1    8600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1600 8600 1500
Wire Wire Line
	8600 1200 8600 1050
Connection ~ 8600 1050
$Comp
L power:+1V8 #PWR033
U 1 1 5F20F14C
P 8600 900
F 0 "#PWR033" H 8600 750 50  0001 C CNN
F 1 "+1V8" H 8615 1073 50  0000 C CNN
F 2 "" H 8600 900 50  0001 C CNN
F 3 "" H 8600 900 50  0001 C CNN
	1    8600 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR031
U 1 1 5F21008D
P 4950 850
F 0 "#PWR031" H 4950 700 50  0001 C CNN
F 1 "+3V3" H 4965 1023 50  0000 C CNN
F 2 "" H 4950 850 50  0001 C CNN
F 3 "" H 4950 850 50  0001 C CNN
	1    4950 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR059
U 1 1 5F217E3C
P 3500 6100
F 0 "#PWR059" H 3500 5950 50  0001 C CNN
F 1 "+3V3" H 3515 6273 50  0000 C CNN
F 2 "" H 3500 6100 50  0001 C CNN
F 3 "" H 3500 6100 50  0001 C CNN
	1    3500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6100 3500 6200
Wire Wire Line
	3650 6750 3500 6750
Wire Wire Line
	3500 6750 3500 6200
Wire Wire Line
	3500 6200 4050 6200
Wire Wire Line
	4050 6200 4050 6550
Connection ~ 3500 6200
NoConn ~ 4450 7050
Wire Wire Line
	4050 7350 4050 7250
$Comp
L Device:C C25
U 1 1 5F220B4C
P 3300 6450
F 0 "C25" H 3450 6550 50  0000 R CNN
F 1 "0.1uF" H 3550 6350 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3338 6300 50  0001 C CNN
F 3 "~" H 3300 6450 50  0001 C CNN
	1    3300 6450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 5F22286F
P 3300 6650
F 0 "#PWR060" H 3300 6400 50  0001 C CNN
F 1 "GND" H 3305 6477 50  0000 C CNN
F 2 "" H 3300 6650 50  0001 C CNN
F 3 "" H 3300 6650 50  0001 C CNN
	1    3300 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6650 3300 6600
Wire Wire Line
	3300 6300 3300 6200
Wire Wire Line
	3300 6200 3500 6200
Text HLabel 5300 6750 2    50   Input ~ 0
CH_UART_TXD
Text HLabel 5300 6850 2    50   Input ~ 0
CH_UART_RXD
Wire Wire Line
	5300 6750 4800 6750
Wire Wire Line
	4450 6850 4800 6850
Text Label 1450 5450 0    50   ~ 0
USB_DP
Text Label 2500 5450 0    50   ~ 0
USB_DN
Wire Wire Line
	2350 5450 2800 5450
Wire Wire Line
	1850 5350 1450 5350
Wire Wire Line
	1850 5550 1450 5550
Wire Wire Line
	2350 5550 2800 5550
Wire Wire Line
	2350 5350 2800 5350
Text Label 1450 5350 0    50   ~ 0
CH330_DP
Text Label 1450 5550 0    50   ~ 0
GL823_DP
Text Label 2500 5350 0    50   ~ 0
CH330_DN
Text Label 2500 5550 0    50   ~ 0
GL823_DN
Text Label 2650 6950 0    50   ~ 0
CH330_DP
Text Label 2650 7050 0    50   ~ 0
CH330_DN
$Comp
L power:GND #PWR054
U 1 1 5F26C6E2
P 5700 5300
F 0 "#PWR054" H 5700 5050 50  0001 C CNN
F 1 "GND" H 5705 5127 50  0000 C CNN
F 2 "" H 5700 5300 50  0001 C CNN
F 3 "" H 5700 5300 50  0001 C CNN
	1    5700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4150 5700 4150
Wire Wire Line
	5700 4150 5700 5300
Text HLabel 5150 4850 0    50   Input ~ 0
GL_TF_PMOS
Wire Wire Line
	5150 4850 5450 4850
Text HLabel 5150 4750 0    50   Input ~ 0
GL_TF_D2
Wire Wire Line
	5150 4750 5300 4750
Text HLabel 5150 4650 0    50   Input ~ 0
GL_TF_D3
Wire Wire Line
	5150 4650 5300 4650
Text HLabel 5150 4550 0    50   Input ~ 0
GL_TF_CMD
Wire Wire Line
	5150 4550 5300 4550
Text HLabel 5150 4450 0    50   Input ~ 0
GL_TF_CLK
Wire Wire Line
	5150 4450 5300 4450
Text HLabel 5150 4350 0    50   Input ~ 0
GL_TF_D0
Wire Wire Line
	5150 4350 5300 4350
Text HLabel 5150 4250 0    50   Input ~ 0
GL_TF_D1
Wire Wire Line
	5150 4250 5300 4250
Text Label 8250 4150 0    50   ~ 0
GL823_DN
Text Label 8250 4250 0    50   ~ 0
GL823_DP
Wire Wire Line
	6750 4250 8600 4250
Wire Wire Line
	6750 4150 8600 4150
$Comp
L A_FX_Library:GL823K U8
U 1 1 5F27E6BF
P 6000 4050
F 0 "U8" H 6100 4100 50  0000 C CNN
F 1 "GL823K" H 6150 3100 50  0000 C CNN
F 2 "Package_SO:SSOP-16_5.3x6.2mm_P0.65mm" H 6000 4050 50  0001 C CNN
F 3 "" H 6000 4050 50  0001 C CNN
	1    6000 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR055
U 1 1 5F282120
P 6900 5300
F 0 "#PWR055" H 6900 5050 50  0001 C CNN
F 1 "GND" H 6905 5127 50  0000 C CNN
F 2 "" H 6900 5300 50  0001 C CNN
F 3 "" H 6900 5300 50  0001 C CNN
	1    6900 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4350 6900 5300
Wire Wire Line
	6900 4350 6750 4350
Wire Wire Line
	7000 4750 6750 4750
Text Label 8250 4550 0    50   ~ 0
GL823_LED
Text Label 8250 4650 0    50   ~ 0
GL823_GPIO
Wire Wire Line
	6750 4650 7550 4650
$Comp
L Device:C C22
U 1 1 5F29930A
P 7300 5050
F 0 "C22" H 7450 5150 50  0000 R CNN
F 1 "0.1uF" H 7550 4950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7338 4900 50  0001 C CNN
F 3 "~" H 7300 5050 50  0001 C CNN
	1    7300 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7300 4850 7300 4900
Wire Wire Line
	6750 4850 7300 4850
$Comp
L power:GND #PWR056
U 1 1 5F29D35A
P 7300 5300
F 0 "#PWR056" H 7300 5050 50  0001 C CNN
F 1 "GND" H 7305 5127 50  0000 C CNN
F 2 "" H 7300 5300 50  0001 C CNN
F 3 "" H 7300 5300 50  0001 C CNN
	1    7300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5300 7300 5200
$Comp
L Device:C C23
U 1 1 5F29F0AC
P 7550 5050
F 0 "C23" H 7500 5150 50  0000 R CNN
F 1 "4.7uF" H 7500 4950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 4900 50  0001 C CNN
F 3 "~" H 7550 5050 50  0001 C CNN
	1    7550 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 4900 7550 4750
Connection ~ 7000 4750
$Comp
L power:GND #PWR057
U 1 1 5F2A1652
P 7550 5300
F 0 "#PWR057" H 7550 5050 50  0001 C CNN
F 1 "GND" H 7555 5127 50  0000 C CNN
F 2 "" H 7550 5300 50  0001 C CNN
F 3 "" H 7550 5300 50  0001 C CNN
	1    7550 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5300 7550 5200
$Comp
L Device:C C21
U 1 1 5F2A4197
P 5450 5000
F 0 "C21" H 5600 5100 50  0000 R CNN
F 1 "4.7uF(NC)" H 5850 4900 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5488 4850 50  0001 C CNN
F 3 "~" H 5450 5000 50  0001 C CNN
	1    5450 5000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5F2A419D
P 5450 5300
F 0 "#PWR053" H 5450 5050 50  0001 C CNN
F 1 "GND" H 5455 5127 50  0000 C CNN
F 2 "" H 5450 5300 50  0001 C CNN
F 3 "" H 5450 5300 50  0001 C CNN
	1    5450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5300 5450 5150
Connection ~ 5450 4850
Wire Wire Line
	5450 4850 5850 4850
$Comp
L Device:C C24
U 1 1 5F2CA32E
P 8000 5050
F 0 "C24" H 7950 5150 50  0000 R CNN
F 1 "10uF" H 7950 4950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8038 4900 50  0001 C CNN
F 3 "~" H 8000 5050 50  0001 C CNN
	1    8000 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 4900 8000 4450
$Comp
L power:GND #PWR058
U 1 1 5F2CDA1E
P 8000 5300
F 0 "#PWR058" H 8000 5050 50  0001 C CNN
F 1 "GND" H 8005 5127 50  0000 C CNN
F 2 "" H 8000 5300 50  0001 C CNN
F 3 "" H 8000 5300 50  0001 C CNN
	1    8000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5300 8000 5200
Connection ~ 7300 4850
Connection ~ 7300 4450
Wire Wire Line
	7300 4450 7550 4450
$Comp
L Device:R R19
U 1 1 5F2D2468
P 10150 3900
F 0 "R19" H 10220 3946 50  0000 L CNN
F 1 "NC(10K)" H 10220 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10080 3900 50  0001 C CNN
F 3 "~" H 10150 3900 50  0001 C CNN
	1    10150 3900
	1    0    0    -1  
$EndComp
Text Label 7100 4450 0    50   ~ 0
GL823_VDD
Text Label 10300 3500 0    50   ~ 0
GL823_VDD
$Comp
L power:GND #PWR052
U 1 1 5F2D8DDF
P 10150 5200
F 0 "#PWR052" H 10150 4950 50  0001 C CNN
F 1 "GND" H 10155 5027 50  0000 C CNN
F 2 "" H 10150 5200 50  0001 C CNN
F 3 "" H 10150 5200 50  0001 C CNN
	1    10150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5F2D9F1E
P 10150 4700
F 0 "R20" H 10220 4746 50  0000 L CNN
F 1 "10K" H 10220 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10080 4700 50  0001 C CNN
F 3 "~" H 10150 4700 50  0001 C CNN
	1    10150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3500 10150 3500
Wire Wire Line
	10150 3500 10150 3750
Wire Wire Line
	10150 4050 10150 4300
Wire Wire Line
	10150 4850 10150 5200
$Comp
L Device:R R18
U 1 1 5F2E0D8B
P 9650 3900
F 0 "R18" H 9720 3946 50  0000 L CNN
F 1 "2.2K" H 9720 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9580 3900 50  0001 C CNN
F 3 "~" H 9650 3900 50  0001 C CNN
	1    9650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3750 9650 3500
Wire Wire Line
	9650 3500 10150 3500
Connection ~ 10150 3500
Text Label 9400 5200 2    50   ~ 0
GL823_LED
$Comp
L Device:LED D4
U 1 1 5F2E4492
P 9650 4700
F 0 "D4" V 9689 4778 50  0000 L CNN
F 1 "LED" V 9598 4778 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 9650 4700 50  0001 C CNN
F 3 "~" H 9650 4700 50  0001 C CNN
	1    9650 4700
	0    1    -1   0   
$EndComp
Wire Wire Line
	9650 4550 9650 4050
Wire Wire Line
	9650 4850 9650 5200
Wire Wire Line
	9650 5200 9000 5200
Wire Wire Line
	10150 4300 10800 4300
Connection ~ 10150 4300
Wire Wire Line
	10150 4300 10150 4550
Text Label 10350 4300 0    50   ~ 0
GL823_GPIO
$Comp
L Connector:TestPoint_Probe TP29
U 1 1 5F4FFABB
P 3200 1000
F 0 "TP29" H 3353 1055 50  0000 L CNN
F 1 "TestPoint_Probe" H 3353 1010 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3400 1000 50  0001 C CNN
F 3 "~" H 3400 1000 50  0001 C CNN
	1    3200 1000
	1    0    0    -1  
$EndComp
Connection ~ 3200 1000
Wire Wire Line
	3200 1000 3500 1000
$Comp
L Connector:TestPoint_Probe TP30
U 1 1 5F501C2A
P 4950 1000
F 0 "TP30" H 5103 1055 50  0000 L CNN
F 1 "TestPoint_Probe" H 5103 1010 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5150 1000 50  0001 C CNN
F 3 "~" H 5150 1000 50  0001 C CNN
	1    4950 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP31
U 1 1 5F502AB0
P 7150 1050
F 0 "TP31" H 7303 1105 50  0000 L CNN
F 1 "TestPoint_Probe" H 7303 1060 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7350 1050 50  0001 C CNN
F 3 "~" H 7350 1050 50  0001 C CNN
	1    7150 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP32
U 1 1 5F505880
P 8600 1050
F 0 "TP32" H 8753 1105 50  0000 L CNN
F 1 "TestPoint_Probe" H 8753 1060 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8800 1050 50  0001 C CNN
F 3 "~" H 8800 1050 50  0001 C CNN
	1    8600 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5F51405B
P 4250 2900
F 0 "R13" H 4320 2946 50  0000 L CNN
F 1 "10K" H 4320 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4180 2900 50  0001 C CNN
F 3 "~" H 4250 2900 50  0001 C CNN
	1    4250 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F514061
P 4250 3300
F 0 "D3" V 4289 3378 50  0000 L CNN
F 1 "LED" V 4198 3378 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 4250 3300 50  0001 C CNN
F 3 "~" H 4250 3300 50  0001 C CNN
	1    4250 3300
	0    1    -1   0   
$EndComp
Wire Wire Line
	4250 3150 4250 3050
$Comp
L power:GND #PWR047
U 1 1 5F52571D
P 4250 3600
F 0 "#PWR047" H 4250 3350 50  0001 C CNN
F 1 "GND" H 4255 3427 50  0000 C CNN
F 2 "" H 4250 3600 50  0001 C CNN
F 3 "" H 4250 3600 50  0001 C CNN
	1    4250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3600 4250 3450
Wire Wire Line
	4250 2550 4250 2750
$Comp
L Diode:1N4007 D2
U 1 1 5F284A24
P 2700 2650
F 0 "D2" H 2700 2750 50  0000 C CNN
F 1 "SS24" H 2700 2550 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 2700 2475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2700 2650 50  0001 C CNN
	1    2700 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 2650 2350 2650
Connection ~ 2350 2650
$Comp
L power:VCC #PWR042
U 1 1 5F28E5BE
P 3900 2400
F 0 "#PWR042" H 3900 2250 50  0001 C CNN
F 1 "VCC" H 3917 2573 50  0000 C CNN
F 2 "" H 3900 2400 50  0001 C CNN
F 3 "" H 3900 2400 50  0001 C CNN
	1    3900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2400 3900 2550
$Comp
L power:VCC #PWR030
U 1 1 5F2926E7
P 3100 850
F 0 "#PWR030" H 3100 700 50  0001 C CNN
F 1 "VCC" H 3117 1023 50  0000 C CNN
F 2 "" H 3100 850 50  0001 C CNN
F 3 "" H 3100 850 50  0001 C CNN
	1    3100 850 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR032
U 1 1 5F292C0F
P 6750 900
F 0 "#PWR032" H 6750 750 50  0001 C CNN
F 1 "VCC" H 6767 1073 50  0000 C CNN
F 2 "" H 6750 900 50  0001 C CNN
F 3 "" H 6750 900 50  0001 C CNN
	1    6750 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5F2943F3
P 3100 3200
F 0 "BT1" H 3208 3246 50  0000 L CNN
F 1 "Battery" H 3208 3155 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 3100 3260 50  0001 C CNN
F 3 "~" V 3100 3260 50  0001 C CNN
	1    3100 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5F294D07
P 3100 3550
F 0 "#PWR046" H 3100 3300 50  0001 C CNN
F 1 "GND" H 3105 3377 50  0000 C CNN
F 2 "" H 3100 3550 50  0001 C CNN
F 3 "" H 3100 3550 50  0001 C CNN
	1    3100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3550 3100 3400
$Comp
L Transistor_FET:Si2319CDS Q?
U 1 1 5F31F42E
P 7100 3050
AR Path="/5F47C3B1/5F31F42E" Ref="Q?"  Part="1" 
AR Path="/5F1CFDB8/5F31F42E" Ref="Q1"  Part="1" 
F 0 "Q1" H 7305 3004 50  0000 L CNN
F 1 "Si2305" H 7305 3095 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7300 2975 50  0001 L CIN
F 3 "http://www.vishay.com/docs/66709/si2319cd.pdf" H 7100 3050 50  0001 L CNN
	1    7100 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5F31F43D
P 7350 2800
AR Path="/5F1CFDB8/5F31F43D" Ref="R12"  Part="1" 
AR Path="/5F31F43D" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F31F43D" Ref="R?"  Part="1" 
F 0 "R12" H 7420 2846 50  0000 L CNN
F 1 "100K" H 7420 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 2800 50  0001 C CNN
F 3 "~" H 7350 2800 50  0001 C CNN
	1    7350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2650 7350 2600
Wire Wire Line
	7350 2600 7000 2600
Connection ~ 7000 2600
Wire Wire Line
	7000 2600 7000 2850
Wire Wire Line
	7350 2950 7350 3050
Wire Wire Line
	7300 3050 7350 3050
Connection ~ 7350 3050
Wire Wire Line
	7350 3050 7350 3100
$Comp
L Device:R R16
U 1 1 5F31F451
P 7850 3300
AR Path="/5F1CFDB8/5F31F451" Ref="R16"  Part="1" 
AR Path="/5F31F451" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F31F451" Ref="R?"  Part="1" 
F 0 "R16" V 7950 3300 50  0000 L CNN
F 1 "2.2K" V 7750 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7780 3300 50  0001 C CNN
F 3 "~" H 7850 3300 50  0001 C CNN
	1    7850 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5F31F457
P 7350 3600
AR Path="/5F1CFDB8/5F31F457" Ref="#PWR048"  Part="1" 
AR Path="/5F31F457" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F31F457" Ref="#PWR?"  Part="1" 
F 0 "#PWR048" H 7350 3350 50  0001 C CNN
F 1 "GND" H 7355 3427 50  0000 C CNN
F 2 "" H 7350 3600 50  0001 C CNN
F 3 "" H 7350 3600 50  0001 C CNN
	1    7350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3600 7350 3500
Wire Wire Line
	7700 3300 7650 3300
Wire Wire Line
	8000 3300 8100 3300
$Comp
L Device:R R17
U 1 1 5F31F460
P 8100 3550
AR Path="/5F1CFDB8/5F31F460" Ref="R17"  Part="1" 
AR Path="/5F31F460" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F31F460" Ref="R?"  Part="1" 
F 0 "R17" H 8170 3596 50  0000 L CNN
F 1 "100K" H 8170 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8030 3550 50  0001 C CNN
F 3 "~" H 8100 3550 50  0001 C CNN
	1    8100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3400 8100 3300
Connection ~ 8100 3300
Wire Wire Line
	8100 3300 8300 3300
$Comp
L power:GND #PWR049
U 1 1 5F31F469
P 8100 3750
AR Path="/5F1CFDB8/5F31F469" Ref="#PWR049"  Part="1" 
AR Path="/5F31F469" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F31F469" Ref="#PWR?"  Part="1" 
F 0 "#PWR049" H 8100 3500 50  0001 C CNN
F 1 "GND" H 8105 3577 50  0000 C CNN
F 2 "" H 8100 3750 50  0001 C CNN
F 3 "" H 8100 3750 50  0001 C CNN
	1    8100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3750 8100 3700
Wire Wire Line
	7000 3250 7000 3500
Text Label 8200 3300 0    50   ~ 0
SD_READ_ON
$Comp
L Connector:TestPoint_Probe TP34
U 1 1 5F400D62
P 3100 2950
F 0 "TP34" H 3253 3005 50  0000 L CNN
F 1 "TestPoint_Probe" H 3253 2960 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3300 2950 50  0001 C CNN
F 3 "~" H 3300 2950 50  0001 C CNN
	1    3100 2950
	1    0    0    -1  
$EndComp
Connection ~ 3100 2950
Wire Wire Line
	3100 2950 3100 3000
Wire Wire Line
	3100 2650 3100 2950
Wire Wire Line
	3100 2650 2850 2650
Wire Wire Line
	3400 2650 3100 2650
Connection ~ 3100 2650
Wire Wire Line
	3900 2550 3800 2550
$Comp
L Switch:SW_Push_SPDT SW5
U 1 1 5F46A58A
P 3600 2650
F 0 "SW5" H 3550 2800 50  0000 C CNN
F 1 "SW_Push_SPDT" H 3750 2450 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 3600 2650 50  0001 C CNN
F 3 "~" H 3600 2650 50  0001 C CNN
	1    3600 2650
	1    0    0    -1  
$EndComp
NoConn ~ 3800 2750
Wire Wire Line
	4250 2550 3900 2550
Connection ~ 3900 2550
$Comp
L Connector:TestPoint_Probe TP33
U 1 1 5F4BEBC1
P 4250 2550
F 0 "TP33" H 4403 2605 50  0000 L CNN
F 1 "TestPoint_Probe" H 4403 2560 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4450 2550 50  0001 C CNN
F 3 "~" H 4450 2550 50  0001 C CNN
	1    4250 2550
	1    0    0    -1  
$EndComp
Connection ~ 4250 2550
$Comp
L Device:R R15
U 1 1 5F432863
P 6450 3100
AR Path="/5F1CFDB8/5F432863" Ref="R15"  Part="1" 
AR Path="/5F432863" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F432863" Ref="R?"  Part="1" 
F 0 "R15" H 6520 3146 50  0000 L CNN
F 1 "NC(0R)" H 6520 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6380 3100 50  0001 C CNN
F 3 "~" H 6450 3100 50  0001 C CNN
	1    6450 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 2950 6450 2600
Wire Wire Line
	6450 2600 7000 2600
Wire Wire Line
	6450 3250 6450 3500
Wire Wire Line
	6450 3500 7000 3500
Connection ~ 7000 3500
Wire Wire Line
	7000 3500 7000 4750
$Comp
L power:VCC #PWR044
U 1 1 5F4429F3
P 7000 2500
F 0 "#PWR044" H 7000 2350 50  0001 C CNN
F 1 "VCC" H 7017 2673 50  0000 C CNN
F 2 "" H 7000 2500 50  0001 C CNN
F 3 "" H 7000 2500 50  0001 C CNN
	1    7000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2500 7000 2600
$Comp
L Device:R R14
U 1 1 5F44CFF1
P 8100 2950
AR Path="/5F1CFDB8/5F44CFF1" Ref="R14"  Part="1" 
AR Path="/5F44CFF1" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F44CFF1" Ref="R?"  Part="1" 
F 0 "R14" H 8170 2996 50  0000 L CNN
F 1 "NC(0R)" H 8170 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8030 2950 50  0001 C CNN
F 3 "~" H 8100 2950 50  0001 C CNN
	1    8100 2950
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR045
U 1 1 5F44D841
P 8100 2650
F 0 "#PWR045" H 8100 2500 50  0001 C CNN
F 1 "VCC" H 8117 2823 50  0000 C CNN
F 2 "" H 8100 2650 50  0001 C CNN
F 3 "" H 8100 2650 50  0001 C CNN
	1    8100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2650 8100 2800
Wire Wire Line
	8100 3100 8100 3300
$Comp
L Device:R R21
U 1 1 5F457B27
P 1300 5100
AR Path="/5F1CFDB8/5F457B27" Ref="R21"  Part="1" 
AR Path="/5F457B27" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F457B27" Ref="R?"  Part="1" 
F 0 "R21" H 1370 5146 50  0000 L CNN
F 1 "NC(10K)" H 1370 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1230 5100 50  0001 C CNN
F 3 "~" H 1300 5100 50  0001 C CNN
	1    1300 5100
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR051
U 1 1 5F459D87
P 1300 4850
F 0 "#PWR051" H 1300 4700 50  0001 C CNN
F 1 "+3V3" H 1315 5023 50  0000 C CNN
F 2 "" H 1300 4850 50  0001 C CNN
F 3 "" H 1300 4850 50  0001 C CNN
	1    1300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4850 1300 4950
Wire Wire Line
	1300 5250 1300 5450
Wire Wire Line
	1300 5450 1850 5450
Wire Wire Line
	1300 5450 1000 5450
Connection ~ 1300 5450
$Comp
L Connector:TestPoint_Probe TP43
U 1 1 5F628414
P 7550 4650
F 0 "TP43" H 7703 4705 50  0000 L CNN
F 1 "TestPoint_Probe" H 7703 4660 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7750 4650 50  0001 C CNN
F 3 "~" H 7750 4650 50  0001 C CNN
	1    7550 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP41
U 1 1 5F62A77C
P 7550 4550
F 0 "TP41" H 7703 4605 50  0000 L CNN
F 1 "TestPoint_Probe" H 7703 4560 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7750 4550 50  0001 C CNN
F 3 "~" H 7750 4550 50  0001 C CNN
	1    7550 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP46
U 1 1 5F62B99F
P 4800 6750
F 0 "TP46" H 4953 6805 50  0000 L CNN
F 1 "TestPoint_Probe" H 4953 6760 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5000 6750 50  0001 C CNN
F 3 "~" H 5000 6750 50  0001 C CNN
	1    4800 6750
	1    0    0    -1  
$EndComp
Connection ~ 4800 6750
Wire Wire Line
	4800 6750 4450 6750
$Comp
L Connector:TestPoint_Probe TP47
U 1 1 5F62CF1E
P 4800 6850
F 0 "TP47" H 4953 6905 50  0000 L CNN
F 1 "TestPoint_Probe" H 4953 6860 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5000 6850 50  0001 C CNN
F 3 "~" H 5000 6850 50  0001 C CNN
	1    4800 6850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP36
U 1 1 5F631F72
P 5300 4250
F 0 "TP36" H 5453 4305 50  0000 L CNN
F 1 "TestPoint_Probe" H 5453 4260 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5500 4250 50  0001 C CNN
F 3 "~" H 5500 4250 50  0001 C CNN
	1    5300 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP37
U 1 1 5F636DB3
P 5300 4350
F 0 "TP37" H 5453 4405 50  0000 L CNN
F 1 "TestPoint_Probe" H 5453 4360 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5500 4350 50  0001 C CNN
F 3 "~" H 5500 4350 50  0001 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP38
U 1 1 5F63BD6A
P 5300 4450
F 0 "TP38" H 5453 4505 50  0000 L CNN
F 1 "TestPoint_Probe" H 5453 4460 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5500 4450 50  0001 C CNN
F 3 "~" H 5500 4450 50  0001 C CNN
	1    5300 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP40
U 1 1 5F640B9B
P 5300 4550
F 0 "TP40" H 5453 4605 50  0000 L CNN
F 1 "TestPoint_Probe" H 5453 4560 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5500 4550 50  0001 C CNN
F 3 "~" H 5500 4550 50  0001 C CNN
	1    5300 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP42
U 1 1 5F64604F
P 5300 4650
F 0 "TP42" H 5453 4705 50  0000 L CNN
F 1 "TestPoint_Probe" H 5453 4660 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5500 4650 50  0001 C CNN
F 3 "~" H 5500 4650 50  0001 C CNN
	1    5300 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP44
U 1 1 5F64AD49
P 5300 4750
F 0 "TP44" H 5453 4805 50  0000 L CNN
F 1 "TestPoint_Probe" H 5453 4760 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5500 4750 50  0001 C CNN
F 3 "~" H 5500 4750 50  0001 C CNN
	1    5300 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP45
U 1 1 5F6512F6
P 7550 4750
F 0 "TP45" H 7703 4805 50  0000 L CNN
F 1 "TestPoint_Probe" H 7703 4760 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7750 4750 50  0001 C CNN
F 3 "~" H 7750 4750 50  0001 C CNN
	1    7550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4750 7550 4750
Wire Wire Line
	7300 4450 7300 4850
Wire Wire Line
	6750 4550 7550 4550
Wire Wire Line
	6750 4450 7300 4450
Connection ~ 5300 4250
Wire Wire Line
	5300 4250 5850 4250
Connection ~ 5300 4350
Wire Wire Line
	5300 4350 5850 4350
Connection ~ 5300 4450
Wire Wire Line
	5300 4450 5850 4450
Connection ~ 5300 4750
Wire Wire Line
	5300 4750 5850 4750
Connection ~ 5300 4650
Wire Wire Line
	5300 4650 5850 4650
Connection ~ 5300 4550
Wire Wire Line
	5300 4550 5850 4550
Connection ~ 4800 6850
Wire Wire Line
	4800 6850 5300 6850
Connection ~ 7550 4750
Connection ~ 7550 4650
Wire Wire Line
	7550 4650 8600 4650
Connection ~ 7550 4550
Wire Wire Line
	7550 4550 8600 4550
$Comp
L Connector:TestPoint_Probe TP39
U 1 1 5F663E8B
P 7550 4450
F 0 "TP39" H 7703 4505 50  0000 L CNN
F 1 "TestPoint_Probe" H 7703 4460 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7750 4450 50  0001 C CNN
F 3 "~" H 7750 4450 50  0001 C CNN
	1    7550 4450
	1    0    0    -1  
$EndComp
Connection ~ 7550 4450
Wire Wire Line
	7550 4450 8000 4450
$Comp
L Connector:TestPoint_Probe TP35
U 1 1 5F664537
P 7350 3050
F 0 "TP35" H 7503 3105 50  0000 L CNN
F 1 "TestPoint_Probe" H 7503 3060 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 3050 50  0001 C CNN
F 3 "~" H 7550 3050 50  0001 C CNN
	1    7350 3050
	1    0    0    -1  
$EndComp
$Comp
L A_FX_Library:Conn_02x03_Counter_Clockwise J3
U 1 1 5F7A1B5C
P 2050 5450
F 0 "J3" H 2050 5650 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 2100 5200 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x03_P2.00mm_Vertical" H 2050 5450 50  0001 C CNN
F 3 "~" H 2050 5450 50  0001 C CNN
	1    2050 5450
	1    0    0    -1  
$EndComp
$Comp
L A_FX_Library:S8050 Q2
U 1 1 5F7FF0A1
P 7450 3300
F 0 "Q2" H 7641 3346 50  0000 L CNN
F 1 "S8050" H 7641 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7650 3225 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 7450 3300 50  0001 L CNN
	1    7450 3300
	-1   0    0    -1  
$EndComp
$EndSCHEMATC