# cpuOverclockInfo
A little script for tracking relevant CPU information for overclocking.
Tested on Linux Ubuntu 20.04.4 LTS and Ubuntu 16 LTS

########### Before first use ###########
Make sure lm-sensors is installed.
If it is not: "sudo apt-get install lm-sensors"
=> After installing run "sudo sensors-detect" once (if you don't know what the questions mean, just type YES every time ;))
Make sure you have die eXecute-rights for the script (->"chmod 777 ./cpuTem.sh")

########### Usage ###########
Start tracking useful information with "./cpuTem.sh" (it's a script, you know :D)
Have fun overclocking your CPU!

Feel free to change the scrip therefore it suits your needs. E.g change polling rate ("sleep 1" instead of "sleep 2"), don't clear all infos before printing 
newer ones (comment the line "clear") etc.