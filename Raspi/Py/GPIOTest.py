#!/usr/bin/python

#Serial.py

import RPi.GPIO as GPIO
from pyftdi import serialext
import time

mod0_pwr_en_pin = 18
mod0_err_pin = 11
mod1_pwr_en_pin = 22
mod1_err_pin = 13
mod2_pwr_en_pin = 24
mod2_err_pin = 16

#port1 = serialext.serial_for_url('ftdi://ftdi:4232h:1:6/1', baudrate=9600, timeout=1)
#port2 = serialext.serial_for_url('ftdi://ftdi:4232h:1:5/1', baudrate=9600, timeout=1)
#port3 = serialext.serial_for_url('ftdi://ftdi:4232h:1:4/1', baudrate=9600, timeout=1)
#port4 = serialext.serial_for_url('ftdi://ftdi:4232h:1:4/2', baudrate=9600, timeout=1)
#port2 = serialext.serial_for_url('ftdi:///2', baudrate=9600, timeout=1)
#port3 = serialext.serial_for_url('ftdi:///3', baudrate=9600, timeout=1)
#port4 = serialext.serial_for_url('ftdi:///4', baudrate=9600, timeout=1)

GPIO.setmode(GPIO.BCM)
GPIO.setup(mod0_pwr_en_pin, GPIO.OUT)
GPIO.setup(mod1_pwr_en_pin, GPIO.OUT)
GPIO.setup(mod2_pwr_en_pin, GPIO.OUT)
#GPIO.setup(mod0_err_pin, GPIO.IN)
#GPIO.setup(mod1_err_pin, GPIO.IN)
#GPIO.setup(mod2_err_pin, GPIO.IN)

GPIO.output(mod0_pwr_en_pin, GPIO.HIGH)
GPIO.output(mod1_pwr_en_pin, GPIO.HIGH)
GPIO.output(mod2_pwr_en_pin, GPIO.HIGH)

