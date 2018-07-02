#!/usr/bin/python3

from envirophat import leds, motion, light, weather, analog
import time
import datetime
leds.on()
print ('{:%Y-%m-%d %H:%M:%S}'.format(datetime.datetime.now()),",",light.light(),",",light.rgb(),",",weather.temperature(),",",weather.pressure(unit='kPa'),",",motion.heading(),",",analog.read(0),",",analog.read(1),",",analog.read(2),",",analog.read(3))
leds.off()
