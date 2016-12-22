import sys
import os
import math
a = 0.001
SGM_lat = 34.021241
SGM_long = -118.288769
for i in range(0,360):
	angle = math.radians(i)
	_2angle = 2*angle
	x = (2*a*math.cos(angle))+(a*math.cos(_2angle))
	y = (2*a*math.sin(angle))-(a*math.sin(_2angle))
	print(str(round(y+SGM_long,10))+","+str(round(x+SGM_lat,10)) + "," + str(30), end = " ")

