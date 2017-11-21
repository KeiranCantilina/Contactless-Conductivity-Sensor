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
Text GLabel 2850 3350 0    60   Input ~ 0
INPUT
Text GLabel 6250 3350 0    60   Output ~ 0
OUTPUT
$Comp
L GND #PWR?
U 1 1 5A147F0A
P 2850 4050
F 0 "#PWR?" H 2850 3800 50  0001 C CNN
F 1 "GND" H 2850 3900 50  0000 C CNN
F 2 "" H 2850 4050 50  0000 C CNN
F 3 "" H 2850 4050 50  0000 C CNN
	1    2850 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A147F1E
P 5850 4050
F 0 "#PWR?" H 5850 3800 50  0001 C CNN
F 1 "GND" H 5850 3900 50  0000 C CNN
F 2 "" H 5850 4050 50  0000 C CNN
F 3 "" H 5850 4050 50  0000 C CNN
	1    5850 4050
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A147F32
P 3750 4050
F 0 "R3" V 3830 4050 50  0000 C CNN
F 1 "1K" V 3750 4050 50  0000 C CNN
F 2 "" V 3680 4050 50  0000 C CNN
F 3 "" H 3750 4050 50  0000 C CNN
	1    3750 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 4050 3600 4050
Wire Wire Line
	3900 4050 5850 4050
$Comp
L R R1
U 1 1 5A147FF6
P 3200 3350
F 0 "R1" V 3280 3350 50  0000 C CNN
F 1 "50" V 3200 3350 50  0000 C CNN
F 2 "" V 3130 3350 50  0000 C CNN
F 3 "" H 3200 3350 50  0000 C CNN
	1    3200 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3350 3050 3350
$Comp
L C C1
U 1 1 5A14805D
P 3350 3700
F 0 "C1" H 3375 3800 50  0000 L CNN
F 1 "C" H 3375 3600 50  0000 L CNN
F 2 "" H 3388 3550 50  0000 C CNN
F 3 "" H 3350 3700 50  0000 C CNN
	1    3350 3700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A1480D6
P 5600 3350
F 0 "R2" V 5680 3350 50  0000 C CNN
F 1 "R" V 5600 3350 50  0000 C CNN
F 2 "" V 5530 3350 50  0000 C CNN
F 3 "" H 5600 3350 50  0000 C CNN
	1    5600 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 3350 6250 3350
$Comp
L C C2
U 1 1 5A148148
P 5400 3700
F 0 "C2" H 5425 3800 50  0000 L CNN
F 1 "C" H 5425 3600 50  0000 L CNN
F 2 "" H 5438 3550 50  0000 C CNN
F 3 "" H 5400 3700 50  0000 C CNN
	1    5400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3350 3350 3550
Wire Wire Line
	3350 3850 3350 4050
Connection ~ 3350 4050
Wire Wire Line
	5450 3350 5400 3350
Wire Wire Line
	5400 3350 5400 3550
Wire Wire Line
	5400 3850 5400 4050
Connection ~ 5400 4050
$Comp
L INDUCTOR L?
U 1 1 5A14819E
P 3700 3350
F 0 "L?" V 3650 3350 50  0000 C CNN
F 1 "INDUCTOR" V 3800 3350 50  0000 C CNN
F 2 "" H 3700 3350 50  0000 C CNN
F 3 "" H 3700 3350 50  0000 C CNN
	1    3700 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3350 3400 3350
$Comp
L INDUCTOR L?
U 1 1 5A1485B7
P 5100 3350
F 0 "L?" V 5050 3350 50  0000 C CNN
F 1 "INDUCTOR" V 5200 3350 50  0000 C CNN
F 2 "" H 5100 3350 50  0000 C CNN
F 3 "" H 5100 3350 50  0000 C CNN
	1    5100 3350
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5A14860A
P 4400 3500
F 0 "C?" H 4425 3600 50  0000 L CNN
F 1 "C" H 4425 3400 50  0000 L CNN
F 2 "" H 4438 3350 50  0000 C CNN
F 3 "" H 4400 3500 50  0000 C CNN
	1    4400 3500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A148637
P 4400 3800
F 0 "C?" H 4425 3900 50  0000 L CNN
F 1 "C" H 4425 3700 50  0000 L CNN
F 2 "" H 4438 3650 50  0000 C CNN
F 3 "" H 4400 3800 50  0000 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3950 4400 4050
Connection ~ 4400 4050
Wire Wire Line
	4000 3350 4800 3350
Connection ~ 4400 3350
$EndSCHEMATC
