EESchema Schematic File Version 2
LIBS:AFM
LIBS:MCU and comms-cache
LIBS:OPH signal conditioning-cache
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
LIBS:special
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
LIBS:OPH Driver Mk 2-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 4
Title ""
Date "27 jul 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L P8X32A U3
U 1 1 52315FEB
P 6750 6850
F 0 "U3" H 6750 6950 60  0000 C CNN
F 1 "P8X32A" H 6750 6800 60  0000 C CNN
F 2 "~" H 6150 6550 60  0000 C CNN
F 3 "~" H 6150 6550 60  0000 C CNN
	1    6750 6850
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 52315FFA
P 7850 6950
F 0 "X1" V 7900 6725 60  0000 C CNN
F 1 "8MHz" V 7800 6675 60  0000 C CNN
F 2 "~" H 7850 6950 60  0000 C CNN
F 3 "~" H 7850 6950 60  0000 C CNN
	1    7850 6950
	0    -1   -1   0   
$EndComp
$Comp
L 24C512 U2
U 1 1 52316009
P 10000 6000
F 0 "U2" H 10125 5625 60  0000 C CNN
F 1 "24LC256" H 10250 5525 60  0000 C CNN
F 2 "" H 10000 6000 60  0000 C CNN
F 3 "" H 10000 6000 60  0000 C CNN
	1    10000 6000
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 52316016
P 11075 5950
F 0 "R6" H 11200 6000 50  0000 C CNN
F 1 "10k" H 11225 5925 50  0000 C CNN
F 2 "~" V 11005 5950 30  0000 C CNN
F 3 "~" H 11075 5950 30  0000 C CNN
	1    11075 5950
	1    0    0    -1  
$EndComp
Text Notes 7475 5950 0    40   ~ 0
TXD
Text Notes 7475 6050 0    40   ~ 0
RXD
$Comp
L 3V3 #PWR01
U 1 1 523164AB
P 10000 5300
F 0 "#PWR01" H 10000 5260 30  0001 C CNN
F 1 "3V3" H 10000 5410 30  0000 C CNN
F 2 "" H 10000 5300 60  0000 C CNN
F 3 "" H 10000 5300 60  0000 C CNN
	1    10000 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 523164B4
P 10000 6600
F 0 "#PWR02" H 10000 6600 30  0001 C CNN
F 1 "GND" H 10000 6530 30  0001 C CNN
F 2 "" H 10000 6600 60  0000 C CNN
F 3 "" H 10000 6600 60  0000 C CNN
	1    10000 6600
	-1   0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 523164C0
P 10200 5400
F 0 "C8" V 10400 5350 50  0000 L CNN
F 1 "100n" V 10325 5325 50  0000 L CNN
F 2 "~" H 10238 5250 30  0000 C CNN
F 3 "~" H 10200 5400 60  0000 C CNN
	1    10200 5400
	0    1    -1   0   
$EndComp
$Comp
L C C4
U 1 1 523164CD
P 6025 5500
F 0 "C4" H 6125 5550 50  0000 L CNN
F 1 "100n" H 6125 5475 50  0000 L CNN
F 2 "~" H 6063 5350 30  0000 C CNN
F 3 "~" H 6025 5500 60  0000 C CNN
	1    6025 5500
	-1   0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 523164D3
P 6475 5500
F 0 "C5" H 6575 5550 50  0000 L CNN
F 1 "100n" H 6575 5475 50  0000 L CNN
F 2 "~" H 6513 5350 30  0000 C CNN
F 3 "~" H 6475 5500 60  0000 C CNN
	1    6475 5500
	-1   0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 523164D9
P 7025 5500
F 0 "C6" H 6825 5550 50  0000 L CNN
F 1 "100n" H 6725 5475 50  0000 L CNN
F 2 "~" H 7063 5350 30  0000 C CNN
F 3 "~" H 7025 5500 60  0000 C CNN
	1    7025 5500
	-1   0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 523164DF
P 7450 5500
F 0 "C7" H 7250 5550 50  0000 L CNN
F 1 "100n" H 7150 5475 50  0000 L CNN
F 2 "~" H 7488 5350 30  0000 C CNN
F 3 "~" H 7450 5500 60  0000 C CNN
	1    7450 5500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 52316537
P 10400 5500
F 0 "#PWR03" H 10400 5500 30  0001 C CNN
F 1 "GND" H 10400 5430 30  0001 C CNN
F 2 "" H 10400 5500 60  0000 C CNN
F 3 "" H 10400 5500 60  0000 C CNN
	1    10400 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 5400 10400 5400
Wire Wire Line
	10400 5400 10400 5500
Wire Wire Line
	10000 5300 10000 5500
Wire Wire Line
	10000 5400 10100 5400
Connection ~ 10000 5400
$Comp
L GND #PWR04
U 1 1 5231686C
P 10800 6000
F 0 "#PWR04" H 10800 6000 30  0001 C CNN
F 1 "GND" H 10800 5930 30  0001 C CNN
F 2 "" H 10800 6000 60  0000 C CNN
F 3 "" H 10800 6000 60  0000 C CNN
	1    10800 6000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10700 5900 10800 5900
Wire Wire Line
	10800 5900 10800 6000
Wire Wire Line
	10000 6500 10000 6600
$Comp
L GND #PWR05
U 1 1 52316A74
P 9200 6100
F 0 "#PWR05" H 9200 6100 30  0001 C CNN
F 1 "GND" H 9200 6030 30  0001 C CNN
F 2 "" H 9200 6100 60  0000 C CNN
F 3 "" H 9200 6100 60  0000 C CNN
	1    9200 6100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9300 5800 9200 5800
Wire Wire Line
	9200 5800 9200 6100
Wire Wire Line
	9300 5900 9200 5900
Connection ~ 9200 5900
Wire Wire Line
	9300 6000 9200 6000
Connection ~ 9200 6000
Wire Wire Line
	7350 6750 7850 6750
Wire Wire Line
	7850 7150 7625 7150
Wire Wire Line
	7625 7150 7625 6850
$Comp
L 3V3 #PWR06
U 1 1 5231716F
P 11075 5650
F 0 "#PWR06" H 11075 5610 30  0001 C CNN
F 1 "3V3" H 11075 5760 30  0000 C CNN
F 2 "" H 11075 5650 60  0000 C CNN
F 3 "" H 11075 5650 60  0000 C CNN
	1    11075 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11075 5650 11075 5700
Wire Wire Line
	10700 6200 11075 6200
Wire Wire Line
	7350 6150 9100 6150
Wire Wire Line
	9100 6150 9100 6775
Wire Wire Line
	9100 6775 10775 6775
Wire Wire Line
	10775 6775 10775 6200
Connection ~ 10775 6200
Wire Wire Line
	7350 6250 9000 6250
Wire Wire Line
	9000 6250 9000 6875
Wire Wire Line
	9000 6875 10875 6875
Wire Wire Line
	10875 6875 10875 6100
Wire Wire Line
	10875 6100 10700 6100
$Comp
L GND #PWR07
U 1 1 523177D4
P 6750 8050
F 0 "#PWR07" H 6750 8050 30  0001 C CNN
F 1 "GND" H 6750 7980 30  0001 C CNN
F 2 "" H 6750 8050 60  0000 C CNN
F 3 "" H 6750 8050 60  0000 C CNN
	1    6750 8050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 7900 6600 7975
Wire Wire Line
	6600 7975 6900 7975
Wire Wire Line
	6900 7975 6900 7900
Wire Wire Line
	6700 7900 6700 7975
Connection ~ 6700 7975
Wire Wire Line
	6800 7900 6800 7975
Connection ~ 6800 7975
Wire Wire Line
	6750 7975 6750 8050
Connection ~ 6750 7975
$Comp
L 3V3 #PWR08
U 1 1 52317E11
P 6475 5350
F 0 "#PWR08" H 6475 5310 30  0001 C CNN
F 1 "3V3" H 6475 5460 30  0000 C CNN
F 2 "" H 6475 5350 60  0000 C CNN
F 3 "" H 6475 5350 60  0000 C CNN
	1    6475 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 523182E9
P 7450 5650
F 0 "#PWR09" H 7450 5650 30  0001 C CNN
F 1 "GND" H 7450 5580 30  0001 C CNN
F 2 "" H 7450 5650 60  0000 C CNN
F 3 "" H 7450 5650 60  0000 C CNN
	1    7450 5650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 523182EF
P 7025 5650
F 0 "#PWR010" H 7025 5650 30  0001 C CNN
F 1 "GND" H 7025 5580 30  0001 C CNN
F 2 "" H 7025 5650 60  0000 C CNN
F 3 "" H 7025 5650 60  0000 C CNN
	1    7025 5650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 523182F5
P 6475 5650
F 0 "#PWR011" H 6475 5650 30  0001 C CNN
F 1 "GND" H 6475 5580 30  0001 C CNN
F 2 "" H 6475 5650 60  0000 C CNN
F 3 "" H 6475 5650 60  0000 C CNN
	1    6475 5650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 523182FB
P 6025 5650
F 0 "#PWR012" H 6025 5650 30  0001 C CNN
F 1 "GND" H 6025 5580 30  0001 C CNN
F 2 "" H 6025 5650 60  0000 C CNN
F 3 "" H 6025 5650 60  0000 C CNN
	1    6025 5650
	-1   0    0    -1  
$EndComp
$Comp
L 3V3 #PWR013
U 1 1 5231855C
P 6025 5350
F 0 "#PWR013" H 6025 5310 30  0001 C CNN
F 1 "3V3" H 6025 5460 30  0000 C CNN
F 2 "" H 6025 5350 60  0000 C CNN
F 3 "" H 6025 5350 60  0000 C CNN
	1    6025 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6475 5350 6475 5400
Wire Wire Line
	6475 5600 6475 5650
Wire Wire Line
	6025 5350 6025 5400
Wire Wire Line
	6025 5600 6025 5650
Wire Wire Line
	6475 5350 6600 5350
Wire Wire Line
	6600 5350 6600 5750
Wire Wire Line
	6025 5350 6275 5350
Wire Wire Line
	6275 5350 6275 5175
Wire Wire Line
	6275 5175 6700 5175
Wire Wire Line
	6700 5175 6700 5750
Connection ~ 6475 5350
Connection ~ 6025 5350
$Comp
L 3V3 #PWR014
U 1 1 52318DD7
P 7025 5350
F 0 "#PWR014" H 7025 5310 30  0001 C CNN
F 1 "3V3" H 7025 5460 30  0000 C CNN
F 2 "" H 7025 5350 60  0000 C CNN
F 3 "" H 7025 5350 60  0000 C CNN
	1    7025 5350
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR015
U 1 1 52318DDD
P 7450 5350
F 0 "#PWR015" H 7450 5310 30  0001 C CNN
F 1 "3V3" H 7450 5460 30  0000 C CNN
F 2 "" H 7450 5350 60  0000 C CNN
F 3 "" H 7450 5350 60  0000 C CNN
	1    7450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 5350 7025 5400
Wire Wire Line
	7450 5350 7450 5400
Wire Wire Line
	7025 5600 7025 5650
Wire Wire Line
	7450 5600 7450 5650
Wire Wire Line
	6900 5750 6900 5350
Wire Wire Line
	6900 5350 7025 5350
Wire Wire Line
	6800 5750 6800 5175
Wire Wire Line
	6800 5175 7250 5175
Wire Wire Line
	7250 5175 7250 5350
Wire Wire Line
	7250 5350 7450 5350
Connection ~ 7450 5350
Connection ~ 7025 5350
Wire Wire Line
	7350 5950 7850 5950
Wire Wire Line
	7850 5950 7850 5000
Wire Wire Line
	7850 5000 9300 5000
Wire Wire Line
	7350 6050 7950 6050
Wire Wire Line
	7950 6050 7950 5100
Wire Wire Line
	7950 5100 9400 5100
$Comp
L GND #PWR016
U 1 1 52319B98
P 6000 6925
F 0 "#PWR016" H 6000 6925 30  0001 C CNN
F 1 "GND" H 6000 6855 30  0001 C CNN
F 2 "" H 6000 6925 60  0000 C CNN
F 3 "" H 6000 6925 60  0000 C CNN
	1    6000 6925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 6750 6150 6750
Wire Wire Line
	6000 6750 6000 6925
Text Notes 11750 8500 0    80   ~ 0
TO TRACKING DRIVER
$Comp
L LED D2
U 1 1 5233DEFE
P 7025 4000
F 0 "D2" H 7025 4100 50  0000 C CNN
F 1 "TXD" H 7025 3900 50  0000 C CNN
F 2 "~" H 7025 4000 60  0000 C CNN
F 3 "~" H 7025 4000 60  0000 C CNN
	1    7025 4000
	1    0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5233DF06
P 7025 3650
F 0 "D1" H 7025 3750 50  0000 C CNN
F 1 "RXD" H 7025 3550 50  0000 C CNN
F 2 "~" H 7025 3650 60  0000 C CNN
F 3 "~" H 7025 3650 60  0000 C CNN
	1    7025 3650
	1    0    0    1   
$EndComp
$Comp
L R R4
U 1 1 5233DF3F
P 7575 3650
F 0 "R4" V 7400 3650 50  0000 C CNN
F 1 "470" V 7475 3650 50  0000 C CNN
F 2 "~" V 7505 3650 30  0000 C CNN
F 3 "~" H 7575 3650 30  0000 C CNN
	1    7575 3650
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5233DF45
P 7575 4000
F 0 "R5" V 7400 4000 50  0000 C CNN
F 1 "470" V 7475 4000 50  0000 C CNN
F 2 "~" V 7505 4000 30  0000 C CNN
F 3 "~" H 7575 4000 30  0000 C CNN
	1    7575 4000
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5233DF6E
P 8125 2175
F 0 "C3" V 8325 2125 50  0000 L CNN
F 1 "10n" V 8250 2100 50  0000 L CNN
F 2 "~" H 8163 2025 30  0000 C CNN
F 3 "~" H 8125 2175 60  0000 C CNN
	1    8125 2175
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5233DF74
P 8325 2525
F 0 "R3" H 8175 2575 50  0000 C CNN
F 1 "33k" H 8175 2500 50  0000 C CNN
F 2 "~" V 8255 2525 30  0000 C CNN
F 3 "~" H 8325 2525 30  0000 C CNN
	1    8325 2525
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5233DF8A
P 5975 1925
F 0 "C2" H 6075 1950 50  0000 L CNN
F 1 "10u" H 6075 1875 50  0000 L CNN
F 2 "~" H 6013 1775 30  0000 C CNN
F 3 "~" H 5975 1925 60  0000 C CNN
	1    5975 1925
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5233DF90
P 7350 1475
F 0 "C1" V 7550 1425 50  0000 L CNN
F 1 "100n" V 7475 1375 50  0000 L CNN
F 2 "~" H 7388 1325 30  0000 C CNN
F 3 "~" H 7350 1475 60  0000 C CNN
	1    7350 1475
	0    -1   -1   0   
$EndComp
$Comp
L FT232R U1
U 1 1 52340CCA
P 7025 3125
F 0 "U1" H 7375 3025 60  0000 C CNN
F 1 "FT232R" H 7475 2925 60  0000 C CNN
F 2 "~" H 7025 3125 60  0000 C CNN
F 3 "~" H 7025 3125 60  0000 C CNN
	1    7025 3125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 52340D63
P 7025 3325
F 0 "#PWR017" H 7025 3325 30  0001 C CNN
F 1 "GND" H 7025 3255 30  0001 C CNN
F 2 "" H 7025 3325 60  0000 C CNN
F 3 "" H 7025 3325 60  0000 C CNN
	1    7025 3325
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 52340D69
P 8325 2825
F 0 "#PWR018" H 8325 2825 30  0001 C CNN
F 1 "GND" H 8325 2755 30  0001 C CNN
F 2 "" H 8325 2825 60  0000 C CNN
F 3 "" H 8325 2825 60  0000 C CNN
	1    8325 2825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7725 2175 8025 2175
Wire Wire Line
	8225 2175 8425 2175
Wire Wire Line
	8325 2275 8325 2175
Connection ~ 8325 2175
$Comp
L R R2
U 1 1 52341156
P 8175 1875
F 0 "R2" V 8350 1875 50  0000 C CNN
F 1 "150" V 8275 1875 50  0000 C CNN
F 2 "~" V 8105 1875 30  0000 C CNN
F 3 "~" H 8175 1875 30  0000 C CNN
	1    8175 1875
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5234115C
P 8175 1600
F 0 "R1" V 8350 1600 50  0000 C CNN
F 1 "150" V 8275 1600 50  0000 C CNN
F 2 "~" V 8105 1600 30  0000 C CNN
F 3 "~" H 8175 1600 30  0000 C CNN
	1    8175 1600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 52341220
P 7550 1575
F 0 "#PWR019" H 7550 1575 30  0001 C CNN
F 1 "GND" H 7550 1505 30  0001 C CNN
F 2 "" H 7550 1575 60  0000 C CNN
F 3 "" H 7550 1575 60  0000 C CNN
	1    7550 1575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 1575 7550 1475
Wire Wire Line
	7550 1475 7450 1475
Wire Wire Line
	6925 1475 7250 1475
Wire Wire Line
	7125 1475 7125 1575
Wire Wire Line
	6925 1475 6925 1575
Connection ~ 7125 1475
Wire Wire Line
	7725 1875 7925 1875
Wire Wire Line
	7725 1775 7825 1775
Wire Wire Line
	7825 1775 7825 1600
Wire Wire Line
	7825 1600 7925 1600
$Comp
L GND #PWR020
U 1 1 5234EB01
P 8725 2425
F 0 "#PWR020" H 8725 2425 30  0001 C CNN
F 1 "GND" H 8725 2355 30  0001 C CNN
F 2 "" H 8725 2425 60  0000 C CNN
F 3 "" H 8725 2425 60  0000 C CNN
	1    8725 2425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8725 2375 8725 2425
Wire Wire Line
	8325 2775 8325 2825
Wire Wire Line
	6825 3225 6825 3275
Wire Wire Line
	6825 3275 7225 3275
Wire Wire Line
	7025 3225 7025 3325
Wire Wire Line
	7225 3275 7225 3225
Connection ~ 7025 3275
Wire Wire Line
	6925 3225 6925 3275
Connection ~ 6925 3275
Wire Wire Line
	7125 3225 7125 3275
Connection ~ 7125 3275
Wire Wire Line
	7725 2725 7950 2725
Wire Wire Line
	7950 2725 7950 3650
Wire Wire Line
	7950 3650 7825 3650
Wire Wire Line
	7725 2625 8025 2625
Wire Wire Line
	8025 2625 8025 4000
Wire Wire Line
	8025 4000 7825 4000
Wire Wire Line
	7225 3650 7325 3650
Wire Wire Line
	7225 4000 7325 4000
$Comp
L USB-MICRO-B P1
U 1 1 5234FF73
P 5575 2825
F 0 "P1" H 5575 2775 60  0000 C CNN
F 1 "USB-MICRO-B" H 5575 2675 60  0000 C CNN
F 2 "" H 5575 2825 60  0000 C CNN
F 3 "" H 5575 2825 60  0000 C CNN
	1    5575 2825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5234FF8A
P 5975 2075
F 0 "#PWR021" H 5975 2075 30  0001 C CNN
F 1 "GND" H 5975 2005 30  0001 C CNN
F 2 "" H 5975 2075 60  0000 C CNN
F 3 "" H 5975 2075 60  0000 C CNN
	1    5975 2075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5675 2225 5800 2225
Wire Wire Line
	5800 2225 5800 1775
Wire Wire Line
	5800 1775 6325 1775
Wire Wire Line
	5975 1825 5975 1775
Connection ~ 5975 1775
Wire Wire Line
	5975 2025 5975 2075
Wire Wire Line
	5675 2325 5975 2325
Wire Wire Line
	5975 2325 5975 2225
Wire Wire Line
	5975 2225 6325 2225
Wire Wire Line
	5675 2425 6325 2425
$Comp
L GND #PWR022
U 1 1 5235084C
P 5775 2725
F 0 "#PWR022" H 5775 2725 30  0001 C CNN
F 1 "GND" H 5775 2655 30  0001 C CNN
F 2 "" H 5775 2725 60  0000 C CNN
F 3 "" H 5775 2725 60  0000 C CNN
	1    5775 2725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5675 2625 5775 2625
Wire Wire Line
	5775 2625 5775 2725
Wire Wire Line
	6825 3650 6775 3650
Wire Wire Line
	6775 3650 6775 4000
Wire Wire Line
	6775 4000 6825 4000
Wire Wire Line
	6225 1775 6225 3825
Wire Wire Line
	6225 3825 6775 3825
Connection ~ 6775 3825
Connection ~ 6225 1775
Wire Wire Line
	6150 6850 5600 6850
Wire Wire Line
	5600 6850 5600 4900
Wire Wire Line
	5600 4900 9200 4900
Wire Wire Line
	9200 4900 9200 1975
Wire Wire Line
	9200 1975 8725 1975
Wire Wire Line
	9400 5100 9400 1875
Wire Wire Line
	9400 1875 8425 1875
Wire Wire Line
	9300 5000 9300 1600
Wire Wire Line
	9300 1600 8425 1600
$Comp
L LED D3
U 1 1 52370A3A
P 5450 7575
F 0 "D3" V 5375 7425 50  0000 C CNN
F 1 "'TEST'" V 5450 7400 50  0000 C CNN
F 2 "~" H 5450 7575 60  0000 C CNN
F 3 "~" H 5450 7575 60  0000 C CNN
	1    5450 7575
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 52370A40
P 5450 7025
F 0 "R7" H 5600 6975 50  0000 C CNN
F 1 "330" H 5600 7050 50  0000 C CNN
F 2 "~" V 5380 7025 30  0000 C CNN
F 3 "~" H 5450 7025 30  0000 C CNN
	1    5450 7025
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 52370A46
P 5450 7850
F 0 "#PWR023" H 5450 7850 30  0001 C CNN
F 1 "GND" H 5450 7780 30  0001 C CNN
F 2 "" H 5450 7850 60  0000 C CNN
F 3 "" H 5450 7850 60  0000 C CNN
	1    5450 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6775 5450 6650
Wire Wire Line
	5450 7275 5450 7375
Wire Wire Line
	5450 7775 5450 7850
Wire Wire Line
	8400 7250 10350 7250
Wire Wire Line
	8500 7350 10250 7350
Wire Wire Line
	8600 7450 10150 7450
Wire Wire Line
	7350 7550 10050 7550
Wire Wire Line
	7350 7650 9950 7650
Wire Wire Line
	6150 7650 6075 7650
Wire Wire Line
	6075 7650 6075 8175
Wire Wire Line
	6075 8175 9850 8175
Wire Wire Line
	6150 7550 5975 7550
Wire Wire Line
	5975 7550 5975 8275
Wire Wire Line
	5975 8275 9750 8275
Wire Wire Line
	6150 7450 5875 7450
Wire Wire Line
	5875 7450 5875 8375
Wire Wire Line
	5875 8375 9650 8375
Wire Wire Line
	6150 7350 5775 7350
Wire Wire Line
	5775 7350 5775 8475
Wire Wire Line
	5775 8475 9550 8475
$Comp
L TST P5
U 1 1 523817B0
P 6025 6250
F 0 "P5" H 6025 6550 40  0001 C CNN
F 1 "SP3" V 6025 6525 50  0000 C CNN
F 2 "~" H 6025 6250 60  0000 C CNN
F 3 "~" H 6025 6250 60  0000 C CNN
	1    6025 6250
	0    -1   -1   0   
$EndComp
$Comp
L TST P4
U 1 1 523817B6
P 6025 6150
F 0 "P4" H 6025 6450 40  0001 C CNN
F 1 "SP2" V 6025 6425 50  0000 C CNN
F 2 "~" H 6025 6150 60  0000 C CNN
F 3 "~" H 6025 6150 60  0000 C CNN
	1    6025 6150
	0    -1   -1   0   
$EndComp
$Comp
L TST P3
U 1 1 523817BC
P 6025 6050
F 0 "P3" H 6025 6350 40  0001 C CNN
F 1 "SP1" V 6025 6325 50  0000 C CNN
F 2 "~" H 6025 6050 60  0000 C CNN
F 3 "~" H 6025 6050 60  0000 C CNN
	1    6025 6050
	0    -1   -1   0   
$EndComp
$Comp
L TST P2
U 1 1 523817C2
P 6025 5950
F 0 "P2" H 6025 6250 40  0001 C CNN
F 1 "SP0" V 6025 6225 50  0000 C CNN
F 2 "~" H 6025 5950 60  0000 C CNN
F 3 "~" H 6025 5950 60  0000 C CNN
	1    6025 5950
	0    -1   -1   0   
$EndComp
Text Notes 6350 1150 0    80   ~ 0
USB COMMS AND ISP
Text GLabel 11075 7150 2    60   Output ~ 0
ADC_SDI
Text GLabel 11075 7425 2    60   Output ~ 0
ADC_SCK
Text GLabel 11075 7650 2    60   Input ~ 0
ADC_SDO
Text GLabel 11075 7875 2    60   Output ~ 0
ADC_CNV
Text GLabel 11075 9000 2    60   Output ~ 0
F_SCLK
Text GLabel 11075 9550 2    60   Output ~ 0
F_DIN
Text GLabel 11075 9275 2    60   Output ~ 0
F_SYNC
Text GLabel 11075 8175 2    60   Output ~ 0
T_SCLK
Text GLabel 11075 8725 2    60   Output ~ 0
T_DIN
Text GLabel 11075 8450 2    60   Output ~ 0
T_SYNC
$Comp
L R R8
U 1 1 526AE717
P 10700 7150
F 0 "R8" V 10550 7150 50  0000 C CNN
F 1 "47" V 10625 7150 50  0000 C CNN
F 2 "~" V 10630 7150 30  0000 C CNN
F 3 "~" H 10700 7150 30  0000 C CNN
	1    10700 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 7150 10450 7150
$Comp
L R R10
U 1 1 526AED43
P 10700 7875
F 0 "R10" V 10550 7875 50  0000 C CNN
F 1 "47" V 10625 7875 50  0000 C CNN
F 2 "~" V 10630 7875 30  0000 C CNN
F 3 "~" H 10700 7875 30  0000 C CNN
	1    10700 7875
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 526AED49
P 10700 7425
F 0 "R9" V 10550 7425 50  0000 C CNN
F 1 "47" V 10625 7425 50  0000 C CNN
F 2 "~" V 10630 7425 30  0000 C CNN
F 3 "~" H 10700 7425 30  0000 C CNN
	1    10700 7425
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 7250 10350 7425
Wire Wire Line
	10350 7425 10450 7425
Wire Wire Line
	10250 7350 10250 7650
Wire Wire Line
	10250 7650 11075 7650
Wire Wire Line
	10150 7450 10150 7875
Wire Wire Line
	10150 7875 10450 7875
Wire Wire Line
	10950 7150 11075 7150
Wire Wire Line
	10950 7425 11075 7425
Wire Wire Line
	10950 7875 11075 7875
$Comp
L R R11
U 1 1 526AF1D4
P 10700 8175
F 0 "R11" V 10550 8175 50  0000 C CNN
F 1 "47" V 10625 8175 50  0000 C CNN
F 2 "~" V 10630 8175 30  0000 C CNN
F 3 "~" H 10700 8175 30  0000 C CNN
	1    10700 8175
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 526AF1DA
P 10700 8450
F 0 "R12" V 10550 8450 50  0000 C CNN
F 1 "47" V 10625 8450 50  0000 C CNN
F 2 "~" V 10630 8450 30  0000 C CNN
F 3 "~" H 10700 8450 30  0000 C CNN
	1    10700 8450
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 526AF1E0
P 10700 8725
F 0 "R13" V 10550 8725 50  0000 C CNN
F 1 "47" V 10625 8725 50  0000 C CNN
F 2 "~" V 10630 8725 30  0000 C CNN
F 3 "~" H 10700 8725 30  0000 C CNN
	1    10700 8725
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 526AF1E6
P 10700 9000
F 0 "R14" V 10550 9000 50  0000 C CNN
F 1 "47" V 10625 9000 50  0000 C CNN
F 2 "~" V 10630 9000 30  0000 C CNN
F 3 "~" H 10700 9000 30  0000 C CNN
	1    10700 9000
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 526AF1EC
P 10700 9275
F 0 "R15" V 10550 9275 50  0000 C CNN
F 1 "47" V 10625 9275 50  0000 C CNN
F 2 "~" V 10630 9275 30  0000 C CNN
F 3 "~" H 10700 9275 30  0000 C CNN
	1    10700 9275
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 526AF1F2
P 10700 9550
F 0 "R16" V 10550 9550 50  0000 C CNN
F 1 "47" V 10625 9550 50  0000 C CNN
F 2 "~" V 10630 9550 30  0000 C CNN
F 3 "~" H 10700 9550 30  0000 C CNN
	1    10700 9550
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 7550 10050 8175
Wire Wire Line
	10050 8175 10450 8175
Wire Wire Line
	9950 7650 9950 8450
Wire Wire Line
	9950 8450 10450 8450
Wire Wire Line
	9850 8175 9850 8725
Wire Wire Line
	9850 8725 10450 8725
Wire Wire Line
	9750 8275 9750 9000
Wire Wire Line
	9750 9000 10450 9000
Wire Wire Line
	9650 8375 9650 9275
Wire Wire Line
	9650 9275 10450 9275
Wire Wire Line
	9550 8475 9550 9550
Wire Wire Line
	9550 9550 10450 9550
Wire Wire Line
	10950 8175 11075 8175
Wire Wire Line
	10950 8450 11075 8450
Wire Wire Line
	10950 8725 11075 8725
Wire Wire Line
	10950 9000 11075 9000
Wire Wire Line
	10950 9275 11075 9275
Wire Wire Line
	10950 9550 11075 9550
Text Notes 12325 10975 0    80   ~ 0
OPH DRIVER MK 2 - MCU AND COMMS
Text Notes 11750 7550 0    80   ~ 0
TO FES DETECTION
Wire Notes Line
	11550 7050 11650 7050
Wire Notes Line
	11650 7050 11650 7950
Wire Notes Line
	11650 7950 11550 7950
Wire Notes Line
	11550 8100 11650 8100
Wire Notes Line
	11650 8100 11650 8800
Wire Notes Line
	11650 8800 11550 8800
Wire Notes Line
	11550 8950 11650 8950
Wire Notes Line
	11650 8950 11650 9650
Wire Notes Line
	11650 9650 11550 9650
Text Notes 11750 9350 0    80   ~ 0
TO FOCUS DRIVER
$Comp
L TST P6
U 1 1 526B5214
P 6025 6350
F 0 "P6" H 6025 6650 40  0001 C CNN
F 1 "SP4" V 6025 6625 50  0000 C CNN
F 2 "~" H 6025 6350 60  0000 C CNN
F 3 "~" H 6025 6350 60  0000 C CNN
	1    6025 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 6650 6150 6650
Wire Wire Line
	6025 5950 6150 5950
Wire Wire Line
	6025 6050 6150 6050
Wire Wire Line
	6025 6150 6150 6150
Wire Wire Line
	6025 6250 6150 6250
Wire Wire Line
	6025 6350 6150 6350
Text Notes 15825 10975 0    80   ~ 0
AJS
$Comp
L MMBT3904 Q1
U 1 1 528337E6
P 8625 2175
F 0 "Q1" H 8900 2225 40  0000 R CNN
F 1 "MMBT3904" H 9125 2150 40  0000 R CNN
F 2 "SOT-23" H 8525 2277 29  0001 C CNN
F 3 "~" H 8625 2175 60  0000 C CNN
	1    8625 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7625 6850 7350 6850
Wire Wire Line
	8300 7150 8300 6650
Wire Wire Line
	8300 6650 7350 6650
Wire Wire Line
	8400 7250 8400 6550
Wire Wire Line
	8400 6550 7350 6550
Wire Wire Line
	8500 7350 8500 6450
Wire Wire Line
	8500 6450 7350 6450
Wire Wire Line
	8600 7450 8600 6350
Wire Wire Line
	8600 6350 7350 6350
Text Notes 15450 11100 0    80   ~ 0
B
$EndSCHEMATC
