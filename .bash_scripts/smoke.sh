#!/bin/zsh

SMOKERAN=$((1 + RANDOM % 100))

if [ $SMOKERAN -gt 75 ];then
 echo -e "\e[32m🍁"
else
 echo -e "\e[91m🖕"
fi
