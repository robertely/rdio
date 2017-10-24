#!/usr/bin/python
from time import sleep

# WNYC: http://wnyc-ice.streamguys1.com:80/njprwe
# Static: RadioStatic.mp3
from lib import vlcsmpl

static = vlcsmpl.vlcsmpl('../RadioStatic.mp3')
static.setvol(50)
static.play()

sleep(10)
exit(0)

y = vlc_simple('http://wnyc-ice.streamguys1.com:80/njprwe')
y.setvol(100)
y.play()

x = vlc_simple('http://stream1.cprnetwork.org:80/cpr3_lo')
x.setvol(0)
x.play()

sleep(5)
# From y to static
for i in range(1,100):
    lin_fade(y,static,i)
    sleep(.05)
sleep(2)
# From static to x
for i in range(1,100):
    lin_fade(static,x,i)
    sleep(.05)
sleep(2)
# From x to static
for i in range(1,100):
    lin_fade(x,static,i)
    sleep(.05)
sleep(10)
exit(0)
