#!/bin/bash
# Ask the user for their name
echo Hello Dave, what is your source folder?
read source

echo I\'ll move this shit: $source

echo how many tagets? Dave! yeah Dave!? how many?!

targetCount=""
while [[ ! $targetCount =~ ^[0-9]+$ ]]; do
    echo No, Dave!!! A number between 0-9!
    read targetCount
done
echo Fine Dave! I/'ll laboriously move the files between these directories.


echo What is your target folder, Daaave!? 
read target


for i in `seq 1 $targetCount`;
do
echo $i
done   

