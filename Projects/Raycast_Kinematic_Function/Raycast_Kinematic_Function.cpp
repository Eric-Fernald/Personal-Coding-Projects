#include <stdint.h>
#include <math.h>
#include <double.h>

/*
Return if a hit is valid or not.
Return max time if no hit is detected.
Return the end point of the trajectory.
Questions to ask:
Will the input always be valid or will I have to check for a valid input?
Should default values be set for the parameters?
Should a default value be set for the endpoint and time if the hit is never valid?
Is there a desired variable name for the struct?
Are there bounds to the values of x, y, and z?
Does the radius of the collision detection need to be set to a value?
Will the gravity acceleration parameter always be positive on input?
*/

//Define TrajectoryResult struct
struct TrajectoryResult {
      Vec3 m_EndPoint; 
      double m_time; 
      bool m_ValidHit;
    };

//Define Vec3 struct
struct Vec3 {
    double x, y, z;
};

//Function to check for collision based on kinmatic equations
bool CheckCollision(const Vec3& p0, const Vec3& p1, double radius) {
    double distanceSquared = (p0.x - p1.x) * (p0.x - p1.x) +
                             (p0.y - p1.y) * (p0.y - p1.y) +
                             (p0.z - p1.z) * (p0.z - p1.z);

    double radiusSquared = radius * radius;

    if (distanceSquared <= radiusSquared) {
        return true;
    }

    return false;
}

//Main function to calculate the trajectory
TrajectoryResult PredictTrajectory(const Vec3& start_position,
                                   const Vec3& start_velocity,
                                   const Vec3& up_vector,
                                   double gravity_accel,
                                   double raycast_time_step,
                                   double max_time) {
    TrajectoryResult result;

    //Define variables based on the input parameters
    Vec3 current_position = start_position;
    Vec3 current_velocity = start_velocity;
    double radius = CheckCollision.radius;
    double current_time = 0.0;
    bool valid_hit = false;

    //Perform raycast until the max time is reached
    while (current_time <= max_time) {

        //Calculate the new position and velocity based on gravity, current time step, and kinematic equations
        Vec3 acceleration = up_vector * (-gravity_accel);
        current_velocity = current_velocity + acceleration * raycast_time_step;
        current_position = current_position + (current_velocity * current_time) + 0.5 * (gravity_accel * (current_time * current_time)) * raycast_time_step;
        //Possibly add a known end point to check for a hit
        //Collision detection here to check for hits
        if (CheckCollision(current_position, current_position, radius)) {
            valid_hit = true;
            break;
        }

        //Increment the current time by the time step
        current_time += raycast_time_step;
    }

    //Set the values of the struct and round EndPoint to the nearest hundredth and time to the nearest thousandth
    result.m_EndPoint = round(current_position * 100.0) / 100.0;
    result.m_time = round(current_time * 1000.0) / 1000.0;
    result.m_ValidHit = valid_hit;

    //If there is no hit, set the time to the max time
    if (result.m_ValidHit == false) {
        result.m_time = max_time;
    }

    return result;
}