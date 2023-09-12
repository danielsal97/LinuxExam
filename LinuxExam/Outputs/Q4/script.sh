#!/bin/bash
#data=$1- data path
#csv file=$2

data=$1
file=$2



#read from csv file
while IFS=, read -r col1, col2 , col3; do
    # check that files ar exist
if [ ! -f "$col1" ]; then
    echo "data file not exist"
    exit 1
fi

# check for compilation error if there is output to error.log
if [ ! -f "$col2" ]; then
    echo "csv file not exist"
    exit 1
fi
# check for run time error if there is output to error.log
if [ $? -ne 0 ]; then
    echo "error in csv file"
    exit 1
fi

    # if col 1 finish with .py
    if [[ $col1 == *.py ]]
    then
        #run the file
        python3 $col1 $col2 >> $col3
    
    if else [[ $col1 == *.java ]]
    then
        #run the file
        javac $col1 $col2 >> $col3
    if else [[ $col1 == *.cpp ]]
    then
        #run the file
        g++ $col1 $col2 >> $col3
    fi



    