#!/usr/bin/python3

#IDoorInit.py

import RPi.GPIO as GPIO
import serial
import time

class IDoorInit:
	def __init__(self):
		print("IDoorInit init");

		mod0_pwr_en_pin = 12
		mod0_err_pin = 11
		mod1_pwr_en_pin = 15
		mod1_err_pin = 13
		mod2_pwr_en_pin = 18
		mod2_err_pin = 16

		vid = 0x0403  # FT4232 VID
		pid = 0x6011  # FT4232 PID

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