#!/usr/bin/python3

#IDoorComm.py

import serial

class IDoorComm:

    def __init__(self, port: str):
        try:
            self.handle = serial.Serial(port,  baudrate=9600, timeout=0.1)
        except:
            print("Can not open " + port + " !")



    def write(self, buff: bytes):
        if self.handle.is_open:
            for val in buff:
                print(str(val))
            self.handle.write(buff)

    def read(self):
        if self.handle.is_open:
            return self.handle.read_all()
        else:
            return []



