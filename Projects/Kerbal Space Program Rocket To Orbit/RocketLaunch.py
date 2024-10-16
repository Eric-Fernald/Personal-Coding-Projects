#This program launches a rocket into orbit in Kerbal Space Program.
#Created by Eric Fernald.

"""
To run this KSP kRPC Python program you need:
- Kerbal Space Program (tested in 1.5.1)
- OrbitRocket Craft file included in the directory.
- kRPC 0.4.8 (https://github.com/krpc/krpc/releases/download/v0.4.8/krpc-0.4.8.zip)
  Use the install guide on https://krpc.github.io/krpc/getting-started.html
- I've also installed the Python client library (https://pypi.python.org/pypi/krpc)
- Python 3.9.1 (https://www.python.org/downloads/release/python-391/)
"""

import krpc
import time 

#Establishes connection to the krpc server.
conn = krpc.connect()

#Establishes the rocket as the main vessel.
vessel = conn.space_center.active_vessel

#Countdown Sequence.
countdown = ["Five", "Four", "Three", "Two", "One", "LIFT OFF!"]

#Start the Countdown Sequence.
for i in range(len(countdown)):
    print(countdown[i])
    time.sleep(1)

vessel.control.throttle = 1
vessel.control.activate_next_stage()

#Flight State.
ascentPhase = True
cruisePhase = False
insertionPhase = False

#Main Launch Control.
while ascentPhase or cruisePhase or insertionPhase:
    altitude = vessel.flight().mean_altitude
    heading = vessel.flight().heading

    #Ascent Phase.
    if ascentPhase:
        targetPitch = 90 * ((50000 - altitude) / 50000)
        pitchDiff = vessel.flight().pitch - targetPitch

        #Heading Control.
        if heading < 180:
            vessel.control.yaw = (pitchDiff / 90)
        else:
            vessel.control.yaw = 0.5

        #Adds another stage activation to the vessel if more than one stage is required to get to orbit.
        if vessel.thrust == 0.0:
            vessel.control.activate_next_stage()
        
        #MECO (Main Engine Cut Off)
        if vessel.orbit.apoapsis > 690000:
            vessel.control.throttle = 0
            time.sleep(0.5)
            vessel.control.activate_next_stage()

            vessel.control.sas = True
            time.sleep(0.1)
            vessel.control.sas_mode = conn.space_center.SASMode.prograde

            ascentPhase = False
            cruisePhase = True
    
    #Cruise Phase.
    elif cruisePhase:
        if altitude > 80000:
            cruisePhase = False
            insertionPhase = True
            vessel.control.sas = False
            vessel.control.throttle = 1

    #Insertion Phase.
    elif insertionPhase:
        targetPitch = 0
        pitchDiff = vessel.flight().pitch - targetPitch

        #Heading Control.
        if heading < 180:
            vessel.control.yaw = (pitchDiff / 90)
            if vessel.flight().pitch < 1 and vessel.flight().pitch > -1:
                vessel.control.sas = True
            else:
                vessel.control.sas = False
        else:
            vessel.control.yaw = 0.5

        #SECO (Second Engine Cut Off).
        if vessel.orbit.periapsis > 690000:
            vessel.control.throttle = 0
            insertionPhase = False
        
        #Staging.
        if vessel.thrust == 0.0:
            vessel.control.activate_next_stage()