#!/bin/bash

if [ "$#" -lt "1" ] || [ "$#" -gt "2" ] ; then
	echo "usage: 		 ./mattersky2equi.sh <one matterport skybox> [<width>]"
	echo "e.g: 		./mattersky2equi.sh pan-high-1-skybox0.jpg"
	echo "		./mattersky2equi.sh pan-high-1-skybox0.jpg 4096"
	exit 0
fi

name=$(echo $* | awk -F skybox ' { print $1; } ')

echo "name is $name"

ts0=$(date +%s)

./sky2equi.sh "$name"skybox1_sami.jpg "$name"skybox3_sami.jpg "$name"skybox4_sami.jpg "$name"skybox2_sami.jpg "$name"skybox0_sami.jpg "$name"skybox5_sami.jpg "$name"equi.jpg $2

ts1=$(date +%s)
let "dif = $ts1 - $ts0"
echo "Time elapsed $dif seconds"
