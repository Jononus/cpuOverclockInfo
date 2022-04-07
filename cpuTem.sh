#! /bin/bash
#title           :cpuTem.sh
#description     :This script will print CPU and MB temperature and the clock speed of all of your cores 
#author		 :Jonas Hübner
#date            :22.02.2022
#version         :4.2    
#usage		 :cpuTem.sh
#notes           :Install "lm-sensors" for this script: 
#			sudo apt-get install lm-sensors (for Ubuntu)
#		  and run:
#			sudo sensors-detect
#		  scan everything you need or just type "YES" every time :) 

for i in {1..100000}
do
	clear
	echo
	echo
	echo 
	echo
	echo
	sensors | grep --color CPU
	sensors | grep --color MB
	sensors | grep --color 'Vcore Voltage'
	cat /proc/cpuinfo | grep --color 'cpu MHz'
	sleep 2
done