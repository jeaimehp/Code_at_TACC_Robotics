#!/usr/bin/python3

from envirophat import leds, motion, light, weather, analog
import time
print ("What sensor do you want to test?")
s = input ("(l)ight (t)emperature (p)ressure (c)compass analog pin (0-3)")
r = int(input("How many times?"))
if (s == 'l'):
    for i in range(r): 
        leds.on()
        print ("Collection #",i+1,"Light sensor = ",light.light())
        print ("Starting collection #",i+1,"RGB Ligt Sensor = ", light.rgb())
        time.sleep (.5)
elif (s == 't'):
    for i in range(r): 
        leds.on()
        print ("Starting collection #",i+1,"Temperature from pHat = ", weather.temperature())
        time.sleep (.5)
elif (s == 'p'):
    for i in range(r): 
        leds.on()
        print("Starting collection #",i+1,"Pressure from pHat = ", weather.pressure(unit='kPa'))
        time.sleep (.5)
elif (s == 'c'):
    for i in range(r): 
        leds.on()
        print("Starting collection #",i+1,"Compass heading = ",motion.heading())
        time.sleep (.5)
elif (s == '0'):
    for i in range(r): 
        leds.on()
        print ("Starting collection #",i+1,"Analog sensor 0= ",analog.read(0))
        time.sleep (.5)
elif (s == '1'):
    for i in range(r): 
        leds.on()
        print ("Starting collection #",i+1,"Analog sensor 1= ",analog.read(1))
        time.sleep (.5)
elif (s == '2'):
    for i in range(r): 
        leds.on()
        print ("Starting collection #",i+1,"Analog sensor 2= ",analog.read(2))
        time.sleep (.5)
elif (s == '3'):
    for i in range(r): 
        leds.on()
        print ("Starting collection #",i+1,"Analog sensor 3= ",analog.read(3))
        time.sleep (.5)
else:
    print ("Invalid response. Please enter l,t,p,c,0,1,2,or 3")
        
leds.off()
input("Press Enter to continue ....")

