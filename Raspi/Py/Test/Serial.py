#!/usr/bin/python

#Serial.py

import RPi.GPIO as GPIO

import serial
import time

mod0_pwr_en_pin = 12
mod0_err_pin    = 11
mod1_pwr_en_pin = 15
mod1_err_pin    = 13
mod2_pwr_en_pin = 18
mod2_err_pin    = 16

vid = 0x0403 # FT4232 VID
pid = 0x6011 # FT4232 PID
portCnt = 4  # FT4232 Port count
modCnt  = 3  #

# path for uart interfaces --> devPathMod<X> + [ 0 .. 3] + devPathSuffix
devPathMod = ["","",""];
devPathMod[0] = "/dev/serial/by-path/platform-20980000.usb-usb-0:1.2:1."
devPathMod[1] = "/dev/serial/by-path/platform-20980000.usb-usb-0:1.3:1."
devPathMod[2] = "/dev/serial/by-path/platform-20980000.usb-usb-0:1.4:1."
devPathSuffix = "-port0"

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
GPIO.setup(mod0_pwr_en_pin, GPIO.OUT)
GPIO.setup(mod1_pwr_en_pin, GPIO.OUT)
GPIO.setup(mod2_pwr_en_pin, GPIO.OUT)
GPIO.setup(mod0_err_pin, GPIO.IN)
GPIO.setup(mod1_err_pin, GPIO.IN)
GPIO.setup(mod2_err_pin, GPIO.IN)

GPIO.output(mod0_pwr_en_pin, GPIO.HIGH)
GPIO.output(mod1_pwr_en_pin, GPIO.HIGH)
GPIO.output(mod2_pwr_en_pin, GPIO.HIGH)

#vtc = [(vid, pid)];

#allIFs = ftdiHandler.find_all(vtc);

URLList=[];
portList=[];

for mod in range(modCnt):

	for i in range(portCnt):
		currURL = devPathMod[mod] + str(i) + devPathSuffix;
		currPort = serial.Serial(currURL, baudrate=9600, timeout=0.1);
		portList.append(currPort);

val = True;

while True:
	if val:
		print("Setting all ports.\n");
	else:
		print("Resetting all ports.\n");
	for port in portList:
		if port.is_open:
			port.setRTS(val);
			port.write(b'B');
			print(port.read.decode('utf-8'));
		else:
			print("Port not open!");
	
	val = not val;
	time.sleep(1);


