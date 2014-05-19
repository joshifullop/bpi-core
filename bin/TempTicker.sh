#!/bin/bash
root_dir="/home/pi/barleypi"
sensor_dir="$root_dir/sensors"
sd_len=`expr ${#sensor_dir} + 1`


while :
do

	utime=`/bin/date +%s`
	outstr="Data: $utime"
	#echo "INIT: " $outstr


	for i in $sensor_dir/[0-9]
	do
	#echo "test: " ${#sensor_dir}
	#echo "Sensor: " ${i:$sd_len}
	t1=`cat $i/w1_slave | grep "t=" | awk {'print substr($10,3)/1000'}`
	#echo "Temp1: $t1"
	outstr=$outstr","$t1
	#echo "OUT: " $outstr
	done

echo "Event: Temperature-Update"
echo $outstr
sleep 3
done

#echo $outstr >> $root_dir/LogToSession
