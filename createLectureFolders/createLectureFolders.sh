#!/bin/sh

lines=`cat lectures.txt | tr -d '\r'`;
mkdir Lectures;
cd Lectures;
for line in $lines; do
    echo $line
    mkdir $line;
    cd $line;

    mkdir Materials;
    mkdir Homeworks;
    mkdir Practice;

    cd ..;
done

