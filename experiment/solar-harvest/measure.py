#!/usr/bin/python  
  
import mraa  
import time  
import datetime

from Subfact_ina219 import INA219

vpin = mraa.Aio(1)
cpin = mraa.Gpio(14)
lpin = mraa.Gpio(13)
  
cpin.dir(mraa.DIR_OUT)  
lpin.dir(mraa.DIR_OUT)  
 
currentDriver = INA219() 
currentDriver.ina219SetCalibration_16V_400mA()
  
while True:  

  # switch to voltage measurement
  cpin.write(0)  
  time.sleep(0.2)
	
  v = vpin.read() * 5/1023.0  

  # switch to current measurement
  cpin.write(1)  
  time.sleep(0.2)

  # avoid -0.1
  a = max(0.0, currentDriver.getCurrent_mA())

  # print stuff     
  current_time = datetime.datetime.now()
  print current_time, v, a

  # wait half a second for the next measurement and blink the led
  lpin.write(1)
  time.sleep(0.5)
  lpin.write(0)
