EESchema Schematic File Version 4
LIBS:MainBuild-cache
EELAYER 29 0
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
L Motor:Motor_Servo M?
U 1 1 5D34A907
P 8710 2960
F 0 "M?" H 9042 3025 50  0000 L CNN
F 1 "Motor_Servo" H 9042 2934 50  0000 L CNN
F 2 "" H 8710 2770 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8710 2770 50  0001 C CNN
	1    8710 2960
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M?
U 1 1 5D34B07C
P 8710 3500
F 0 "M?" H 9042 3565 50  0000 L CNN
F 1 "Motor_Servo" H 9042 3474 50  0000 L CNN
F 2 "" H 8710 3310 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8710 3310 50  0001 C CNN
	1    8710 3500
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M?
U 1 1 5D34BD78
P 8710 4000
F 0 "M?" H 9042 4065 50  0000 L CNN
F 1 "Motor_Servo" H 9042 3974 50  0000 L CNN
F 2 "" H 8710 3810 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8710 3810 50  0001 C CNN
	1    8710 4000
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M?
U 1 1 5D34CC1B
P 8710 4500
F 0 "M?" H 9042 4565 50  0000 L CNN
F 1 "Motor_Servo" H 9042 4474 50  0000 L CNN
F 2 "" H 8710 4310 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8710 4310 50  0001 C CNN
	1    8710 4500
	1    0    0    -1  
$EndComp
$Comp
L Power_Management:AdaFruitPowerBoost500 U?
U 1 1 5D34F562
P 6990 880
F 0 "U?" H 7418 351 50  0000 L CNN
F 1 "AdaFruitPowerBoost500" H 7418 260 50  0000 L CNN
F 2 "" H 6990 880 50  0001 C CNN
F 3 "" H 6990 880 50  0001 C CNN
	1    6990 880 
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5D3522D4
P 2940 3490
F 0 "BT1" H 3058 3586 50  0000 L CNN
F 1 "3.7v" H 3058 3495 50  0000 L CNN
F 2 "" V 2940 3550 50  0001 C CNN
F 3 "~" V 2940 3550 50  0001 C CNN
	1    2940 3490
	1    0    0    -1  
$EndComp
Wire Wire Line
	2940 3290 3590 3290
Wire Wire Line
	3590 1230 3590 3290
Wire Wire Line
	6490 1330 3710 1330
Wire Wire Line
	7570 4600 8410 4600
Wire Wire Line
	8410 4100 7570 4100
Connection ~ 7570 4100
Wire Wire Line
	7570 4100 7570 4600
Wire Wire Line
	8410 3600 7570 3600
Connection ~ 7570 3600
Wire Wire Line
	7570 3600 7570 4100
Wire Wire Line
	8410 3060 7570 3060
Connection ~ 7570 3060
Wire Wire Line
	7570 3060 7570 3600
Wire Wire Line
	7800 2960 7800 3500
Wire Wire Line
	7800 4000 8410 4000
Wire Wire Line
	7800 2960 8410 2960
Wire Wire Line
	8410 3500 7800 3500
Connection ~ 7800 3500
Wire Wire Line
	7800 3500 7800 4000
Wire Wire Line
	7800 4000 7800 4500
Wire Wire Line
	7800 4500 8410 4500
Connection ~ 7800 4000
$Comp
L Device:CP C1
U 1 1 5D356A9F
P 7050 2150
F 0 "C1" H 7168 2196 50  0000 L CNN
F 1 "1000uF" H 7168 2105 50  0000 L CNN
F 2 "" H 7088 2000 50  0001 C CNN
F 3 "~" H 7050 2150 50  0001 C CNN
	1    7050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7570 1990 7570 3060
Wire Wire Line
	7050 1990 7050 2000
Connection ~ 7050 1990
Wire Wire Line
	7050 1990 7570 1990
Wire Wire Line
	7800 2300 7050 2300
Connection ~ 7800 2960
Connection ~ 7050 2300
$Comp
L Switch:SW_SPST SW1
U 1 1 5D3660D8
P 6150 1430
F 0 "SW1" H 6150 1320 50  0000 C CNN
F 1 "SW_SPST" H 6160 1790 50  0001 C CNN
F 2 "" H 6150 1430 50  0001 C CNN
F 3 "~" H 6150 1430 50  0001 C CNN
	1    6150 1430
	1    0    0    -1  
$EndComp
Wire Wire Line
	3590 1230 6490 1230
Wire Wire Line
	6350 1430 6490 1430
Wire Wire Line
	5950 1430 5950 1630
$Comp
L Device:R R1
U 1 1 5D39AE02
P 8100 2160
F 0 "R1" H 8170 2206 50  0000 L CNN
F 1 "220R" H 8170 2115 50  0000 L CNN
F 2 "" V 8030 2160 50  0001 C CNN
F 3 "~" H 8100 2160 50  0001 C CNN
	1    8100 2160
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D39B958
P 8100 2500
F 0 "D1" V 8139 2383 50  0000 R CNN
F 1 "LED" V 8048 2383 50  0000 R CNN
F 2 "" H 8100 2500 50  0001 C CNN
F 3 "~" H 8100 2500 50  0001 C CNN
	1    8100 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 2010 8100 1990
Wire Wire Line
	8100 1990 7570 1990
Connection ~ 7570 1990
Wire Wire Line
	8100 2310 8100 2350
Wire Wire Line
	8100 2650 7800 2650
Wire Wire Line
	7800 2300 7800 2650
Connection ~ 7800 2650
Wire Wire Line
	7800 2650 7800 2960
Wire Notes Line
	8380 1860 8380 4740
Wire Notes Line
	8380 4740 6830 4740
Wire Notes Line
	6830 4740 6830 1860
Wire Notes Line
	6830 1860 8380 1860
Text Notes 7790 1830 0    50   ~ 0
Servo Breakout
Wire Wire Line
	2940 3590 3710 3590
Wire Wire Line
	6280 4400 6280 4720
Wire Wire Line
	6280 4400 8410 4400
Wire Wire Line
	6190 4610 6190 3900
Wire Wire Line
	6190 3900 8410 3900
Wire Wire Line
	6090 4530 6090 3400
Wire Wire Line
	6090 3400 8410 3400
$Comp
L Firebeetle:DFR0478 U?
U 1 1 5D34FE83
P 4210 1780
F 0 "U?" H 5010 2045 50  0000 C CNN
F 1 "DFR0478" H 5010 1954 50  0000 C CNN
F 2 "FIREBEETLE_ESP32" H 5660 1880 50  0001 L CNN
F 3 "https://github.com/Robert-MARKII/Document/blob/master/FireBeetle%20Board-ESP32%20User%20Manual%20update.pdf" H 5660 1580 50  0001 L CNN
F 4 "Development Boards & Kits - Wireless FireBeetle ESP32 IOT MCU" H 5660 1480 50  0001 L CNN "Description"
F 5 "DFRobot" H 5660 1280 50  0001 L CNN "Manufacturer_Name"
F 6 "DFR0478" H 5660 1180 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "426-DFR0478" H 5660 1080 50  0001 L CNN "Mouser Part Number"
F 8 "https://www.mouser.com/Search/Refine.aspx?Keyword=426-DFR0478" H 5660 980 50  0001 L CNN "Mouser Price/Stock"
	1    4210 1780
	1    0    0    -1  
$EndComp
Wire Wire Line
	3710 1330 3710 3180
Wire Wire Line
	4210 3180 3710 3180
Connection ~ 3710 3180
Wire Wire Line
	3710 3180 3710 3590
Wire Wire Line
	4210 3480 3590 3480
Wire Wire Line
	3590 3480 3590 3290
Connection ~ 3590 3290
Wire Wire Line
	4210 1980 3800 1980
Wire Wire Line
	3800 1980 3800 4720
Wire Wire Line
	3800 4720 6280 4720
Wire Wire Line
	4210 2080 3890 2080
Wire Wire Line
	3890 2080 3890 4610
Wire Wire Line
	3890 4610 6190 4610
Wire Wire Line
	4210 2180 3980 2180
Wire Wire Line
	3980 2180 3980 4530
Wire Wire Line
	3980 4530 6090 4530
Wire Wire Line
	4210 2280 4070 2280
Wire Wire Line
	4070 2280 4070 4440
Wire Wire Line
	4070 4440 6000 4440
Wire Wire Line
	6000 4440 6000 2860
Wire Wire Line
	6000 2860 8410 2860
Wire Wire Line
	6490 1730 6490 1990
Wire Wire Line
	6490 1990 7050 1990
Wire Wire Line
	6350 2300 6350 1630
Wire Wire Line
	6350 2300 7050 2300
Wire Wire Line
	5950 1630 6350 1630
Connection ~ 6350 1630
Wire Wire Line
	6350 1630 6490 1630
$EndSCHEMATC
