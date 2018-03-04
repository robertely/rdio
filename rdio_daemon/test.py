#!/usr/bin/python
from time import sleep
from lib.audio_player import audio_player
# WNYC: http://wnyc-ice.streamguys1.com:80/njprwe
# Static: RadioStatic.mp3

static = audio_player('../RadioStatic.mp3')
static.setvol(50)
static.play()

y = audio_player('http://wnyc-ice.streamguys1.com:80/njprwe')
y.setvol(100)
y.play()

x = audio_player('http://stream1.cprnetwork.org:80/cpr3_lo')
x.setvol(0)
x.play()

sleep(5)
# From y to static
for i in range(1,100):
    audio_player.lin_fade(y,static,i)
    sleep(.05)
sleep(2)
# From static to x
for i in range(1,100):
    audio_player.lin_fade(static,x,i)
    sleep(.05)
sleep(2)
# From x to static
for i in range(1,100):
    audio_player.lin_fade(x,static,i)
    sleep(.05)
sleep(10)
exit(0)
