#This program launches a rocket in Kerbal Space Program.
#Created by Eric Fernald.

import krpc
import time 

#Establishes connection to the krpc server.
conn = krpc.connect()

vessel = connection.space_center.active_vessel

#Note: Set the staging is set properly so that the parachute doesn't deploy at the same time as the booster.
vessel.control.activate_next_stage()

#Countdown sequence.
countdown = ["Ten", "Nine", "Eight", "Seven", "Six", "Five", "Four", "Three", "Two", "One", "LIFT OFF!"]

for i in range(len(countdown)):
    print(countdown[i])
    time.sleep(1)