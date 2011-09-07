#!/usr/bin/env python

# Python pySerial (http://pyserial.sourceforge.net/)
# aptitude install python-serial
import serial

# Arduino UNO
# port: /dev/ttyACM0
# baudrate: 9600
ser = serial.Serial('/dev/ttyACM0', 9600)

# loop
while True:
    num1 = int(raw_input('Num 1: '))
    num2 = int(raw_input('Num 2: '))

    sum = num1 + num2
    print "Total: %s" % sum

    # Sends the sum of inputs to blink on Arduino
    ser.write(str(sum))
