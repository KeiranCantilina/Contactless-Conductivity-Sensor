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
LIBS:contactless conductivity sensor-cache
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
L GND #PWR?
U 1 1 5A147C38
P 3300 3600
F 0 "#PWR?" H 3300 3350 50  0001 C CNN
F 1 "GND" H 3300 3450 50  0000 C CNN
F 2 "" H 3300 3600 50  0000 C CNN
F 3 "" H 3300 3600 50  0000 C CNN
	1    3300 3600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A147C8A
P 4000 3250
F 0 "R?" V 4080 3250 50  0000 C CNN
F 1 "1K" V 4000 3250 50  0000 C CNN
F 2 "" V 3930 3250 50  0000 C CNN
F 3 "" H 4000 3250 50  0000 C CNN
	1    4000 3250
	0    1    1    0   
$EndComp
Text Notes 2300 3300 0    60   ~ 0
INPUT
Text Notes 6400 3300 0    60   ~ 0
OUTPUT
Wire Wire Line
	3850 3250 3300 3250
Wire Wire Line
	3300 3250 3300 3600
$Comp
L GND #PWR?
U 1 1 5A147E4E
P 5900 3600
F 0 "#PWR?" H 5900 3350 50  0001 C CNN
F 1 "GND" H 5900 3450 50  0000 C CNN
F 2 "" H 5900 3600 50  0000 C CNN
F 3 "" H 5900 3600 50  0000 C CNN
	1    5900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3250 5900 3250
Wire Wire Line
	5900 3250 5900 3600
Text GLabel 6250 2900 0    60   Output ~ 0
SCOPE
Text GLabel 3300 2900 0    60   Input ~ 0
SIGNAL
Wire Wire Line
	3300 2900 5700 2900
Wire Wire Line
	5700 2900 5700 2700
Wire Wire Line
	5700 2700 6400 2700
Wire Wire Line
	6400 2700 6400 2900
Wire Wire Line
	6400 2900 6250 2900
Wire Wire Line
	3800 2900 3800 1350
Wire Wire Line
	3800 1350 3900 1350
Wire Wire Line
	3900 1350 3900 2900
Connection ~ 3900 2900
Connection ~ 3800 2900
Wire Wire Line
	5300 3250 5300 1700
Wire Wire Line
	5300 1700 5400 1700
Wire Wire Line
	5400 1700 5400 3250
Connection ~ 5400 3250
Connection ~ 5300 3250
$EndSCHEMATC
