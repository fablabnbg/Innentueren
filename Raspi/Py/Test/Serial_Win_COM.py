#!/usr/bin/python

#Serial.py


import serial
import time

currPort = serial.Serial("COM23", baudrate=9600, timeout=0.1);

val = True; 

while True:
	
	if currPort.is_open:
		print(currPort.read(1024).decode('utf-8'));
		if val:
			print("Setting all ports.\n");
			packet=bytearray([0x70, 0xE1]);
			currPort.write(packet);
		else:
			print("Resetting all ports.\n");
			packet=bytearray([0x4C, 0xED]);
			currPort.write(packet);
	else:
		print("Port not open!");
	
	val = not val;
	time.sleep(1);


