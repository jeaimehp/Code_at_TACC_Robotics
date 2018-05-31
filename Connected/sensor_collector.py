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
print ("MQ2 gas sensor = ",analog.read(0))
leds.off()

