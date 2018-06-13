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
echo " 1  2  3  4  5  6  7" > ~/calendar/2018/january/days.txt
echo " 8  9 10 11 12 13 14" >> ~/calendar/2018/january/days.txt
echo "15 16 17 18 19 20 21" >> ~/calendar/2018/january/days.txt
echo "22 23 24 25 26 27 28" >> ~/calendar/2018/january/days.txt
echo "29 30 31" >> ~/calendar/2018/january/days.txt

echo "          1  2  3  4" > ~/calendar/2018/february/days.txt
echo " 5  6  7  8  9 10 11" >> ~/calendar/2018/february/days.txt
echo "12 13 14 15 16 17 18" >> ~/calendar/2018/february/days.txt
echo "19 20 21 22 23 24 25" >> ~/calendar/2018/february/days.txt
echo "26 27 28" >> ~/calendar/2018/february/days.txt

echo "          1  2  3  4" > ~/calendar/2018/march/days.txt
echo " 5  6  7  8  9 10 11" >> ~/calendar/2018/march/days.txt
echo "12 13 14 15 16 17 18" >> ~/calendar/2018/march/days.txt
echo "19 20 21 22 23 24 25" >> ~/calendar/2018/march/days.txt
echo "26 27 28 29 30 31" >> ~/calendar/2018/march/days.txt

echo "                   1" > ~/calendar/2018/april/days.txt
echo " 2  3  4  5  6  7  8" >> ~/calendar/2018/april/days.txt
echo " 9 10 11 12 13 14 15" >> ~/calendar/2018/april/days.txt
echo "16 17 18 19 20 21 22" >> ~/calendar/2018/april/days.txt
echo "23 24 25 26 27 28 29" >> ~/calendar/2018/april/days.txt
echo "30" >> ~/calendar/2018/april/days.txt

echo "    1  2  3  4  5  6" > ~/calendar/2018/may/days.txt
echo " 7  8  9 10 11 12 13" >> ~/calendar/2018/may/days.txt
echo "14 15 16 17 18 19 20" >> ~/calendar/2018/may/days.txt
echo "21 22 23 24 25 26 27" >> ~/calendar/2018/may/days.txt
echo "28 29 30 31" >> ~/calendar/2018/may/days.txt

echo "             1  2  3" > ~/calendar/2018/june/days.txt
echo " 4  5  6  7  8  9 10" >> ~/calendar/2018/june/days.txt
echo "11 12 13 14 15 16 17" >> ~/calendar/2018/june/days.txt
echo "18 19 20 21 22 23 24" >> ~/calendar/2018/june/days.txt
echo "25 26 27 28 29 30" >> ~/calendar/2018/june/days.txt

#number of days, weeks, bussiness days
#I used cut because using only wc shows on the screen the path
echo "Number of days in January:"
cut -c 1-20 ~/calendar/2018/january/days.txt | wc -w

echo "Number of weeks in January:"
cut -c 1-20 ~/calendar/2018/january/days.txt | wc -l

echo "Number of bussiness days in January:"
cut -c 1-14 ~/calendar/2018/january/days.txt | wc -w

echo "Number of days in February:"
cut -c 1-20 ~/calendar/2018/february/days.txt | wc -w

echo "Number of weeks in February:"
cut -c 1-20 ~/calendar/2018/february/days.txt | wc -l

echo "Number of bussiness days in February:"
cut -c 1-14 ~/calendar/2018/february/days.txt | wc -w

echo "Number of days in March:"
cut -c 1-20 ~/calendar/2018/march/days.txt | wc -w

echo "Number of weeks in March:"
cut -c 1-20 ~/calendar/2018/march/days.txt | wc -l

echo "Number of bussiness days in March:"
cut -c 1-14 ~/calendar/2018/march/days.txt | wc -w

echo "Number of days in April:"
cut -c 1-20 ~/calendar/2018/april/days.txt | wc -w

echo "Number of weeks in April:"
cut -c 1-20 ~/calendar/2018/april/days.txt | wc -l

echo "Number of bussiness days in April:"
cut -c 1-14 ~/calendar/2018/april/days.txt | wc -w

echo "Number of days in May:"
cut -c 1-20 ~/calendar/2018/may/days.txt | wc -w

echo "Number of weeks in May:"
cut -c 1-20 ~/calendar/2018/may/days.txt | wc -l

echo "Number of bussiness days in May:"
cut -c 1-14 ~/calendar/2018/may/days.txt | wc -w

echo "Number of days in June:"
cut -c 1-20 ~/calendar/2018/june/days.txt | wc -w

echo "Number of weeks in June:"
cut -c 1-20 ~/calendar/2018/june/days.txt | wc -l

echo "Number of bussiness days in June:"
cut -c 1-14 ~/calendar/2018/june/days.txt | wc -w

#How many months have passed
echo
echo $(ls -l ~/calendar/2018/ | grep -c ^d) "months have passed:"
ls ~/calendar/2018/ | sort -M
