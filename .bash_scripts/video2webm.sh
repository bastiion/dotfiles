#!/bin/zsh

INPUTFILE=${1}

if [ -z ${INPUTFILE} ];then
    echo "please provide an input file as argument"
    exit -1
fi

ffmpeg -i "${INPUTFILE}" -f webm -c:v libvpx -b:v 1M -acodec libvorbis "${INPUTFILE}.webm" -hide_banner
