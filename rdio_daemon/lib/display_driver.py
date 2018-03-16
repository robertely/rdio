import time
import serial

class display_driver():
    # Some useful bytes to have.
    _cmd = 0xFE # Start of command sequence
    _clr = 0x01 # Clear screen
    _rshft = 0x1C # shift screen one colum right
    _lshft = 0x18 # shift screen one colum left

    def __init__(self, port='/dev/ttyACM0', baudrate=250000):
        self.port=port
        self.baudrate=baudrate
        self.parity=serial.PARITY_ODD
        self.stopbits=serial.STOPBITS_TWO
        self.bytesize=serial.SEVENBITS
        self.screenLength = 40
        self.screenheight = 2
        self.display = serial.Serial(
            port=self.port,
            baudrate=self.baudrate,
            # I could template these, but really they don't change.
            parity=serial.PARITY_ODD,
            stopbits=serial.STOPBITS_TWO,
            bytesize=serial.SEVENBITS
            )

    def sendByte(self, inbyte):
        ser.write(chr(inbyte))

    def write(msg):
        ser.write(msg)

    def writeAt(msg='',line=0 , pos=0):
        screenGOTO(pos, line)
        screenWrite(msg)

    def clear(self):
        sendByte(_cmd)
        sendByte(_clr)
        time.sleep(.02)  # This command takes a while

    def shiftRight(self, count=1):
        for _ in range(count):
            sendByte(_cmd)
            sendByte(_rshft)

    def shiftLeft(self, count=1):
        for _ in range(count):
            sendByte(_cmd)
            sendByte(_lshft)

    def goTo(self, pos=0, line=0):
        finalpos = 0x80 + (line * 64) + pos
        sendByte(_cmd)
        sendByte(finalpos)
