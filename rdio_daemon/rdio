#!/usr/bin/python
import time
import serial
from random import randint

from pprint import pprint
from readchar import readchar
# configure the serial connections (the parameters differs on the device
# you are connecting to)
ser = serial.Serial(
    # port='/dev/ttyUSB0',
    port='/dev/ttyACM0',
    baudrate=250000,
    parity=serial.PARITY_ODD,
    stopbits=serial.STOPBITS_TWO,
    bytesize=serial.SEVENBITS
)

screenLen = 40

stations = {
    "WNYC": {
        "location": "New York",
        "stream": "http://fm939.wnyc.org/wnycfm"},
    "KUNCFM": {
        "location": "N. Colorado",
        "stream": "http://14523.live.streamtheworld.com:80/KUNCFM_64_SC"},
    "WBEZ": {
        "location": "Chicago",
        "stream": ""},
    "CPR News": {
        "location": "Colorado",
        "stream": "http://stream1.cprnetwork.org:80/cpr1_lo"},
    "CPR Open Air": {
        "location": "Colorado",
        "stream": "http://stream1.cprnetwork.org:80/cpr3_lo"}
    }


def sendByte(inb):
    ser.write(chr(inb))


def screenWrite(msg=''):
    ser.write(msg)


def screenClear():
    sendByte(0xFE)
    sendByte(0x01)
    time.sleep(.02)  # This command takes a while


def shiftScreenRight(count=1):
    for _ in range(count):
        sendByte(0xFE)
        sendByte(0x1C)


def shiftScreenLeft(count=1):
    for _ in range(count):
        sendByte(0xFE)
        sendByte(0x18)


def screenGOTO(pos=0, line=0):
    finalpos = 0x80 + pos + (line * 64)
    sendByte(0xFE)
    sendByte(finalpos)


def screenGTAP(msg='', pos=0, line=0): # Go To And Print
    screenGOTO(pos, line)
    screenWrite(msg)


def nearestStation(stations, cntr):
    nearest = {}
    for k, v in stations.items():
        # If were on a station just return
        if (cntr > v['charlocation'][0]) and (cntr <= v['charlocation'][1] + 1):
            return k, 0
        dist = abs(cntr - v['charlocation'][0] + 1)
        if abs(cntr - v['charlocation'][1] - 1) < dist:
            dist = abs(cntr - v['charlocation'][1] - 1)
        if dist <= nearest.get('dist', 1000):
            nearest['name'] = k
            nearest['dist'] = dist
    return nearest['name'], nearest['dist']



# Build the spectrum
spectrum = "| > > >  .   .   ."
for station, _ in stations.items():
    spectrum += "-%s-" % station
    spectrum += "   .   .   .   "
spectrum += ".   .   .  < < < |"

# Put in the location of each station on the "spectrum"
# IDGAF: This is wasteful as a search. I do not give a fuck.
for station, _ in stations.items():
    locStart = spectrum.index(station)
    locEnd = locStart + len(station)
    stations[station]['charlocation'] = [locStart, locEnd]

# Start at a random position
position = randint(0, len(spectrum) - screenLen)


LineA = spectrum[position:position + screenLen]
LineB = '                  ^^                    '


print('##########################################')
print('#' + LineA + '#')
print '#' + LineB + '#'
print('##########################################')


ser.flushInput()  # flush input buffer, discarding all its contents
ser.flushOutput()  # flush output buffer, aborting current output
screenClear()
# screenWrite('0123456789012345678901234567890123456789')
# screenWrite('0123456789012345678901234567890123456789')
LineB = '                  ^^                    '
screenGOTO(0, 1)
screenWrite(LineB)

pprint(stations)

while True:

    key = readchar()
    print key
    if key == 'w': # if the 'ESC' key is pressed, Quit
        quit()
    if key == 0:
        print "up"
    elif key == 1:
        print "down"
    elif key == 'a':
      if position >= 1:
        position -= 1
    elif key == 'd':
      if position < len(spectrum) - screenLen:
        position += 1
    center = position + 20
    nearest = nearestStation(stations, center)
    pprint(nearest)
    if nearest[1] == 0:
        screenGTAP(stations[nearest[0]]['location'], 0, 1)
    else:
        pass


    screenGOTO(0, 0)
    screenWrite(spectrum[position:position + screenLen])
