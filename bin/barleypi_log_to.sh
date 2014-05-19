#!/bin/bash
root_dir="/home/pi/barleypi"
session_dir="$root_dir/sessions"
sd_len=`expr ${#sensor_dir} + 1`

cd $session_dir
ln -s -f $1 $session_dir/current 

