#!/usr/bin/env python
from pprint import pprint
from random import randint

screenLen = 40

stations = {"WNYC": {}, "101.5": {}, "WBEZ": {}, "CPR News": {}, "CPR Open Air": {}}
tunerBookEnds = ".   " * 6


# Build the spectrum
spectrum = tunerBookEnds
for station, _ in stations.items():
    spectrum += "-%s-" % station
    spectrum += "   .   .   .   "
spectrum += tunerBookEnds

# Put in the location of each station on the "spectrum"
# IDGAF: This is wasteful as a search.
for station, _ in stations.items():
    locStart = spectrum.index(station)
    locEnd = locStart + len(station)
    stations[station]['charlocation'] = (locStart, locEnd)

# Start at a random position
position = randint(0, len(spectrum) - screenLen)
LineA = spectrum[position:position + screenLen]
LineB = '                  ^^                    '


print('##########################################')
print('#' + LineA + '#')
print '#' + LineB + '#'
print('##########################################')
