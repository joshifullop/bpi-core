#!/bin/bash
# This script changes the 'LogToSession' symbolic pointer where the cron job writes its data.
# Usage: ./barleypi_log_to.sh <session file name>
# To stop effective logging, ./parleypi_log_to.sh /dev/null
root_dir="/home/pi/barleypi"
session_dir="$root_dir/sessions"
sd_len=`expr ${#sensor_dir} + 1`

cd $session_dir
ln -s -f $1 $session_dir/current 

