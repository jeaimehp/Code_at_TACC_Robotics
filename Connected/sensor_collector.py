#!/usr/bin/python3

from envirophat import leds, motion, light, weather, analog
import time
leds.on()
print ("Starting collection")
print ("Light sensor = ",light.light())
print ("RGB Ligt Sensor = ", light.rgb())
print ("Temperature from pHat = ", weather.temperature())
print("Pressure from pHat = ", weather.pressure(unit='kPa'))
print("Compass heading = ",motion.heading())
print ("Analog sensor 0= ",analog.read(0))
print ("Analog sensor 1= ",analog.read(1))
print ("Analog sensor 2= ",analog.read(2))
print ("Analog sensor 3= ",analog.read(3))
leds.off()
input("Press Enter to continue ....")

