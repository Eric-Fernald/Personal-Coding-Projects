#This program launches a rocket in Kerbal Space Program.
#Created by Eric Fernald.

import krpc
import time 

#Establishes connection to the krpc server.
connection = krpc.connect()

vessel = connection.space_center.active_vessel

#Note: Set the staging is set properly so that the parachute doesn't deploy at the same time as the booster.
vessel.control.activate_next_stage()