import time
import krpc

TARGET_APOAPSIS = 690000
TARGET_PERIAPSIS = 690000
CRUISE_ALTITUDE = 80000
GRAVITY_TURN_ALTITUDE = 50000
LAUNCH_HEADING = 90
COUNTDOWN_WORDS = ("Five", "Four", "Three", "Two", "One", "LIFT OFF!")


def clamp(value, lower, upper):
    return max(lower, min(upper, value))


class RocketLaunchController:
    def __init__(self, connection, vessel):
        self.conn = connection
        self.vessel = vessel
        flight = self.vessel.flight()
        orbit = self.vessel.orbit
        self._altitude = self.conn.add_stream(getattr, flight, "mean_altitude")
        self._pitch = self.conn.add_stream(getattr, flight, "pitch")
        self._heading = self.conn.add_stream(getattr, flight, "heading")
        self._apoapsis = self.conn.add_stream(getattr, orbit, "apoapsis")
        self._periapsis = self.conn.add_stream(getattr, orbit, "periapsis")
        self._thrust = self.conn.add_stream(getattr, self.vessel, "thrust")
        self.auto_pilot = self.vessel.auto_pilot
        self.auto_pilot.reference_frame = self.vessel.surface_reference_frame
        self.auto_pilot.stopping_time = (0.5, 0.5, 0.5)

    def run(self):
        self.perform_countdown()
        self.prepare_launch()
        self.handle_ascent()
        self.coast_to_space()
        self.perform_insertion()
        self.wrap_up()

    def perform_countdown(self):
        for word in COUNTDOWN_WORDS:
            print(word)
            time.sleep(1)

    def prepare_launch(self):
        self.vessel.control.throttle = 1
        self.auto_pilot.target_pitch_and_heading(90, LAUNCH_HEADING)
        self.auto_pilot.engage()
        self.vessel.control.activate_next_stage()

    def handle_ascent(self):
        while True:
            altitude = self._altitude()
            pitch = self.gravity_turn_pitch(altitude)
            self.auto_pilot.target_pitch_and_heading(pitch, LAUNCH_HEADING)
            self.stage_if_needed()
            if self._apoapsis() >= TARGET_APOAPSIS:
                self.vessel.control.throttle = 0
                self.auto_pilot.disengage()
                time.sleep(0.5)
                self.stage_if_needed(force=True)
                self.vessel.control.sas = True
                time.sleep(0.1)
                self.vessel.control.sas_mode = self.conn.space_center.SASMode.prograde
                break
            time.sleep(0.1)

    def coast_to_space(self):
        while self._altitude() <= CRUISE_ALTITUDE:
            time.sleep(0.5)
        self.vessel.control.sas = False
        self.vessel.control.throttle = 1
        self.auto_pilot.engage()
        self.auto_pilot.target_pitch_and_heading(0, LAUNCH_HEADING)

    def perform_insertion(self):
        while True:
            pitch_error = self._pitch()
            if abs(pitch_error) <= 1:
                self.vessel.control.sas = True
                self.vessel.control.sas_mode = self.conn.space_center.SASMode.prograde
                self.auto_pilot.disengage()
            else:
                if not self.auto_pilot.engaged:
                    self.vessel.control.sas = False
                    self.auto_pilot.engage()
                self.auto_pilot.target_pitch_and_heading(0, LAUNCH_HEADING)
            self.stage_if_needed()
            if self._periapsis() >= TARGET_PERIAPSIS:
                self.vessel.control.throttle = 0
                break
            time.sleep(0.1)

    def wrap_up(self):
        if self.auto_pilot.engaged:
            self.auto_pilot.disengage()
        self.vessel.control.sas = True
        self.vessel.control.sas_mode = self.conn.space_center.SASMode.prograde

    def gravity_turn_pitch(self, altitude):
        if altitude >= GRAVITY_TURN_ALTITUDE:
            return 0
        ratio = (GRAVITY_TURN_ALTITUDE - altitude) / GRAVITY_TURN_ALTITUDE
        return clamp(90 * ratio, 0, 90)

    def stage_if_needed(self, force=False):
        if not force and (self.vessel.control.throttle <= 0 or self._thrust() > 0.1):
            return
        if self.vessel.control.current_stage > 0:
            self.vessel.control.activate_next_stage()


def main():
    connection = krpc.connect(name="RocketLaunch")
    vessel = connection.space_center.active_vessel
    RocketLaunchController(connection, vessel).run()


if __name__ == "__main__":
    main()