#!/bin/bash

CONVERTCMD=$(kdialog --inputbox "convert command" "convert [FILE] -quality 70 -resize 50% [OUTFILE]")

rm konv_log.txt
for FILE in $@;do
    FILE=$(echo $FILE | sed -e 's/[\/&]/\\&/g')
    OUTFILE=$(echo $FILE | sed -e 's/\(\..\{2,3\}\)$/_conv_\1/g')
    CMD=$(echo $CONVERTCMD | sed -e "s/\[FILE\]/${FILE}/g; s/\[OUTFILE\]/${OUTFILE}/g")
    echo $CMD >> konv_log.txt
    $CMD >> konv_log.txt
done

