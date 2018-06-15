#!/bin/bash

#create directory structure
mkdir ~/calendar
mkdir ~/calendar/2018
mkdir ~/calendar/2018/january
mkdir ~/calendar/2018/february
mkdir ~/calendar/2018/march
mkdir ~/calendar/2018/april
mkdir ~/calendar/2018/may
mkdir ~/calendar/2018/june

#create files
cal 1 2018 > ~/calendar/2018/january/days.txt

cal 2 2018 > ~/calendar/2018/february/days.txt

cal 3 2018 > ~/calendar/2018/march/days.txt

cal 4 2018 > ~/calendar/2018/april/days.txt

cal 5 2018 > ~/calendar/2018/may/days.txt

cal 6 2018 > ~/calendar/2018/june/days.txt


#number of days, weeks, bussiness days

echo "Number of days in January:"
tail -n +3 ~/calendar/2018/january/days.txt | wc -w

echo "Number of weeks in January:"
tail -n +4 ~/calendar/2018/january/days.txt | wc -l

echo "Number of bussiness days in January:"
tail -n +3 ~/calendar/2018/january/days.txt | cut -c 4-17 | wc -w

echo "Number of days in February:"
tail -n +3 ~/calendar/2018/february/days.txt | wc -w

echo "Number of weeks in February:"
tail -n +4 ~/calendar/2018/february/days.txt | wc -l

echo "Number of bussiness days in February:"
tail -n +3 ~/calendar/2018/february/days.txt | cut -c 4-17 | wc -w

echo "Number of days in March:"
tail -n +3 ~/calendar/2018/march/days.txt | wc -w

echo "Number of weeks in March:"
tail -n +4 ~/calendar/2018/march/days.txt | wc -l

echo "Number of bussiness days in March:"
tail -n +3 ~/calendar/2018/march/days.txt | cut -c 4-17 | wc -w

echo "Number of days in April:"
tail -n +3 ~/calendar/2018/april/days.txt | wc -w

echo "Number of weeks in April:"
tail -n +4 ~/calendar/2018/april/days.txt | wc -l

echo "Number of bussiness days in April:"
tail -n +3 ~/calendar/2018/april/days.txt | cut -c 4-17 | wc -w

echo "Number of days in May:"
tail -n +3 ~/calendar/2018/may/days.txt | wc -w

echo "Number of weeks in May:"
tail -n +4 ~/calendar/2018/may/days.txt | wc -l

echo "Number of bussiness days in May:"
tail -n +3 ~/calendar/2018/may/days.txt | cut -c 4-17 | wc -w

echo "Number of days in June:"
tail -n +3 ~/calendar/2018/june/days.txt | wc -w

echo "Number of weeks in June:"
tail -n +4 ~/calendar/2018/june/days.txt | wc -l

echo "Number of bussiness days in June:"
tail -n +3 ~/calendar/2018/june/days.txt | cut -c 4-17 | wc -w

#How many months have passed
echo
echo $(ls -l ~/calendar/2018/ | grep -c ^d) "months have passed:"
ls ~/calendar/2018/ | sort -M
