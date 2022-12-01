EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Connector:Micro_SD_Card_Det J?
U 1 1 5F481453
P 9200 3600
AR Path="/5F481453" Ref="J?"  Part="1" 
AR Path="/5F47C3B1/5F481453" Ref="J8"  Part="1" 
F 0 "J8" H 9150 4417 50  0000 C CNN
F 1 "Micro_SD_Card_Det" H 9150 4326 50  0000 C CNN
F 2 "Connector_Card:SD-MINI-X" H 11250 4300 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 9200 3700 50  0001 C CNN
	1    9200 3600
	1    0    0    -1  
$EndComp
$Comp
L A_FX_Library:AT93C66A U?
U 1 1 5F488811
P 1900 5950
AR Path="/5F488811" Ref="U?"  Part="1" 
AR Path="/5F47C3B1/5F488811" Ref="U10"  Part="1" 
F 0 "U10" H 1950 6000 50  0000 C CNN
F 1 "AT93C66A" H 2100 5400 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 1900 5950 50  0001 C CNN
F 3 "" H 1900 5950 50  0001 C CNN
	1    1900 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F488817
P 2900 5900
AR Path="/5F1CFDB8/5F488817" Ref="#PWR?"  Part="1" 
AR Path="/5F488817" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F488817" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 2900 5750 50  0001 C CNN
F 1 "+3V3" H 2915 6073 50  0000 C CNN
F 2 "" H 2900 5900 50  0001 C CNN
F 3 "" H 2900 5900 50  0001 C CNN
	1    2900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5900 2900 5950
Wire Wire Line
	2900 6050 2700 6050
$Comp
L power:GND #PWR?
U 1 1 5F48881F
P 2900 6500
AR Path="/5F1CFDB8/5F48881F" Ref="#PWR?"  Part="1" 
AR Path="/5F48881F" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F48881F" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 2900 6250 50  0001 C CNN
F 1 "GND" H 2905 6327 50  0000 C CNN
F 2 "" H 2900 6500 50  0001 C CNN
F 3 "" H 2900 6500 50  0001 C CNN
	1    2900 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6500 2900 6350
Wire Wire Line
	2900 6350 2700 6350
Wire Wire Line
	1750 6150 1600 6150
Text Label 1100 6050 0    50   ~ 0
SPI_CS
Text Label 1100 6150 0    50   ~ 0
SPI_SCK
Text Label 1100 6250 0    50   ~ 0
SPI_DI
Text Label 1100 6350 0    50   ~ 0
SPI_DO
$Comp
L Memory_Flash:W25Q32JVSS U?
U 1 1 5F488842
P 5150 6300
AR Path="/5F488842" Ref="U?"  Part="1" 
AR Path="/5F47C3B1/5F488842" Ref="U11"  Part="1" 
F 0 "U11" H 4800 6650 50  0000 C CNN
F 1 "W25Q32JVSS" H 4800 5950 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 5150 6300 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 5150 6300 50  0001 C CNN
	1    5150 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F4A7BCD
P 3650 6150
AR Path="/5F1CFDB8/5F4A7BCD" Ref="C?"  Part="1" 
AR Path="/5F4A7BCD" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F4A7BCD" Ref="C35"  Part="1" 
F 0 "C35" H 3600 6250 50  0000 R CNN
F 1 "0.1uF" H 3600 6050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3688 6000 50  0001 C CNN
F 3 "~" H 3650 6150 50  0001 C CNN
	1    3650 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 6000 3650 5950
Wire Wire Line
	3650 5950 3400 5950
Connection ~ 2900 5950
Wire Wire Line
	2900 5950 2900 6050
$Comp
L power:GND #PWR?
U 1 1 5F4A7F71
P 3650 6500
AR Path="/5F1CFDB8/5F4A7F71" Ref="#PWR?"  Part="1" 
AR Path="/5F4A7F71" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F4A7F71" Ref="#PWR083"  Part="1" 
F 0 "#PWR083" H 3650 6250 50  0001 C CNN
F 1 "GND" H 3655 6327 50  0000 C CNN
F 2 "" H 3650 6500 50  0001 C CNN
F 3 "" H 3650 6500 50  0001 C CNN
	1    3650 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6500 3650 6350
$Comp
L power:+3V3 #PWR?
U 1 1 5F4AA137
P 5150 5650
AR Path="/5F1CFDB8/5F4AA137" Ref="#PWR?"  Part="1" 
AR Path="/5F4AA137" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F4AA137" Ref="#PWR080"  Part="1" 
F 0 "#PWR080" H 5150 5500 50  0001 C CNN
F 1 "+3V3" H 5165 5823 50  0000 C CNN
F 2 "" H 5150 5650 50  0001 C CNN
F 3 "" H 5150 5650 50  0001 C CNN
	1    5150 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5650 5150 5800
Wire Wire Line
	4650 6200 4350 6200
Text Label 4350 6200 0    50   ~ 0
SPI_CS
Text Label 4350 6400 0    50   ~ 0
SPI_SCK
Wire Wire Line
	4350 6400 4650 6400
$Comp
L power:GND #PWR?
U 1 1 5F4AC3CE
P 5150 6850
AR Path="/5F1CFDB8/5F4AC3CE" Ref="#PWR?"  Part="1" 
AR Path="/5F4AC3CE" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F4AC3CE" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 5150 6600 50  0001 C CNN
F 1 "GND" H 5155 6677 50  0000 C CNN
F 2 "" H 5150 6850 50  0001 C CNN
F 3 "" H 5150 6850 50  0001 C CNN
	1    5150 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6850 5150 6700
$Comp
L Device:C C?
U 1 1 5F4AD8A4
P 5800 6650
AR Path="/5F1CFDB8/5F4AD8A4" Ref="C?"  Part="1" 
AR Path="/5F4AD8A4" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F4AD8A4" Ref="C36"  Part="1" 
F 0 "C36" H 5750 6750 50  0000 R CNN
F 1 "0.1uF" H 5750 6550 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5838 6500 50  0001 C CNN
F 3 "~" H 5800 6650 50  0001 C CNN
	1    5800 6650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4AD8AC
P 5800 6850
AR Path="/5F1CFDB8/5F4AD8AC" Ref="#PWR?"  Part="1" 
AR Path="/5F4AD8AC" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F4AD8AC" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 5800 6600 50  0001 C CNN
F 1 "GND" H 5805 6677 50  0000 C CNN
F 2 "" H 5800 6850 50  0001 C CNN
F 3 "" H 5800 6850 50  0001 C CNN
	1    5800 6850
	1    0    0    -1  
$EndComp
Connection ~ 5150 5800
Wire Wire Line
	5150 5800 5150 5900
Wire Wire Line
	5800 6850 5800 6800
Wire Wire Line
	5800 5800 5800 6400
Connection ~ 5800 6500
Wire Wire Line
	5650 6500 5800 6500
Wire Wire Line
	5150 5800 5800 5800
Wire Wire Line
	5650 6400 5800 6400
Connection ~ 5800 6400
Wire Wire Line
	5800 6400 5800 6500
Text Label 5950 6100 0    50   ~ 0
SPI_DI
Wire Wire Line
	6200 6100 5650 6100
Wire Wire Line
	5650 6200 6200 6200
Text Label 5950 6200 0    50   ~ 0
SPI_DO
NoConn ~ 1600 2650
NoConn ~ 1600 3950
Wire Wire Line
	1600 900  950  900 
Wire Wire Line
	1600 1000 950  1000
Wire Wire Line
	1600 1100 950  1100
Text Label 950  800  0    50   ~ 0
SPI_CS
Text Label 950  900  0    50   ~ 0
SPI_SCK
Text Label 950  1000 0    50   ~ 0
SPI_DI
Text Label 950  1100 0    50   ~ 0
SPI_DO
Wire Wire Line
	950  800  1600 800 
Text HLabel 1600 800  2    50   Input ~ 0
SPI_CS
Text HLabel 1600 900  2    50   Input ~ 0
SPI_SCK
Text HLabel 1600 1000 2    50   Input ~ 0
SPI_DI
Text HLabel 1600 1100 2    50   Input ~ 0
SPI_DO
$Comp
L Device:R R?
U 1 1 5F537B54
P 1600 6650
AR Path="/5F1CFDB8/5F537B54" Ref="R?"  Part="1" 
AR Path="/5F537B54" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F537B54" Ref="R46"  Part="1" 
F 0 "R46" H 1670 6696 50  0000 L CNN
F 1 "100K" H 1670 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1530 6650 50  0001 C CNN
F 3 "~" H 1600 6650 50  0001 C CNN
	1    1600 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F53812D
P 1600 6900
AR Path="/5F1CFDB8/5F53812D" Ref="#PWR?"  Part="1" 
AR Path="/5F53812D" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F53812D" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 1600 6650 50  0001 C CNN
F 1 "GND" H 1605 6727 50  0000 C CNN
F 2 "" H 1600 6900 50  0001 C CNN
F 3 "" H 1600 6900 50  0001 C CNN
	1    1600 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6900 1600 6800
Wire Wire Line
	1600 6500 1600 6150
Connection ~ 1600 6150
$Comp
L power:GND #PWR?
U 1 1 5F5397D9
P 10150 4250
AR Path="/5F1CFDB8/5F5397D9" Ref="#PWR?"  Part="1" 
AR Path="/5F5397D9" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F5397D9" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 10150 4000 50  0001 C CNN
F 1 "GND" H 10155 4077 50  0000 C CNN
F 2 "" H 10150 4250 50  0001 C CNN
F 3 "" H 10150 4250 50  0001 C CNN
	1    10150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4250 10150 4100
Wire Wire Line
	10150 4100 10000 4100
Wire Wire Line
	6000 3200 6600 3200
Text Label 6000 3200 0    50   ~ 0
TF_DATA2
Wire Wire Line
	6000 3300 6850 3300
Text Label 6000 3300 0    50   ~ 0
TF_DATA3
Wire Wire Line
	6000 3400 7600 3400
Text Label 6000 3400 0    50   ~ 0
TF_CMD
Wire Wire Line
	6000 3600 7750 3600
Text Label 6000 3600 0    50   ~ 0
TF_CLK
$Comp
L power:GND #PWR?
U 1 1 5F53ECDC
P 8150 4300
AR Path="/5F1CFDB8/5F53ECDC" Ref="#PWR?"  Part="1" 
AR Path="/5F53ECDC" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F53ECDC" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 8150 4050 50  0001 C CNN
F 1 "GND" H 8155 4127 50  0000 C CNN
F 2 "" H 8150 4300 50  0001 C CNN
F 3 "" H 8150 4300 50  0001 C CNN
	1    8150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4300 8150 4100
Wire Wire Line
	8150 3700 8300 3700
Wire Wire Line
	6000 3800 7100 3800
Text Label 6000 3800 0    50   ~ 0
TF_DATA0
Wire Wire Line
	6000 3900 7350 3900
Text Label 6000 3900 0    50   ~ 0
TF_DATA1
Wire Wire Line
	8300 4100 8150 4100
Connection ~ 8150 4100
Wire Wire Line
	8150 4100 8150 4000
Wire Wire Line
	8300 4000 8150 4000
Connection ~ 8150 4000
Wire Wire Line
	8150 4000 8150 3700
$Comp
L A_FX_Library:FPC14 J?
U 1 1 5F481459
P 1400 3350
AR Path="/5F481459" Ref="J?"  Part="1" 
AR Path="/5F47C3B1/5F481459" Ref="J7"  Part="1" 
F 0 "J7" H 1400 2550 50  0000 L CNN
F 1 "FPC14" H 1300 4100 50  0000 L CNN
F 2 "Connector_FFC-FPC:TE_1-1734839-4_1x14-1MP_P0.5mm_Horizontal" H 1400 3350 50  0001 C CNN
F 3 "~" H 1400 3350 50  0001 C CNN
	1    1400 3350
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F547D3F
P 8150 2500
AR Path="/5F1CFDB8/5F547D3F" Ref="#PWR?"  Part="1" 
AR Path="/5F547D3F" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F547D3F" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 8150 2350 50  0001 C CNN
F 1 "+3V3" H 8165 2673 50  0000 C CNN
F 2 "" H 8150 2500 50  0001 C CNN
F 3 "" H 8150 2500 50  0001 C CNN
	1    8150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2500 8150 2550
Wire Wire Line
	8000 1000 9100 1000
Text Label 8000 1000 0    50   ~ 0
TF_DATA0
Wire Wire Line
	8000 1100 9100 1100
Text Label 8000 1100 0    50   ~ 0
TF_DATA1
Wire Wire Line
	8000 1500 9100 1500
Text Label 8000 1500 0    50   ~ 0
TF_CMD
Wire Wire Line
	8000 1600 9100 1600
Text Label 8000 1600 0    50   ~ 0
TF_CLK
Wire Wire Line
	8000 1200 9100 1200
Text Label 8000 1200 0    50   ~ 0
TF_DATA2
Wire Wire Line
	8000 1300 9100 1300
Text Label 8000 1300 0    50   ~ 0
TF_DATA3
Text HLabel 9100 1000 2    50   Input ~ 0
TF_DATA0
Text HLabel 9100 1100 2    50   Input ~ 0
TF_DATA1
Text HLabel 9100 1200 2    50   Input ~ 0
TF_DATA2
Text HLabel 9100 1300 2    50   Input ~ 0
TF_DATA3
Text HLabel 9100 1500 2    50   Input ~ 0
TF_CMD
Text HLabel 9100 1600 2    50   Input ~ 0
TF_CLK
$Comp
L power:GND #PWR?
U 1 1 5F4D3AD4
P 1900 4200
AR Path="/5F1CFDB8/5F4D3AD4" Ref="#PWR?"  Part="1" 
AR Path="/5F4D3AD4" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F4D3AD4" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 1900 3950 50  0001 C CNN
F 1 "GND" H 1905 4027 50  0000 C CNN
F 2 "" H 1900 4200 50  0001 C CNN
F 3 "" H 1900 4200 50  0001 C CNN
	1    1900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4200 1900 4150
Wire Wire Line
	1900 3850 1600 3850
Wire Wire Line
	1600 2750 1900 2750
Wire Wire Line
	1900 2750 1900 3550
Connection ~ 1900 3850
Wire Wire Line
	1600 2850 2500 2850
$Comp
L power:+3V3 #PWR?
U 1 1 5F4D9931
P 2050 2000
AR Path="/5F1CFDB8/5F4D9931" Ref="#PWR?"  Part="1" 
AR Path="/5F4D9931" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F4D9931" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 2050 1850 50  0001 C CNN
F 1 "+3V3" H 2065 2173 50  0000 C CNN
F 2 "" H 2050 2000 50  0001 C CNN
F 3 "" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2000 2050 2050
Wire Wire Line
	2050 2950 1600 2950
Wire Wire Line
	1600 3050 2050 3050
Wire Wire Line
	2050 3050 2050 2950
Connection ~ 2050 2950
Wire Wire Line
	1600 3150 2500 3150
Wire Wire Line
	1600 3350 2500 3350
Wire Wire Line
	1600 3550 1900 3550
Connection ~ 1900 3550
Wire Wire Line
	1900 3550 1900 3750
Wire Wire Line
	1600 3750 1900 3750
Connection ~ 1900 3750
Wire Wire Line
	1900 3750 1900 3850
Wire Wire Line
	6100 1000 5450 1000
Text HLabel 6100 1000 2    50   Input ~ 0
VS_RESET_n
Text Label 5450 1000 0    50   ~ 0
RESET_n
Text Label 2100 3450 0    50   ~ 0
RESET_n
Wire Wire Line
	1150 4100 1150 4150
Wire Wire Line
	1150 4150 1900 4150
Connection ~ 1900 4150
Wire Wire Line
	1900 4150 1900 3850
Wire Wire Line
	1150 2500 1150 2450
Wire Wire Line
	1150 2450 1900 2450
Wire Wire Line
	1900 2450 1900 2750
Connection ~ 1900 2750
Text Label 2100 3350 0    50   ~ 0
LCD_RS
Text Label 2100 2850 0    50   ~ 0
LCD_CS
Text Label 2100 3150 0    50   ~ 0
LCD_CLK
Text Label 2100 3250 0    50   ~ 0
LCD_SI
Wire Wire Line
	3150 800  3800 800 
Wire Wire Line
	3150 900  3800 900 
Wire Wire Line
	3150 1000 3800 1000
Wire Wire Line
	3150 1100 3800 1100
Text Label 3150 1100 0    50   ~ 0
LCD_RS
Text Label 3150 800  0    50   ~ 0
LCD_CS
Text Label 3150 900  0    50   ~ 0
LCD_CLK
Text Label 3150 1000 0    50   ~ 0
LCD_SI
Text HLabel 3800 800  2    50   Input ~ 0
LCD_CS
Text HLabel 3800 900  2    50   Input ~ 0
LCD_CLK
Text HLabel 3800 1000 2    50   Input ~ 0
LCD_SI
Text HLabel 3800 1100 2    50   Input ~ 0
LCD_RS
$Comp
L Transistor_FET:Si2319CDS Q3
U 1 1 5F272E50
P 3500 3250
F 0 "Q3" H 3705 3204 50  0000 L CNN
F 1 "Si2305" H 3705 3295 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3700 3175 50  0001 L CIN
F 3 "http://www.vishay.com/docs/66709/si2319cd.pdf" H 3500 3250 50  0001 L CNN
	1    3500 3250
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5F2A1E7F
P 3400 2150
AR Path="/5F1CFDB8/5F2A1E7F" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F2A1E7F" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 3400 2000 50  0001 C CNN
F 1 "VCC" H 3417 2323 50  0000 C CNN
F 2 "" H 3400 2150 50  0001 C CNN
F 3 "" H 3400 2150 50  0001 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2150 3400 2400
Wire Wire Line
	3400 3450 3400 3650
Wire Wire Line
	1600 3650 2500 3650
$Comp
L Device:R R?
U 1 1 5F2B0850
P 3900 2800
AR Path="/5F1CFDB8/5F2B0850" Ref="R?"  Part="1" 
AR Path="/5F2B0850" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F2B0850" Ref="R35"  Part="1" 
F 0 "R35" H 3970 2846 50  0000 L CNN
F 1 "100K" H 3970 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3830 2800 50  0001 C CNN
F 3 "~" H 3900 2800 50  0001 C CNN
	1    3900 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2650 3900 2400
Wire Wire Line
	3900 2400 3400 2400
Connection ~ 3400 2400
Wire Wire Line
	3400 2400 3400 3050
Wire Wire Line
	3900 2950 3900 3250
Wire Wire Line
	3700 3250 3900 3250
Connection ~ 3900 3250
Wire Wire Line
	3900 3250 3900 3450
$Comp
L Device:R R?
U 1 1 5F2C49D3
P 4400 3650
AR Path="/5F1CFDB8/5F2C49D3" Ref="R?"  Part="1" 
AR Path="/5F2C49D3" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F2C49D3" Ref="R42"  Part="1" 
F 0 "R42" V 4500 3650 50  0000 L CNN
F 1 "2.2K" V 4300 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4330 3650 50  0001 C CNN
F 3 "~" H 4400 3650 50  0001 C CNN
	1    4400 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2C549E
P 3900 4200
AR Path="/5F1CFDB8/5F2C549E" Ref="#PWR?"  Part="1" 
AR Path="/5F2C549E" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F2C549E" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 3900 3950 50  0001 C CNN
F 1 "GND" H 3905 4027 50  0000 C CNN
F 2 "" H 3900 4200 50  0001 C CNN
F 3 "" H 3900 4200 50  0001 C CNN
	1    3900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4200 3900 3850
Wire Wire Line
	4250 3650 4200 3650
Wire Wire Line
	4550 3650 4650 3650
$Comp
L Device:R R?
U 1 1 5F2CEF17
P 4650 4000
AR Path="/5F1CFDB8/5F2CEF17" Ref="R?"  Part="1" 
AR Path="/5F2CEF17" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F2CEF17" Ref="R43"  Part="1" 
F 0 "R43" H 4720 4046 50  0000 L CNN
F 1 "100K" H 4720 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 4000 50  0001 C CNN
F 3 "~" H 4650 4000 50  0001 C CNN
	1    4650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3850 4650 3650
Connection ~ 4650 3650
Wire Wire Line
	4650 3650 4850 3650
$Comp
L power:GND #PWR?
U 1 1 5F2D2346
P 4650 4200
AR Path="/5F1CFDB8/5F2D2346" Ref="#PWR?"  Part="1" 
AR Path="/5F2D2346" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F2D2346" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 4650 3950 50  0001 C CNN
F 1 "GND" H 4655 4027 50  0000 C CNN
F 2 "" H 4650 4200 50  0001 C CNN
F 3 "" H 4650 4200 50  0001 C CNN
	1    4650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4200 4650 4150
Text Label 4750 3650 0    50   ~ 0
LCD_PWR_ON
Text Label 3150 1200 0    50   ~ 0
LCD_PWR_ON
Wire Wire Line
	3150 1200 3800 1200
Text HLabel 3800 1200 2    50   Input ~ 0
LCD_PWR_ON
Wire Wire Line
	1100 6050 1450 6050
$Comp
L Device:R R?
U 1 1 5F7C9132
P 3150 6250
AR Path="/5F1CFDB8/5F7C9132" Ref="R?"  Part="1" 
AR Path="/5F7C9132" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F7C9132" Ref="R44"  Part="1" 
F 0 "R44" H 3220 6296 50  0000 L CNN
F 1 "NC(10K)" H 3220 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3080 6250 50  0001 C CNN
F 3 "~" H 3150 6250 50  0001 C CNN
	1    3150 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7CA0CA
P 3150 6350
AR Path="/5F1CFDB8/5F7CA0CA" Ref="R?"  Part="1" 
AR Path="/5F7CA0CA" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F7CA0CA" Ref="R45"  Part="1" 
F 0 "R45" H 3220 6396 50  0000 L CNN
F 1 "10K" H 3220 6305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3080 6350 50  0001 C CNN
F 3 "~" H 3150 6350 50  0001 C CNN
	1    3150 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 6250 3000 6250
Wire Wire Line
	3000 6350 3000 6250
Connection ~ 3000 6250
Wire Wire Line
	3300 6250 3400 6250
Wire Wire Line
	3400 6250 3400 5950
Connection ~ 3400 5950
Wire Wire Line
	3400 5950 2900 5950
Wire Wire Line
	3300 6350 3650 6350
Connection ~ 3650 6350
Wire Wire Line
	3650 6350 3650 6300
$Comp
L Device:R R?
U 1 1 5F493667
P 3000 3000
AR Path="/5F1CFDB8/5F493667" Ref="R?"  Part="1" 
AR Path="/5F493667" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F493667" Ref="R41"  Part="1" 
F 0 "R41" H 3070 3046 50  0000 L CNN
F 1 "NC(0R)" H 3070 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2930 3000 50  0001 C CNN
F 3 "~" H 3000 3000 50  0001 C CNN
	1    3000 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 2850 3000 2400
Wire Wire Line
	3000 2400 3400 2400
Wire Wire Line
	3000 3150 3000 3650
Connection ~ 3000 3650
Wire Wire Line
	3000 3650 3400 3650
$Comp
L Device:C C?
U 1 1 5F49DE5B
P 2300 2250
AR Path="/5F1CFDB8/5F49DE5B" Ref="C?"  Part="1" 
AR Path="/5F49DE5B" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F49DE5B" Ref="C33"  Part="1" 
F 0 "C33" H 2250 2350 50  0000 R CNN
F 1 "0.1uF" H 2250 2150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2338 2100 50  0001 C CNN
F 3 "~" H 2300 2250 50  0001 C CNN
	1    2300 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F4A35D7
P 2600 2250
AR Path="/5F1CFDB8/5F4A35D7" Ref="C?"  Part="1" 
AR Path="/5F4A35D7" Ref="C?"  Part="1" 
AR Path="/5F47C3B1/5F4A35D7" Ref="C34"  Part="1" 
F 0 "C34" H 2550 2350 50  0000 R CNN
F 1 "0.1uF" H 2550 2150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2638 2100 50  0001 C CNN
F 3 "~" H 2600 2250 50  0001 C CNN
	1    2600 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 2100 2300 2050
Wire Wire Line
	2300 2050 2050 2050
Connection ~ 2050 2050
Wire Wire Line
	2050 2050 2050 2950
Wire Wire Line
	2600 2100 2600 2050
Wire Wire Line
	2600 2050 2300 2050
Connection ~ 2300 2050
$Comp
L power:GND #PWR?
U 1 1 5F4AB867
P 2300 2500
AR Path="/5F1CFDB8/5F4AB867" Ref="#PWR?"  Part="1" 
AR Path="/5F4AB867" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F4AB867" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 2300 2250 50  0001 C CNN
F 1 "GND" H 2305 2327 50  0000 C CNN
F 2 "" H 2300 2500 50  0001 C CNN
F 3 "" H 2300 2500 50  0001 C CNN
	1    2300 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4AC47B
P 2600 2500
AR Path="/5F1CFDB8/5F4AC47B" Ref="#PWR?"  Part="1" 
AR Path="/5F4AC47B" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F4AC47B" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 2600 2250 50  0001 C CNN
F 1 "GND" H 2605 2327 50  0000 C CNN
F 2 "" H 2600 2500 50  0001 C CNN
F 3 "" H 2600 2500 50  0001 C CNN
	1    2600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2500 2300 2400
Wire Wire Line
	2600 2500 2600 2400
Wire Wire Line
	8150 3500 8300 3500
$Comp
L Device:R R?
U 1 1 5F4D1E95
P 6600 2800
AR Path="/5F1CFDB8/5F4D1E95" Ref="R?"  Part="1" 
AR Path="/5F4D1E95" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F4D1E95" Ref="R36"  Part="1" 
F 0 "R36" V 6500 2900 50  0000 L CNN
F 1 "NC(10K)" V 6700 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6530 2800 50  0001 C CNN
F 3 "~" H 6600 2800 50  0001 C CNN
	1    6600 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F4D70B8
P 6850 2800
AR Path="/5F1CFDB8/5F4D70B8" Ref="R?"  Part="1" 
AR Path="/5F4D70B8" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F4D70B8" Ref="R37"  Part="1" 
F 0 "R37" V 6750 2900 50  0000 L CNN
F 1 "NC(10K)" V 6950 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6780 2800 50  0001 C CNN
F 3 "~" H 6850 2800 50  0001 C CNN
	1    6850 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F4D73DE
P 7100 2800
AR Path="/5F1CFDB8/5F4D73DE" Ref="R?"  Part="1" 
AR Path="/5F4D73DE" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F4D73DE" Ref="R38"  Part="1" 
F 0 "R38" V 7000 2900 50  0000 L CNN
F 1 "NC(10K)" V 7200 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7030 2800 50  0001 C CNN
F 3 "~" H 7100 2800 50  0001 C CNN
	1    7100 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F4D7695
P 7350 2800
AR Path="/5F1CFDB8/5F4D7695" Ref="R?"  Part="1" 
AR Path="/5F4D7695" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F4D7695" Ref="R39"  Part="1" 
F 0 "R39" V 7250 2900 50  0000 L CNN
F 1 "NC(10K)" V 7450 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 2800 50  0001 C CNN
F 3 "~" H 7350 2800 50  0001 C CNN
	1    7350 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F4D8006
P 7600 2800
AR Path="/5F1CFDB8/5F4D8006" Ref="R?"  Part="1" 
AR Path="/5F4D8006" Ref="R?"  Part="1" 
AR Path="/5F47C3B1/5F4D8006" Ref="R40"  Part="1" 
F 0 "R40" V 7500 2900 50  0000 L CNN
F 1 "NC(10K)" V 7700 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7530 2800 50  0001 C CNN
F 3 "~" H 7600 2800 50  0001 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2550 7600 2550
Wire Wire Line
	6600 2550 6600 2650
Connection ~ 8150 2550
Wire Wire Line
	8150 2550 8150 3500
Wire Wire Line
	6850 2650 6850 2550
Connection ~ 6850 2550
Wire Wire Line
	6850 2550 6600 2550
Wire Wire Line
	7100 2650 7100 2550
Connection ~ 7100 2550
Wire Wire Line
	7100 2550 6850 2550
Wire Wire Line
	7350 2650 7350 2550
Connection ~ 7350 2550
Wire Wire Line
	7350 2550 7100 2550
Wire Wire Line
	7600 2650 7600 2550
Connection ~ 7600 2550
Wire Wire Line
	7600 2550 7350 2550
Wire Wire Line
	6600 2950 6600 3200
Connection ~ 6600 3200
Wire Wire Line
	6600 3200 7750 3200
Wire Wire Line
	6850 2950 6850 3300
Connection ~ 6850 3300
Wire Wire Line
	6850 3300 7750 3300
Wire Wire Line
	7100 2950 7100 3800
Connection ~ 7100 3800
Wire Wire Line
	7100 3800 7750 3800
Wire Wire Line
	7350 2950 7350 3900
Connection ~ 7350 3900
Wire Wire Line
	7350 3900 7750 3900
Wire Wire Line
	7600 2950 7600 3400
Connection ~ 7600 3400
Wire Wire Line
	7600 3400 7750 3400
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6977A4
P 2500 3650
AR Path="/5F1CFDB8/5F6977A4" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6977A4" Ref="TP67"  Part="1" 
F 0 "TP67" H 2653 3705 50  0000 L CNN
F 1 "TestPoint_Probe" H 2653 3660 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2700 3650 50  0001 C CNN
F 3 "~" H 2700 3650 50  0001 C CNN
	1    2500 3650
	1    0    0    -1  
$EndComp
Connection ~ 2500 3650
Wire Wire Line
	2500 3650 3000 3650
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F69E02C
P 2500 3350
AR Path="/5F1CFDB8/5F69E02C" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F69E02C" Ref="TP63"  Part="1" 
F 0 "TP63" H 2653 3405 50  0000 L CNN
F 1 "TestPoint_Probe" H 2653 3360 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2700 3350 50  0001 C CNN
F 3 "~" H 2700 3350 50  0001 C CNN
	1    2500 3350
	1    0    0    -1  
$EndComp
Connection ~ 2500 3350
Wire Wire Line
	2500 3350 2550 3350
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F69E410
P 2500 3150
AR Path="/5F1CFDB8/5F69E410" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F69E410" Ref="TP58"  Part="1" 
F 0 "TP58" H 2653 3205 50  0000 L CNN
F 1 "TestPoint_Probe" H 2653 3160 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2700 3150 50  0001 C CNN
F 3 "~" H 2700 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
Connection ~ 2500 3150
Wire Wire Line
	2500 3150 2550 3150
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F69E616
P 2500 2850
AR Path="/5F1CFDB8/5F69E616" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F69E616" Ref="TP57"  Part="1" 
F 0 "TP57" H 2653 2905 50  0000 L CNN
F 1 "TestPoint_Probe" H 2653 2860 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2700 2850 50  0001 C CNN
F 3 "~" H 2700 2850 50  0001 C CNN
	1    2500 2850
	1    0    0    -1  
$EndComp
Connection ~ 2500 2850
Wire Wire Line
	2500 2850 2550 2850
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F69EA78
P 3900 3250
AR Path="/5F1CFDB8/5F69EA78" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F69EA78" Ref="TP61"  Part="1" 
F 0 "TP61" H 4053 3305 50  0000 L CNN
F 1 "TestPoint_Probe" H 4053 3260 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4100 3250 50  0001 C CNN
F 3 "~" H 4100 3250 50  0001 C CNN
	1    3900 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F69F109
P 1450 6050
AR Path="/5F1CFDB8/5F69F109" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F69F109" Ref="TP75"  Part="1" 
F 0 "TP75" H 1603 6105 50  0000 L CNN
F 1 "TestPoint_Probe" H 1603 6060 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1650 6050 50  0001 C CNN
F 3 "~" H 1650 6050 50  0001 C CNN
	1    1450 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F69FC8E
P 1450 6150
AR Path="/5F1CFDB8/5F69FC8E" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F69FC8E" Ref="TP76"  Part="1" 
F 0 "TP76" H 1603 6205 50  0000 L CNN
F 1 "TestPoint_Probe" H 1603 6160 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1650 6150 50  0001 C CNN
F 3 "~" H 1650 6150 50  0001 C CNN
	1    1450 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F69FF33
P 1450 6250
AR Path="/5F1CFDB8/5F69FF33" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F69FF33" Ref="TP77"  Part="1" 
F 0 "TP77" H 1603 6305 50  0000 L CNN
F 1 "TestPoint_Probe" H 1603 6260 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1650 6250 50  0001 C CNN
F 3 "~" H 1650 6250 50  0001 C CNN
	1    1450 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6A01DE
P 1450 6350
AR Path="/5F1CFDB8/5F6A01DE" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6A01DE" Ref="TP78"  Part="1" 
F 0 "TP78" H 1603 6405 50  0000 L CNN
F 1 "TestPoint_Probe" H 1603 6360 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1650 6350 50  0001 C CNN
F 3 "~" H 1650 6350 50  0001 C CNN
	1    1450 6350
	1    0    0    -1  
$EndComp
Connection ~ 1450 6250
Wire Wire Line
	1450 6250 1100 6250
Connection ~ 1450 6150
Wire Wire Line
	1450 6150 1100 6150
Connection ~ 1450 6050
Connection ~ 1450 6350
Wire Wire Line
	1450 6350 1100 6350
Wire Wire Line
	1450 6350 1750 6350
Wire Wire Line
	1450 6250 1750 6250
Wire Wire Line
	1450 6150 1600 6150
Wire Wire Line
	1450 6050 1750 6050
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6A1740
P 7750 3200
AR Path="/5F1CFDB8/5F6A1740" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6A1740" Ref="TP59"  Part="1" 
F 0 "TP59" H 7903 3255 50  0000 L CNN
F 1 "TestPoint_Probe" H 7903 3210 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7950 3200 50  0001 C CNN
F 3 "~" H 7950 3200 50  0001 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
Connection ~ 7750 3200
Wire Wire Line
	7750 3200 8300 3200
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6A3BF8
P 7750 3300
AR Path="/5F1CFDB8/5F6A3BF8" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6A3BF8" Ref="TP62"  Part="1" 
F 0 "TP62" H 7903 3355 50  0000 L CNN
F 1 "TestPoint_Probe" H 7903 3310 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7950 3300 50  0001 C CNN
F 3 "~" H 7950 3300 50  0001 C CNN
	1    7750 3300
	1    0    0    -1  
$EndComp
Connection ~ 7750 3300
Wire Wire Line
	7750 3300 8300 3300
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6A3E11
P 7750 3400
AR Path="/5F1CFDB8/5F6A3E11" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6A3E11" Ref="TP64"  Part="1" 
F 0 "TP64" H 7903 3455 50  0000 L CNN
F 1 "TestPoint_Probe" H 7903 3410 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7950 3400 50  0001 C CNN
F 3 "~" H 7950 3400 50  0001 C CNN
	1    7750 3400
	1    0    0    -1  
$EndComp
Connection ~ 7750 3400
Wire Wire Line
	7750 3400 8300 3400
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6A4029
P 7750 3600
AR Path="/5F1CFDB8/5F6A4029" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6A4029" Ref="TP66"  Part="1" 
F 0 "TP66" H 7903 3655 50  0000 L CNN
F 1 "TestPoint_Probe" H 7903 3610 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7950 3600 50  0001 C CNN
F 3 "~" H 7950 3600 50  0001 C CNN
	1    7750 3600
	1    0    0    -1  
$EndComp
Connection ~ 7750 3600
Wire Wire Line
	7750 3600 8300 3600
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6A4275
P 7750 3800
AR Path="/5F1CFDB8/5F6A4275" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6A4275" Ref="TP68"  Part="1" 
F 0 "TP68" H 7903 3855 50  0000 L CNN
F 1 "TestPoint_Probe" H 7903 3810 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7950 3800 50  0001 C CNN
F 3 "~" H 7950 3800 50  0001 C CNN
	1    7750 3800
	1    0    0    -1  
$EndComp
Connection ~ 7750 3800
Wire Wire Line
	7750 3800 8300 3800
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6A4606
P 7750 3900
AR Path="/5F1CFDB8/5F6A4606" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6A4606" Ref="TP69"  Part="1" 
F 0 "TP69" H 7903 3955 50  0000 L CNN
F 1 "TestPoint_Probe" H 7903 3910 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7950 3900 50  0001 C CNN
F 3 "~" H 7950 3900 50  0001 C CNN
	1    7750 3900
	1    0    0    -1  
$EndComp
Connection ~ 7750 3900
Wire Wire Line
	7750 3900 8300 3900
$Comp
L power:GND #PWR?
U 1 1 5F6A4FC8
P 8300 5500
AR Path="/5F1CFDB8/5F6A4FC8" Ref="#PWR?"  Part="1" 
AR Path="/5F6A4FC8" Ref="#PWR?"  Part="1" 
AR Path="/5F47C3B1/5F6A4FC8" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 8300 5250 50  0001 C CNN
F 1 "GND" H 8305 5327 50  0000 C CNN
F 2 "" H 8300 5500 50  0001 C CNN
F 3 "" H 8300 5500 50  0001 C CNN
	1    8300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5500 8300 5350
Wire Wire Line
	8300 5350 8650 5350
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6ACA9E
P 8300 5350
AR Path="/5F1CFDB8/5F6ACA9E" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6ACA9E" Ref="TP71"  Part="1" 
F 0 "TP71" H 8453 5405 50  0000 L CNN
F 1 "TestPoint_Probe" H 8453 5360 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8500 5350 50  0001 C CNN
F 3 "~" H 8500 5350 50  0001 C CNN
	1    8300 5350
	1    0    0    -1  
$EndComp
Connection ~ 8300 5350
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6AD025
P 8650 5350
AR Path="/5F1CFDB8/5F6AD025" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6AD025" Ref="TP72"  Part="1" 
F 0 "TP72" H 8803 5405 50  0000 L CNN
F 1 "TestPoint_Probe" H 8803 5360 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8850 5350 50  0001 C CNN
F 3 "~" H 8850 5350 50  0001 C CNN
	1    8650 5350
	1    0    0    -1  
$EndComp
Connection ~ 8650 5350
Wire Wire Line
	8650 5350 9000 5350
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6AD383
P 9000 5350
AR Path="/5F1CFDB8/5F6AD383" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6AD383" Ref="TP73"  Part="1" 
F 0 "TP73" H 9153 5405 50  0000 L CNN
F 1 "TestPoint_Probe" H 9153 5360 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9200 5350 50  0001 C CNN
F 3 "~" H 9200 5350 50  0001 C CNN
	1    9000 5350
	1    0    0    -1  
$EndComp
Connection ~ 9000 5350
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6AD75A
P 9300 5350
AR Path="/5F1CFDB8/5F6AD75A" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6AD75A" Ref="TP74"  Part="1" 
F 0 "TP74" H 9453 5405 50  0000 L CNN
F 1 "TestPoint_Probe" H 9453 5360 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9500 5350 50  0001 C CNN
F 3 "~" H 9500 5350 50  0001 C CNN
	1    9300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5350 9300 5350
Connection ~ 9300 5350
Wire Wire Line
	9300 5350 9600 5350
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6B552F
P 10150 4100
AR Path="/5F1CFDB8/5F6B552F" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6B552F" Ref="TP70"  Part="1" 
F 0 "TP70" H 10303 4155 50  0000 L CNN
F 1 "TestPoint_Probe" H 10303 4110 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10350 4100 50  0001 C CNN
F 3 "~" H 10350 4100 50  0001 C CNN
	1    10150 4100
	1    0    0    -1  
$EndComp
Connection ~ 10150 4100
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F6B5ABB
P 6600 2550
AR Path="/5F1CFDB8/5F6B5ABB" Ref="TP?"  Part="1" 
AR Path="/5F47C3B1/5F6B5ABB" Ref="TP56"  Part="1" 
F 0 "TP56" H 6753 2605 50  0000 L CNN
F 1 "TestPoint_Probe" H 6753 2560 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6800 2550 50  0001 C CNN
F 3 "~" H 6800 2550 50  0001 C CNN
	1    6600 2550
	1    0    0    -1  
$EndComp
Connection ~ 6600 2550
$Comp
L A_FX_Library:S8050 Q4
U 1 1 5F803A3A
P 4000 3650
F 0 "Q4" H 4191 3696 50  0000 L CNN
F 1 "S8050" H 4191 3605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 3575 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 4000 3650 50  0001 L CNN
	1    4000 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 3450 2550 3450
Wire Wire Line
	1600 3250 2550 3250
$EndSCHEMATC
