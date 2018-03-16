from alsaaudio import Mixer, MIXER_CHANNEL_ALL # https://github.com/larsimmisch/pyalsaaudio

class alsa_mixer:
    def __init__(self, mixer="Digital"):
        self.mixer = alsaaudio.Mixer(mixer)

    def set_vol(level):
        self.mixer.setvolume(level, MIXER_CHANNEL_ALL)

    def get_vol():
        return self.mixer.getvolume()

    def raise_vol(count):
        self.mixer.set_vol(self.mixer.get_vol() + count)

    def lower_vol(count):
        cur_vol = self.mixer.get_vol()
        if cur_vol > cur_vol - count:
            self.mixer.set_vol(cur_vol - count)
            return cur_vol - count
        self.mixer.set_vol(0)
            return 0
