#!/usr/bin/env python3

import sys
import subprocess

def getMaxBrightness():
    with open('/sys/class/backlight/intel_backlight/max_brightness', 'r') as maxBr:
        return float(maxBr.read())


def getBrightness():
    with open('/sys/class/backlight/intel_backlight/brightness', 'r') as br:
        return float(br.read())


maxBrightness = getMaxBrightness()
brightness = getBrightness()
perc = maxBrightness / 100.0


def sendmessage(message):
    subprocess.Popen(['notify-send', '-t', '500', message])


def modifyBrightness(percentage):
    newBrightness = brightness + perc * percentage
    if maxBrightness >= newBrightness > 0:
        setBrightness(newBrightness)
    elif newBrightness <= 0:
        setBrightness(1)
    else:
        setBrightness(maxBrightness)
    sendmessage(str(int(getBrightness() / perc)))


def setBrightness(brightnessLevel):
    with open('/sys/class/backlight/intel_backlight/brightness', 'w') as br:
        br.write(str(int(brightnessLevel)))


def main(argv):
    if len(argv) > 0:
        modifyBrightness(int(argv[0]))
    else:
        modifyBrightness(10)


if __name__ == '__main__':
    main(sys.argv[1:])
