EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:rdioboards-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L CONN_02X07 J2
U 1 1 5946C118
P 6750 4350
F 0 "J2" H 6750 4750 50  0000 C CNN
F 1 "CU40025SCPB" V 6750 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x07_Pitch2.54mm" H 6750 3150 50  0001 C CNN
F 3 "" H 6750 3150 50  0001 C CNN
	1    6750 4350
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X12 J1
U 1 1 59470897
P 6500 2700
F 0 "J1" H 6500 3350 50  0000 C CNN
F 1 "Pro Micro" V 6600 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12_Pitch2.54mm" H 6500 2700 50  0001 C CNN
F 3 "" H 6500 2700 50  0001 C CNN
	1    6500 2700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 J3
U 1 1 59470907
P 7000 2700
F 0 "J3" H 7000 3350 50  0000 C CNN
F 1 "Pro Micro" V 7100 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12_Pitch2.54mm" H 7000 2700 50  0001 C CNN
F 3 "" H 7000 2700 50  0001 C CNN
	1    7000 2700
	-1   0    0    -1  
$EndComp
Text Notes 5550 3250 0    63   ~ 0
D1\nD0\nGND\nGND\nD2\nD3\nD4\nD5\nD6\nD7\nD8\nD9
Text Notes 7600 3250 0    63   ~ 0
RAW\nGND\nRST\nVCC\nD21\nD20\nD19\nD18\nD15\nD14\nD16\nD10
Text Notes 8450 4600 2    63   ~ 0
GND\nFNC_\nR/W\nD0\nD2\nD4\nD6
Text Notes 5150 4700 0    63   ~ 0
VCC\nRS\nE\nD1\nD3\nD5\nD7\n
NoConn ~ 7200 2350
$Comp
L R R1
U 1 1 594735EE
P 6050 4150
F 0 "R1" V 5950 4150 50  0000 C CNN
F 1 "1K" V 6050 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5980 4150 50  0001 C CNN
F 3 "" H 6050 4150 50  0001 C CNN
	1    6050 4150
	0    1    1    0   
$EndComp
Text Label 6100 2550 0    60   ~ 0
FNC
Text Label 6100 2650 0    60   ~ 0
RW
Text Label 6100 2750 0    60   ~ 0
RS
Text Label 6100 2950 0    60   ~ 0
D4
Text Label 6100 2850 0    60   ~ 0
EN
Text Label 6100 3050 0    60   ~ 0
D5
Text Label 6100 3150 0    60   ~ 0
D6
Text Label 6100 3250 0    60   ~ 0
D7
Text Label 5700 4650 0    60   ~ 0
D7
Text Label 5700 4550 0    60   ~ 0
D5
Text Label 5700 4450 0    60   ~ 0
D3
Text Label 5700 4350 0    60   ~ 0
D1
Text Label 5700 4250 0    60   ~ 0
EN
Text Label 5700 4150 0    60   ~ 0
RS
$Comp
L R R4
U 1 1 596BDB5D
P 6300 4250
F 0 "R4" V 6380 4250 50  0000 C CNN
F 1 "1K" V 6300 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6230 4250 50  0001 C CNN
F 3 "" H 6300 4250 50  0001 C CNN
	1    6300 4250
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 596BDC4C
P 6050 4350
F 0 "R2" V 5950 4350 50  0000 C CNN
F 1 "1K" V 6050 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5980 4350 50  0001 C CNN
F 3 "" H 6050 4350 50  0001 C CNN
	1    6050 4350
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 596BDC7C
P 6300 4450
F 0 "R5" V 6200 4450 50  0000 C CNN
F 1 "1K" V 6300 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6230 4450 50  0001 C CNN
F 3 "" H 6300 4450 50  0001 C CNN
	1    6300 4450
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 596BDCBE
P 6050 4550
F 0 "R3" V 5950 4550 50  0000 C CNN
F 1 "1K" V 6050 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5980 4550 50  0001 C CNN
F 3 "" H 6050 4550 50  0001 C CNN
	1    6050 4550
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 596BDD00
P 7200 4650
F 0 "R9" V 7100 4650 50  0000 C CNN
F 1 "1K" V 7200 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7130 4650 50  0001 C CNN
F 3 "" H 7200 4650 50  0001 C CNN
	1    7200 4650
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 596BDFA4
P 7450 4550
F 0 "R12" V 7350 4550 50  0000 C CNN
F 1 "1K" V 7450 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7380 4550 50  0001 C CNN
F 3 "" H 7450 4550 50  0001 C CNN
	1    7450 4550
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 596BE024
P 7200 4450
F 0 "R8" V 7100 4450 50  0000 C CNN
F 1 "1K" V 7200 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7130 4450 50  0001 C CNN
F 3 "" H 7200 4450 50  0001 C CNN
	1    7200 4450
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 596BE083
P 7450 4350
F 0 "R11" V 7350 4350 50  0000 C CNN
F 1 "1K" V 7450 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7380 4350 50  0001 C CNN
F 3 "" H 7450 4350 50  0001 C CNN
	1    7450 4350
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 596BE0C1
P 7200 4250
F 0 "R7" V 7100 4250 50  0000 C CNN
F 1 "1K" V 7200 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7130 4250 50  0001 C CNN
F 3 "" H 7200 4250 50  0001 C CNN
	1    7200 4250
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 596BE102
P 7450 4150
F 0 "R10" V 7350 4150 50  0000 C CNN
F 1 "1K" V 7450 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7380 4150 50  0001 C CNN
F 3 "" H 7450 4150 50  0001 C CNN
	1    7450 4150
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 596BE146
P 6300 4650
F 0 "R6" V 6200 4650 50  0000 C CNN
F 1 "1K" V 6300 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6230 4650 50  0001 C CNN
F 3 "" H 6300 4650 50  0001 C CNN
	1    6300 4650
	0    1    1    0   
$EndComp
Text Label 7850 4650 2    60   ~ 0
D6
Text Label 7850 4550 2    60   ~ 0
D4
Text Label 7850 4450 2    60   ~ 0
D2
Text Label 7850 4350 2    60   ~ 0
D0
Text Label 7850 4250 2    60   ~ 0
RW
Text Label 7850 4150 2    60   ~ 0
FNC
NoConn ~ 7200 2450
Text Label 7500 2850 2    60   ~ 0
D0
Text Label 7500 2750 2    60   ~ 0
D1
Text Label 7500 2650 2    60   ~ 0
D2
Text Label 7500 2550 2    60   ~ 0
D3
NoConn ~ 6300 2150
NoConn ~ 6300 2250
NoConn ~ 7200 2950
NoConn ~ 7200 3050
NoConn ~ 7200 3150
NoConn ~ 7200 3250
Text Label 7400 2150 2    60   ~ 0
VCC
Text Label 7400 2250 2    60   ~ 0
GND
Text Label 6100 2350 0    60   ~ 0
GND
Text Label 6100 2450 0    60   ~ 0
GND
Wire Wire Line
	6300 2550 6100 2550
Wire Wire Line
	6300 2650 6100 2650
Wire Wire Line
	6300 2750 6100 2750
Wire Wire Line
	6300 2850 6100 2850
Wire Wire Line
	6300 2950 6100 2950
Wire Wire Line
	6300 3050 6100 3050
Wire Wire Line
	6300 3150 6100 3150
Wire Wire Line
	6300 3250 6100 3250
Wire Wire Line
	6200 4150 6500 4150
Wire Wire Line
	6450 4250 6500 4250
Wire Wire Line
	6200 4350 6500 4350
Wire Wire Line
	6450 4450 6500 4450
Wire Wire Line
	6200 4550 6500 4550
Wire Wire Line
	6450 4650 6500 4650
Wire Wire Line
	7000 4650 7050 4650
Wire Wire Line
	7000 4550 7300 4550
Wire Wire Line
	7050 4450 7000 4450
Wire Wire Line
	7000 4350 7300 4350
Wire Wire Line
	7050 4250 7000 4250
Wire Wire Line
	7000 4150 7300 4150
Wire Wire Line
	5700 4150 5900 4150
Wire Wire Line
	5700 4250 6150 4250
Wire Wire Line
	5700 4350 5900 4350
Wire Wire Line
	5700 4450 6150 4450
Wire Wire Line
	5700 4550 5900 4550
Wire Wire Line
	5700 4650 6150 4650
Wire Wire Line
	7600 4150 7850 4150
Wire Wire Line
	7850 4250 7350 4250
Wire Wire Line
	7850 4350 7600 4350
Wire Wire Line
	7850 4450 7350 4450
Wire Wire Line
	7850 4550 7600 4550
Wire Wire Line
	7850 4650 7350 4650
Wire Wire Line
	7200 2250 7400 2250
Wire Wire Line
	7200 2850 7500 2850
Wire Wire Line
	7200 2750 7500 2750
Wire Wire Line
	7200 2650 7500 2650
Wire Wire Line
	7200 2550 7500 2550
Wire Wire Line
	7400 2150 7200 2150
Wire Wire Line
	6100 2350 6300 2350
Wire Wire Line
	6100 2450 6300 2450
Wire Wire Line
	6100 2350 6100 2450
Wire Wire Line
	6300 4050 6500 4050
Wire Wire Line
	7200 4050 7000 4050
Text Label 7200 4050 2    60   ~ 0
GND
Text Label 6300 4050 0    60   ~ 0
VCC
$EndSCHEMATC
