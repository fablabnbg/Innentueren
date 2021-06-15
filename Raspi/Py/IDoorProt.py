#!/usr/bin/python3

#IDoorProt.py

class IDoorProt:
    def __init__(self):
        a = 0;
    def getDurationByte(self, i):
        tone_duration = {
            2:  0x00,
            4:  0x20,
            8:  0x40,
            16: 0x60,
        }
        return tone_duration.get(i, 0);

    def setTone(self, duration, tone):
        if (type(duration) != int ) or (type(tone) != str):
            print("duration and tone has to be a string!");
            return;
        tone_byte = 0x80;
        tone_byte |= self.getDurationByte(duration);

        if tone == " ":
            tone_byte |= 0x00;
        if tone == "C":
            tone_byte |= 0x01;
        elif tone == "C#":
            tone_byte |= 0x02;
        elif tone == "D":
            tone_byte |= 0x03;
        elif tone == "D#":
            tone_byte |= 0x04;
        elif tone == "E":
            tone_byte |= 0x05;
        elif tone == "F":
            tone_byte |= 0x06;
        elif tone == "F#":
            tone_byte |= 0x07;
        elif tone == "G":
            tone_byte |= 0x08;
        elif tone == "G#":
            tone_byte |= 0x09;
        elif tone == "A":
            tone_byte |= 0x0A;
        elif tone == "A#":
            tone_byte |= 0x0B;
        elif tone == "H":
            tone_byte |= 0x0C;
        elif tone == "c":
            tone_byte |= 0x0D;
        elif tone == "c#":
            tone_byte |= 0x0E;
        elif tone == "d":
            tone_byte |= 0x0F;
        elif tone == "d#":
            tone_byte |= 0x10;
        elif tone == "e":
            tone_byte |= 0x11;
        elif tone == "f":
            tone_byte |= 0x12;
        elif tone == "f#":
            tone_byte |= 0x13;
        elif tone == "g":
            tone_byte |= 0x14;
        elif tone == "g#":
            tone_byte |= 0x15;
        elif tone == "a":
            tone_byte |= 0x16;
        elif tone == "a#":
            tone_byte |= 0x17;
        elif tone == "h":
            tone_byte |= 0x18;
        elif tone == "c'":
            tone_byte |= 0x19;
        elif tone == "c#'":
            tone_byte |= 0x1A;
        elif tone == "d'":
            tone_byte |= 0x1B;
        elif tone == "d#'":
            tone_byte |= 0x1C;
        elif tone == "e'":
            tone_byte |= 0x1D;
        elif tone == "f'":
            tone_byte |= 0x1E;

        return tone_byte;

    def setLed(self, color):
        if type(color) != str:
            print("color has to be a string!\n");
            return;

        led_byte = 0x40

        _color = color.lower()

        if "r" in _color:
            led_byte |= 0x30
        if "g" in _color:
            led_byte |= 0x0C
        if "b" in _color:
            led_byte |= 0x03

        led = bytearray()
        led.append(led_byte)
        return led_byte




