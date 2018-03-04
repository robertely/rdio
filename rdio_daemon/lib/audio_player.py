from vlc import Instance
from math import log

class audio_player:
    def __init__(self, mediapath):
        self.mediapath = mediapath
        self.instance = Instance()
        self.player = self.instance.media_player_new()
        self.media = self.instance.media_new(self.mediapath)
        self.player.set_media(self.media)

    def play(self):
        self.player.play()

    def pause(self):
        self.player.pause()

    def setvol(self, vol):
        self.player.audio_set_volume(vol)

# Fade from A to B, a value from 0-100
def lin_fade(vlc_A, vlc_B, fade):
    vlc_B.setvol(fade)
    vlc_A.setvol(100 - fade)
    print("fade",100 - fade)

# TODO: This.
def log_fade(vlc_A, vlc_B, fade):
    pass
