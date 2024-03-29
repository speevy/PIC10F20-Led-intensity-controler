EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:MCU_Microchip_PIC10
LIBS:led-cache
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
L PIC10F200-IOT U1
U 1 1 5AB7E516
P 3100 2300
F 0 "U1" H 3150 2850 50  0000 L CNN
F 1 "PIC10F200-IP" H 3150 2750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 3150 2950 50  0001 L CIN
F 3 "" H 3100 2300 50  0001 C CNN
	1    3100 2300
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5AB7E63F
P 2100 2050
F 0 "SW1" H 2150 2150 50  0000 L CNN
F 1 "SW DOWN" H 2100 1990 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h7.3mm" H 2100 2250 50  0001 C CNN
F 3 "" H 2100 2250 50  0001 C CNN
	1    2100 2050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5AB7E6A8
P 2100 2400
F 0 "SW2" H 2150 2500 50  0000 L CNN
F 1 "SW UP" H 2100 2340 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h7.3mm" H 2100 2600 50  0001 C CNN
F 3 "" H 2100 2600 50  0001 C CNN
	1    2100 2400
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR01
U 1 1 5AB7E716
P 1900 2550
F 0 "#PWR01" H 1900 2300 50  0001 C CNN
F 1 "GNDD" H 1900 2425 50  0000 C CNN
F 2 "" H 1900 2550 50  0001 C CNN
F 3 "" H 1900 2550 50  0001 C CNN
	1    1900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2050 1900 2550
Connection ~ 1900 2400
Wire Wire Line
	2300 2050 2500 2050
Wire Wire Line
	2300 2400 2500 2400
$Comp
L GNDD #PWR02
U 1 1 5AB7E796
P 3100 2900
F 0 "#PWR02" H 3100 2650 50  0001 C CNN
F 1 "GNDD" H 3100 2775 50  0000 C CNN
F 2 "" H 3100 2900 50  0001 C CNN
F 3 "" H 3100 2900 50  0001 C CNN
	1    3100 2900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AB7E7DA
P 3850 2400
F 0 "R1" V 3930 2400 50  0000 C CNN
F 1 "1K" V 3850 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3780 2400 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	0    1    1    0   
$EndComp
$Comp
L GNDD #PWR03
U 1 1 5AB7E8E4
P 4250 2700
F 0 "#PWR03" H 4250 2450 50  0001 C CNN
F 1 "GNDD" H 4250 2575 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x01 J1
U 1 1 5AB7E920
P 1450 2000
F 0 "J1" H 1500 2100 50  0000 C CNN
F 1 "INPUT" H 1500 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1450 2000 50  0001 C CNN
F 3 "" H 1450 2000 50  0001 C CNN
	1    1450 2000
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR04
U 1 1 5AB7E96F
P 1450 1800
F 0 "#PWR04" H 1450 1650 50  0001 C CNN
F 1 "VDD" H 1450 1950 50  0000 C CNN
F 2 "" H 1450 1800 50  0001 C CNN
F 3 "" H 1450 1800 50  0001 C CNN
	1    1450 1800
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x01 J2
U 1 1 5AB7E98F
P 4400 1900
F 0 "J2" H 4450 2000 50  0000 C CNN
F 1 "OUTPUT" H 4450 1800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01_Pitch2.54mm" H 4400 1900 50  0001 C CNN
F 3 "" H 4400 1900 50  0001 C CNN
	1    4400 1900
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR05
U 1 1 5AB7E9D8
P 4400 1700
F 0 "#PWR05" H 4400 1550 50  0001 C CNN
F 1 "VDD" H 4400 1850 50  0000 C CNN
F 2 "" H 4400 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR06
U 1 1 5AB7E9FA
P 1450 2300
F 0 "#PWR06" H 1450 2050 50  0001 C CNN
F 1 "GNDD" H 1450 2175 50  0000 C CNN
F 2 "" H 1450 2300 50  0001 C CNN
F 3 "" H 1450 2300 50  0001 C CNN
	1    1450 2300
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q1
U 1 1 5ABE72C7
P 4300 2400
F 0 "Q1" H 4500 2450 50  0000 L CNN
F 1 "SI2306" H 4500 2350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4500 2500 50  0001 C CNN
F 3 "" H 4300 2400 50  0001 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
Connection ~ 2500 2050
Connection ~ 2400 2400
$Comp
L C C1
U 1 1 5ABEA9EA
P 2850 1150
F 0 "C1" H 2875 1250 50  0000 L CNN
F 1 "100nF" H 2875 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2888 1000 50  0001 C CNN
F 3 "" H 2850 1150 50  0001 C CNN
	1    2850 1150
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR07
U 1 1 5ABEAAB4
P 2850 1300
F 0 "#PWR07" H 2850 1050 50  0001 C CNN
F 1 "GNDD" H 2850 1175 50  0000 C CNN
F 2 "" H 2850 1300 50  0001 C CNN
F 3 "" H 2850 1300 50  0001 C CNN
	1    2850 1300
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR08
U 1 1 5ABEAADA
P 3950 950
F 0 "#PWR08" H 3950 800 50  0001 C CNN
F 1 "VDD" H 3950 1100 50  0000 C CNN
F 2 "" H 3950 950 50  0001 C CNN
F 3 "" H 3950 950 50  0001 C CNN
	1    3950 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 950  3550 950 
Wire Wire Line
	3100 1700 3100 950 
Connection ~ 3100 950 
Wire Wire Line
	2850 1000 2850 950 
$Comp
L D_Zener_ALT D1
U 1 1 60FD52CE
P 3400 1200
F 0 "D1" H 3400 1300 50  0000 C CNN
F 1 "5.1V" H 3400 1100 50  0000 C CNN
F 2 "Diodes_SMD:D_SOT-23_ANK" H 3400 1200 50  0001 C CNN
F 3 "" H 3400 1200 50  0001 C CNN
	1    3400 1200
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 60FD53FF
P 3700 950
F 0 "R2" V 3780 950 50  0000 C CNN
F 1 "10K" V 3700 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3630 950 50  0001 C CNN
F 3 "" H 3700 950 50  0001 C CNN
	1    3700 950 
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 60FD5452
P 4050 2550
F 0 "R3" V 4130 2550 50  0000 C CNN
F 1 "100K" V 4050 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 2550 50  0001 C CNN
F 3 "" H 4050 2550 50  0001 C CNN
	1    4050 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 2700 4400 2700
Wire Wire Line
	4400 2700 4400 2600
Wire Wire Line
	4000 2400 4100 2400
Wire Wire Line
	3400 1050 3400 950 
Connection ~ 3400 950 
Wire Wire Line
	3850 950  3950 950 
$Comp
L GNDD #PWR09
U 1 1 60FD5644
P 3400 1350
F 0 "#PWR09" H 3400 1100 50  0001 C CNN
F 1 "GNDD" H 3400 1225 50  0000 C CNN
F 2 "" H 3400 1350 50  0001 C CNN
F 3 "" H 3400 1350 50  0001 C CNN
	1    3400 1350
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J3
U 1 1 60FD595D
P 3100 950
F 0 "J3" H 3100 1220 50  0000 C CNN
F 1 "VDD (2)" H 3100 1150 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 3300 950 50  0001 C CNN
F 3 "" H 3300 950 50  0001 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J4
U 1 1 60FD5B9B
P 3800 2200
F 0 "J4" H 3800 2470 50  0000 C CNN
F 1 "VPP (1)" H 3800 2400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4000 2200 50  0001 C CNN
F 3 "" H 4000 2200 50  0001 C CNN
	1    3800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2200 3800 2200
Wire Wire Line
	2500 2050 2500 2200
$Comp
L TEST_1P J5
U 1 1 60FD5CD9
P 2500 2050
F 0 "J5" H 2500 2320 50  0000 C CNN
F 1 "DAT (4)" H 2500 2250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 2700 2050 50  0001 C CNN
F 3 "" H 2700 2050 50  0001 C CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J6
U 1 1 60FD5D4B
P 2400 2400
F 0 "J6" H 2400 2670 50  0000 C CNN
F 1 "CLK (5)" H 2400 2600 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 2600 2400 50  0001 C CNN
F 3 "" H 2600 2400 50  0001 C CNN
	1    2400 2400
	-1   0    0    1   
$EndComp
Connection ~ 4050 2400
Connection ~ 4250 2700
$EndSCHEMATC
