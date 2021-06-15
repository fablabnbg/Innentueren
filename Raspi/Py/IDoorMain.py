#!/usr/bin/python3

# IDoorMain.py

# from IDoorInit import IDoorInit
from IDoorProt import IDoorProt
from IDoorComm import IDoorComm
from IDoorInit import IDoorInit

import time

def supermario(c: IDoorProt):
    a = bytearray()
    a.append(c.setTone(8, "e"))
    a.append(c.setTone(8, "e"))
    a.append(c.setTone(8, " "))
    a.append(c.setTone(8, "e"))
    a.append(c.setTone(8, "c"))
    a.append(c.setTone(8, "e"))
    a.append(c.setTone(8, " "))
    a.append(c.setTone(4, "g"))
    a.append(c.setTone(4, " "))
    a.append(c.setTone(4, "G"))
    return a


def main():
    portCnt = 4  # FT4232 Port count
    modCnt = 3  #

    print("IDoorSrv Init start")
    IDoorInit()
    c = IDoorProt()

    # path for uart interfaces --> devPathMod<X> + [ 0 .. 3] + devPathSuffix
    devPathMod = ["", "", ""];
    devPathMod[0] = "/dev/serial/by-path/platform-20980000.usb-usb-0:1.2:1."
    devPathMod[1] = "/dev/serial/by-path/platform-20980000.usb-usb-0:1.3:1."
    devPathMod[2] = "/dev/serial/by-path/platform-20980000.usb-usb-0:1.4:1."
    devPathSuffix = "-port0"

    sRS = devPathMod[0] + "0" + devPathSuffix
    sAR = devPathMod[0] + "1" + devPathSuffix
    sDK = devPathMod[0] + "2" + devPathSuffix
    sBZ = devPathMod[0] + "3" + devPathSuffix

    sGL = devPathMod[1] + "0" + devPathSuffix
    sLA = devPathMod[1] + "1" + devPathSuffix
    sBU = devPathMod[1] + "2" + devPathSuffix
    sWE = devPathMod[1] + "3" + devPathSuffix

    sKU = devPathMod[2] + "0" + devPathSuffix
    sKO = devPathMod[2] + "1" + devPathSuffix

    KO = IDoorComm(sKO);
    readbytes = bytearray()
    led = bytearray()

    while True:
        led = c.setLed("g")
        KO.write(led.to_bytes(1, 'little'))
        readbytes = KO.read()
        for val in readbytes:
            led = c.setLed("r")
            KO.write(led.to_bytes(1, 'little'))
            #print(str(val))
        time.sleep(1);


    #a = bytearray()
    #a = supermario(c)
    #for val in a:
     #   print(str(hex(val)))


if __name__ == "__main__":
    main()
