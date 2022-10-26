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
#		  scan everything you need or just type "YES" every time the scan asks:) 

minTemp=200
maxTemp=0
avgTemp=0
gesTemp=0
numTemp=0
minTakt=0
maxTakt=0
for i in {1..100000}
do
	clear
	echo
	echo
	echo 
	echo
	echo
	#Calculate min and max temperature
	heat=$(sensors | grep --color "CPU Temperature")
	#echo $heat
	temp=${heat:21:2} #bei Laenge 4 bekommt man Kommazahl
	#echo $temp
	if [ $temp -lt $minTemp ]
	then
		minTemp=$temp
	fi
	if [ $temp -gt $maxTemp ]
	then
		maxTemp=$temp
	fi
	gesTemp=$(expr $gesTemp + $temp)
	numTemp=$(expr $numTemp + 1)
	avgTemp=$(expr $gesTemp / $numTemp)
	#echo "G: $gesTemp und Num: $numTemp mach AVG: $avgTemp"

	#print data
	sensors | grep --color "CPU Fan Speed"
	sensors | grep --color "CPU Temperature"
	sensors | grep --color "MB Temperature"
	sensors | grep --color 'Vcore Voltage'
	cat /proc/cpuinfo | grep --color 'cpu MHz'
	echo "-------------------------------------------------------------"
	echo "CPU Min: $minTemp"
	echo "CPU Max: $maxTemp"
	echo "CPU AVG: $avgTemp"

	sleep 2
done