#!/bin/bash

awk '
    BEGIN { FS="[^a-zA-ZüöäÜÖÄß]+" }

    {
        for (i=1; i<=NF; i++) {
            word = tolower($i)
            words[word]++
        }
    }

    END {
        for (w in words)
             printf("%3d %s\n", words[w], w)
    }
' |
sort -rn
