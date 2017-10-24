#!/usr/bin/python
import time
import serial

# configure the serial connections (the parameters differs on the device
# you are connecting to)
ser = serial.Serial(
    port='/dev/ttyUSB0',
    # port='/dev/ttyACM0',
    baudrate=9600
    # parity=serial.PARITY_ODD,
    # stopbits=serial.STOPBITS_TWO,
    # bytesize=serial.SEVENBITS
)
ser.flushOutput()  # flush output buffer, aborting current output

while True:
    for i in range(0,10):
        msg = "Tacos%s" % i
        print(msg)
        ser.write(msg.encode())
        time.sleep(1)
