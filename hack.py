import math

start = 1
while (start <= 25.0):
    print("(" + str(start) + "," + str(1-math.e**((-50**2)/(4**start))) + ")")
    start += 0.25
