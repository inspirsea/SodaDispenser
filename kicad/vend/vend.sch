EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Text Notes 9700 1600 0    60   ~ 0
1
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 5F118A39
P 3350 2250
F 0 "K1" H 3780 2296 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 3780 2205 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 3800 2200 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 3350 2250 50  0001 C CNN
	1    3350 2250
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K2
U 1 1 5F12F444
P 3150 3700
F 0 "K2" H 3580 3746 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 3580 3655 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 3600 3650 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 3150 3700 50  0001 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D2
U 1 1 5F149194
P 2700 2250
F 0 "D2" V 2746 2171 50  0000 R CNN
F 1 "1N4001" V 2655 2171 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2700 2075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2700 2250 50  0001 C CNN
	1    2700 2250
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4001 D1
U 1 1 5F149FB8
P 2550 3700
F 0 "D1" V 2504 3779 50  0000 L CNN
F 1 "1N4001" V 2595 3779 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2550 3525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2550 3700 50  0001 C CNN
	1    2550 3700
	0    1    1    0   
$EndComp
Text Label 2250 4300 0    50   ~ 0
Price1
$Comp
L power:+5V #PWR0101
U 1 1 5F15DC1B
P 2350 2500
F 0 "#PWR0101" H 2350 2350 50  0001 C CNN
F 1 "+5V" V 2350 2700 50  0000 C CNN
F 2 "" H 2350 2500 50  0000 C CNN
F 3 "" H 2350 2500 50  0000 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U1
U 1 1 5F163D4F
P 7000 5350
F 0 "U1" H 7000 5675 50  0000 C CNN
F 1 "PC817" H 7000 5584 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 6800 5150 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 7000 5350 50  0001 L CNN
	1    7000 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F179CFB
P 4750 6750
F 0 "#PWR0102" H 4750 6500 50  0001 C CNN
F 1 "GND" H 4750 6600 50  0000 C CNN
F 2 "" H 4750 6750 50  0000 C CNN
F 3 "" H 4750 6750 50  0000 C CNN
	1    4750 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F17A522
P 4750 1350
F 0 "#PWR0103" H 4750 1100 50  0001 C CNN
F 1 "GND" H 4750 1200 50  0000 C CNN
F 2 "" H 4750 1350 50  0000 C CNN
F 3 "" H 4750 1350 50  0000 C CNN
	1    4750 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F1B8182
P 5800 5200
F 0 "R3" V 5593 5200 50  0000 C CNN
F 1 "10k" V 5684 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 5200 50  0001 C CNN
F 3 "~" H 5800 5200 50  0001 C CNN
	1    5800 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F1CB982
P 7450 5550
F 0 "#PWR0104" H 7450 5300 50  0001 C CNN
F 1 "GND" H 7450 5400 50  0000 C CNN
F 2 "" H 7450 5550 50  0000 C CNN
F 3 "" H 7450 5550 50  0000 C CNN
	1    7450 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5F1CC5E7
P 7750 5400
F 0 "C1" H 7868 5446 50  0000 L CNN
F 1 "4.7u" H 7868 5355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7788 5250 50  0001 C CNN
F 3 "~" H 7750 5400 50  0001 C CNN
	1    7750 5400
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U2
U 1 1 5F1E1C93
P 7000 3100
F 0 "U2" H 7000 3425 50  0000 C CNN
F 1 "PC817" H 7000 3334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 6800 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 7000 3100 50  0001 L CNN
	1    7000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F1E1CA8
P 5800 2950
F 0 "R4" V 5593 2950 50  0000 C CNN
F 1 "10k" V 5684 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 2950 50  0001 C CNN
F 3 "~" H 5800 2950 50  0001 C CNN
	1    5800 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F1E1CB9
P 7450 3250
F 0 "#PWR0106" H 7450 3000 50  0001 C CNN
F 1 "GND" H 7450 3100 50  0000 C CNN
F 2 "" H 7450 3250 50  0000 C CNN
F 3 "" H 7450 3250 50  0000 C CNN
	1    7450 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5F1E1CBF
P 7800 3150
F 0 "C2" H 7918 3196 50  0000 L CNN
F 1 "4.7u" H 7918 3105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7838 3000 50  0001 C CNN
F 3 "~" H 7800 3150 50  0001 C CNN
	1    7800 3150
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U3
U 1 1 5F1E8505
P 7000 4250
F 0 "U3" H 7000 4575 50  0000 C CNN
F 1 "PC817" H 7000 4484 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 6800 4050 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 7000 4250 50  0001 L CNN
	1    7000 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F1E851A
P 5800 4100
F 0 "R5" V 5593 4100 50  0000 C CNN
F 1 "10k" V 5684 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 4100 50  0001 C CNN
F 3 "~" H 5800 4100 50  0001 C CNN
	1    5800 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F1E852B
P 7450 4400
F 0 "#PWR0108" H 7450 4150 50  0001 C CNN
F 1 "GND" H 7450 4250 50  0000 C CNN
F 2 "" H 7450 4400 50  0000 C CNN
F 3 "" H 7450 4400 50  0000 C CNN
	1    7450 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5F1E8531
P 7800 4300
F 0 "C3" H 7918 4346 50  0000 L CNN
F 1 "4.7u" H 7918 4255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7838 4150 50  0001 C CNN
F 3 "~" H 7800 4300 50  0001 C CNN
	1    7800 4300
	1    0    0    -1  
$EndComp
Text Label 1000 5500 0    50   ~ 0
24VACNeutral
$Comp
L Device:R R1
U 1 1 5F21AEB3
P 5400 950
F 0 "R1" V 5193 950 50  0000 C CNN
F 1 "10k" V 5284 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5330 950 50  0001 C CNN
F 3 "~" H 5400 950 50  0001 C CNN
	1    5400 950 
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F21BA1B
P 5900 6350
F 0 "R2" V 5693 6350 50  0000 C CNN
F 1 "10k" V 5784 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5830 6350 50  0001 C CNN
F 3 "~" H 5900 6350 50  0001 C CNN
	1    5900 6350
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 5F151DEF
P 6100 2950
F 0 "D4" H 6100 2734 50  0000 C CNN
F 1 "1N4148" H 6100 2825 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6100 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6100 2950 50  0001 C CNN
	1    6100 2950
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 5F152CBF
P 6100 4100
F 0 "D5" H 6100 3884 50  0000 C CNN
F 1 "1N4148" H 6100 3975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6100 3925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6100 4100 50  0001 C CNN
	1    6100 4100
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D7
U 1 1 5F155F01
P 6450 3100
F 0 "D7" V 6404 3179 50  0000 L CNN
F 1 "1N4148" V 6495 3179 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 2925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6450 3100 50  0001 C CNN
	1    6450 3100
	0    1    1    0   
$EndComp
Text Label 10550 2800 0    60   ~ 0
2
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
Wire Wire Line
	2550 3550 2550 3400
Wire Wire Line
	2550 3400 2800 3400
Wire Wire Line
	2550 3850 2550 4000
Wire Wire Line
	2550 4000 2800 4000
Wire Wire Line
	2700 2100 2700 1950
Wire Wire Line
	2700 1950 2900 1950
Wire Wire Line
	3150 2550 2800 2550
Wire Wire Line
	2700 2400 2700 2550
Connection ~ 2800 2550
Wire Wire Line
	2800 2550 2700 2550
Connection ~ 2800 3400
Wire Wire Line
	2800 3400 2950 3400
Wire Wire Line
	4750 650  4750 750 
Connection ~ 2900 1950
Wire Wire Line
	2900 1950 3150 1950
Wire Wire Line
	4750 6000 4750 6150
Connection ~ 2800 4000
Wire Wire Line
	2800 4000 2950 4000
Connection ~ 9300 2200
Wire Wire Line
	9400 2200 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Wire Line
	4750 1150 4750 1350
Wire Wire Line
	4750 6550 4750 6750
Wire Wire Line
	6700 5200 6700 5250
Wire Wire Line
	6700 5500 6700 5450
Wire Wire Line
	7300 5450 7450 5450
Wire Wire Line
	6700 2950 6700 3000
Wire Wire Line
	6700 3250 6700 3200
Wire Wire Line
	7300 3200 7450 3200
Wire Wire Line
	7450 3200 7450 3250
Wire Wire Line
	6700 4100 6700 4150
Wire Wire Line
	6700 4400 6700 4350
Wire Wire Line
	7800 4500 7800 4450
Connection ~ 7800 4150
Wire Wire Line
	7300 4350 7450 4350
Wire Wire Line
	7450 4350 7450 4400
Wire Wire Line
	5050 6350 5750 6350
Wire Wire Line
	5050 950  5250 950 
Wire Wire Line
	6250 4100 6450 4100
Connection ~ 6450 4100
Wire Wire Line
	6450 4100 6700 4100
Connection ~ 6450 4400
Wire Wire Line
	6450 4400 6700 4400
Wire Wire Line
	6250 2950 6450 2950
Wire Wire Line
	6250 5200 6450 5200
Connection ~ 6450 2950
Wire Wire Line
	6450 2950 6700 2950
Connection ~ 6450 3250
Wire Wire Line
	6450 3250 6700 3250
Connection ~ 6450 5200
Wire Wire Line
	6450 5200 6700 5200
Wire Wire Line
	9400 1800 8800 1800
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	7750 5250 7300 5250
Wire Wire Line
	7450 5450 7450 5550
Wire Wire Line
	7750 5550 7450 5550
Connection ~ 7450 5550
Wire Wire Line
	7300 3000 7800 3000
Wire Wire Line
	7450 3200 7600 3200
Wire Wire Line
	7600 3200 7600 3300
Wire Wire Line
	7600 3300 7800 3300
Connection ~ 7450 3200
Wire Wire Line
	7300 4150 7800 4150
Wire Wire Line
	7800 4500 7600 4500
Wire Wire Line
	7600 4500 7600 4350
Wire Wire Line
	7600 4350 7450 4350
Connection ~ 7450 4350
Wire Wire Line
	5450 4400 6450 4400
Wire Wire Line
	5450 3250 6450 3250
Wire Wire Line
	6050 6350 11000 6350
Wire Wire Line
	7800 4150 10900 4150
Wire Wire Line
	7800 3000 8100 3000
Connection ~ 7800 3000
Wire Wire Line
	10200 2600 10850 2600
Connection ~ 7750 5250
Wire Wire Line
	10200 2700 10800 2700
$Comp
L Connector_Generic:Conn_01x08 J6
U 1 1 5F343C57
P 8500 2600
F 0 "J6" H 8418 3117 50  0000 C CNN
F 1 "Conn_01x08" H 8418 3026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 8500 2600 50  0001 C CNN
F 3 "~" H 8500 2600 50  0001 C CNN
	1    8500 2600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5F35BC16
P 8850 2150
F 0 "#PWR0105" H 8850 2000 50  0001 C CNN
F 1 "+5V" V 8850 2350 50  0000 C CNN
F 2 "" H 8850 2150 50  0000 C CNN
F 3 "" H 8850 2150 50  0000 C CNN
	1    8850 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F3634F0
P 8800 3200
F 0 "#PWR0107" H 8800 2950 50  0001 C CNN
F 1 "GND" H 8800 3050 50  0000 C CNN
F 2 "" H 8800 3200 50  0000 C CNN
F 3 "" H 8800 3200 50  0000 C CNN
	1    8800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3000 9400 3000
Wire Wire Line
	8700 2900 9400 2900
Wire Wire Line
	8700 2800 9400 2800
Wire Wire Line
	8700 2700 9400 2700
Wire Wire Line
	8700 2600 9400 2600
Wire Wire Line
	8700 2500 9400 2500
Wire Wire Line
	8700 2400 8800 2400
Wire Wire Line
	8800 2400 8800 3200
Wire Wire Line
	8700 2300 8850 2300
Wire Wire Line
	8850 2300 8850 2150
Wire Wire Line
	10850 3650 10850 2600
Wire Wire Line
	10900 2500 10900 4150
Wire Wire Line
	10200 2500 10900 2500
Wire Wire Line
	10200 2400 10950 2400
Wire Wire Line
	3250 3400 3250 3300
Wire Wire Line
	3250 3300 2050 3300
Wire Wire Line
	2050 3300 2050 1600
Wire Wire Line
	2050 1600 3450 1600
Wire Wire Line
	3450 1600 3450 1950
Text Label 1200 3300 0    50   ~ 0
Safety
Wire Wire Line
	10950 2400 10950 3550
Wire Wire Line
	10200 2300 11000 2300
Wire Wire Line
	7750 5250 10800 5250
Wire Wire Line
	10800 2700 10800 5250
Wire Wire Line
	8100 3000 8100 3650
Wire Wire Line
	8100 3650 10850 3650
Wire Wire Line
	8200 3550 8200 950 
Wire Wire Line
	8200 3550 10950 3550
Wire Wire Line
	5550 950  8200 950 
Wire Wire Line
	3850 4300 3850 4100
Wire Wire Line
	3850 3300 3450 3300
Wire Wire Line
	3450 3300 3450 3400
Wire Wire Line
	3350 4000 4450 4000
Wire Wire Line
	3650 1450 3650 1800
Connection ~ 3650 1800
Wire Wire Line
	3650 1800 3650 1950
Wire Wire Line
	11000 2300 11000 6350
Wire Wire Line
	2800 6000 4750 6000
Wire Wire Line
	2800 4000 2800 6000
Wire Wire Line
	4450 3650 5450 3650
Connection ~ 4450 3650
Connection ~ 5450 3650
Wire Wire Line
	5450 3650 5450 3250
Wire Wire Line
	4450 3650 4450 4000
Wire Wire Line
	5050 1800 5050 2950
Wire Wire Line
	5050 2950 5650 2950
Wire Wire Line
	3650 1800 5050 1800
Wire Wire Line
	2900 650  2900 1950
Wire Wire Line
	2900 650  4750 650 
Wire Wire Line
	2800 2550 2800 2750
Wire Wire Line
	2350 2750 2800 2750
Wire Wire Line
	2350 2500 2350 2750
Connection ~ 2800 2750
Wire Wire Line
	2800 2750 2800 3400
Wire Wire Line
	4450 2950 4450 3650
Wire Wire Line
	3550 2550 3550 2950
Connection ~ 3550 2950
Wire Wire Line
	3550 2950 4450 2950
Wire Wire Line
	5450 4400 5450 3650
Wire Wire Line
	5650 4100 3850 4100
Connection ~ 3850 4100
Wire Wire Line
	3850 4100 3850 3300
Connection ~ 6450 5500
Wire Wire Line
	6450 5500 6700 5500
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5F411D99
P 650 1800
F 0 "J1" H 568 2217 50  0000 C CNN
F 1 "Conn_01x06" H 568 2126 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-6_P5.08mm" H 650 1800 50  0001 C CNN
F 3 "~" H 650 1800 50  0001 C CNN
	1    650  1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 2950 1250 1800
Wire Wire Line
	1250 2950 3550 2950
Wire Wire Line
	950  5500 6450 5500
Wire Wire Line
	900  5500 950  5500
Connection ~ 950  5500
Text Label 1400 2950 0    50   ~ 0
24VAC
Connection ~ 2050 3300
Text Label 1200 5200 0    50   ~ 0
block
Wire Wire Line
	1350 1450 3650 1450
Wire Wire Line
	850  1600 1750 1600
Wire Wire Line
	1750 1600 1750 4300
Wire Wire Line
	1750 4300 3850 4300
Wire Wire Line
	950  2000 950  5500
Wire Wire Line
	950  2000 850  2000
Wire Wire Line
	1100 1900 850  1900
Wire Wire Line
	1250 1800 850  1800
Wire Wire Line
	1350 1700 1350 1450
Wire Wire Line
	1350 1700 850  1700
Text Label 1750 1450 0    50   ~ 0
Price2
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 5F156838
P 6450 5350
F 0 "D6" V 6404 5429 50  0000 L CNN
F 1 "1N4148" V 6495 5429 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 5175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6450 5350 50  0001 C CNN
	1    6450 5350
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5F1432A3
P 6100 5200
F 0 "D3" H 6100 4984 50  0000 C CNN
F 1 "1N4148" H 6100 5075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6100 5025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6100 5200 50  0001 C CNN
	1    6100 5200
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 5F15463C
P 6450 4250
F 0 "D8" V 6404 4329 50  0000 L CNN
F 1 "1N4148" V 6495 4329 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 4075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6450 4250 50  0001 C CNN
	1    6450 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1900 1100 3300
Wire Wire Line
	1100 3300 2050 3300
Wire Wire Line
	850  5200 5650 5200
Wire Wire Line
	850  2100 850  5200
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5F61D1AD
P 4850 6350
F 0 "Q1" H 5041 6396 50  0000 L CNN
F 1 "2N2219" H 5041 6305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 5050 6275 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 4850 6350 50  0001 L CNN
	1    4850 6350
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q2
U 1 1 5F621D44
P 4850 950
F 0 "Q2" H 5041 996 50  0000 L CNN
F 1 "2N2219" H 5041 905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 5050 875 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 4850 950 50  0001 L CNN
	1    4850 950 
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
