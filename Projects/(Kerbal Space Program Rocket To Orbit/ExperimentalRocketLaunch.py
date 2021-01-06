# This program launches a rocket in Kerbal Space Program.
# Created by Eric Fernald.

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

# Establishes connection to the krpc server.
conn = krpc.connect()

# Establishes the rocket as the main vessel.
vessel = conn.space_center.active_vessel

# Defines the entire size of the screen as the canvas variable.
canvas = conn.ui.stock_canvas

# Get the size of the game window in pixels.
screen_size = canvas.rect_transform.size

# Position the panel on the left of the screen.
rect = panel.rect_transform
rect.size = (400, 100)
rect.position = (210-(screen_size[0]/2), -200)

# Settings for text size in the panel on screen.
text = panel.add_text("Countdown")
text.rect_transform.position = (0, -20)
text.color = (1, 1, 1)
text.size = 18

# Start the Countdown Sequence.
text.content = 'FIVE'
print('FIVE'); time.sleep(1)
text.content = 'FOUR'
print('FOUR'); time.sleep(1)
text.content = 'THREE'
print('THREE'); time.sleep(1)
text.content = 'TWO'
print('TWO'); time.sleep(1)
text.content = 'ONE'
print('ONE'); time.sleep(1)
text.content = 'LIFT OFF'
print('LIFT OFF!')

# Launch the Vessel.
vessel.control.throttle = 1
vessel.control.activate_next_stage()

# Sets the Flight State.
ascentPhase = True
cruisePhase = False
insertionPhase = False

# Main Launch Control.
while ascentPhase or cruisePhase or insertionPhase:
    altitude = vessel.flight().mean_altitude
    heading = vessel.flight().heading

    if ascentPhase:
        text.content = 'Ascent Phase'
        print('Ascent Phase')
        targetPitch = 90 * ((50000 - altitude) / 50000)
        pitchDiff = vessel.flight().pitch - targetPitch

        # Heading Control
        if heading < 180:
            vessel.control.yaw = (pitchDiff / 90)
        else:
            vessel.control.yaw = 0.5

        # Adds another stage activation to the vessel. (For other rockets this is only needed if more than one stage is required to get to orbit.)
        if vessel.thrust == 0.0:
            vessel.control.activate_next_stage()
        
        # MECO (Main Engine Cut Off)
        # The orbit apoapsis is set to 690000 is because Kerbin has a diameter of 600000 meters so the total apoapsis needs to include 600000 more meters.
        if vessel.orbit.apoapsis > 690000:
            text.content = 'Main Engine Cut Off (MECO)'
            print('Main Engine Cut Off (MECO)')
            vessel.control.throttle = 0
            time.sleep(0.5)
            vessel.control.activate_next_stage()

            vessel.control.sas = True  
            time.sleep(0.1)
            vessel.control.sas_mode = conn.space_center.SASMode.prograde

            ascentPhase = False
            cruisePhase = True
    
    # Cruise Phase
    elif cruisePhase:
        if altitude > 80000:
            cruisePhase = False
            insertionPhase = True
            vessel.control.sas = False
            vessel.control.throttle = 1

    # Insertion Phase
    elif insertionPhase:
        targetPitch = 0
        pitchDiff = vessel.flight().pitch - targetPitch

        # Heading Control
        if heading < 180:
            vessel.control.yaw = (pitchDiff / 90)
            if vessel.flight().pitch < 1 and vessel.flight().pitch > -1:
                vessel.control.sas = True
            else:
                vessel.control.sas = False
        else:
            vessel.control.yaw = 0.5

        # SECO (Second Engine Cut Off)
        if vessel.orbit.periapsis > 690000:
            vessel.control.throttle = 0
            insertionPhase = False
        
        # Staging
        if vessel.thrust == 0.0:
            vessel.control.activate_next_stage()