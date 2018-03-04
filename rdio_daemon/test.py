#!/usr/bin/python
from time import sleep
from lib import vlcsmpl
# WNYC: http://wnyc-ice.streamguys1.com:80/njprwe
# Static: RadioStatic.mp3


mixer = alsaaudio.Mixer("Digital")
mixer.setvolume(60, alsaaudio.MIXER_CHANNEL_ALL)



static = vlcsmpl.vlcsmpl('../RadioStatic.mp3')
static.setvol(50)
static.play()

y = vlcsmpl.vlcsmpl('http://wnyc-ice.streamguys1.com:80/njprwe')
y.setvol(100)
y.play()

x = vlcsmpl.vlcsmpl('http://stream1.cprnetwork.org:80/cpr3_lo')
x.setvol(0)
x.play()

sleep(5)
# From y to static
for i in range(1,100):
    vlcsmpl.lin_fade(y,static,i)
    sleep(.05)
sleep(2)
# From static to x
for i in range(1,100):
    vlcsmpl.lin_fade(static,x,i)
    sleep(.05)
sleep(2)
# From x to static
for i in range(1,100):
    vlcsmpl.lin_fade(x,static,i)
    sleep(.05)
sleep(10)
exit(0)
