#!/bin/bash

# this script send the machine status to my email regularly
echo -e "external ip\n" > tmp.txt
lynx --dump http://ipecho.net/plain >> tmp.txt
echo -e "\ninternal ip\n" >> tmp.txt
ifconfig >> tmp.txt
echo -e "\ndisk (micro sd card) info\n" >> tmp.txt
df -h >> tmp.txt;
echo -e "\nmemory usage info\n" >> tmp.txt
head /proc/meminfo >> tmp.txt;
echo -e "\npicture the robot see :)" >> tmp.txt
# take a picture
raspistill -o tmp.jpg
mail -s "Hello Jiaxuan! Greeting from pi!" -a tmp.jpg jiaxuan@umich.edu < tmp.txt;
rm tmp.txt
rm tmp.jpg