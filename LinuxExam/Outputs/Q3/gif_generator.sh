#!/bin/bash
#create gif from image by using this command /gif_generator.sh /Images/flower.jpeg 50 10 18 and get result of /Outputs/Q3/animation.gif
# $1 is the path of image
# $2 is the number of frames
# $3 is the delay between frames
# $4 is the loop count
# $5 is the output path

iput=$1
size=$2
delay=$3
loop=$4
output=$5

convert -resize "$2" -delay "$delay" -loop "$loop" "$input" "$output"

