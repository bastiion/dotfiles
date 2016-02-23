#!/bin/bash

NVCLOCK=/usr/bin/nvclock 

function nvinfo() {
    info=$1
    flag=$2
    sudo $NVCLOCK -${flag} | grep "${info}" | sed "s/.*${info}:\s*\([0-9]*\)/\1/"
}


#script -c "i3status" /dev/null | while :
i3status | while :
do
    read line
    if [ -x $NVCLOCK ];then
        gputemp=$(nvinfo "temperature" T )
        gpuspeed=$(nvinfo "GPU clock" s )
        echo "GPU: ${gputemp}  ${gpuspeed} | $line" || exit 1
    else
        echo "$line"
    fi
done
