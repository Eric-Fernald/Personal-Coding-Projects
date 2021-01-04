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

vessel.control.throttle = 1
vessel.control.activate_next_stage()

ascentPhase = True
cruisePhase = False
insertionPhase = False

while ascentPhase or cruisePhase or insertionPhase:
    altitude = vessel.flight().mean_altitude
    heading = vessel.flight().heading

    if ascentPhase:
        targetPitch = 90 * ((50000 - altitude) / 50000))
        pitchDiff = vessel.flight().pitch - targetPitch

        if heading < 180:
            vessel.control.yaw = (pitchDiff / 90)
        else:
            vessel.control.yaw = 0.5
        
        if vessel.orbit.apoapsis > 700000:
            vessel.control.throttle = 0
            time.sleep(0.5)
            vessel.control.activate_next_stage()
    
    elif cruisePhase:
        print("Cruise Phase")

    elif insertionPhase:
        print("Insertion Phase")