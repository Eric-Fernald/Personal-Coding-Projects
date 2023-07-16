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

//Main function
TrajectoryResult PredictTrajectory(const Vec3& start_position,
                                   const Vec3& start_velocity,
                                   const Vec3& up_vector,
                                   double gravity_accel,
                                   double time_step,
                                   double max_time) {
    TrajectoryResult result;

    Vec3 current_position = start_position;
    Vec3 current_velocity = start_velocity;
    double current_time = 0.0;
    bool valid_hit = false;

    while (current_time <= max_time) {
        // Calculate the new position and velocity based on gravity and current time step
        current_velocity.y += gravity_accel * time_step;
        current_position.x += current_velocity.x * time_step;
        current_position.y += current_velocity.y * time_step;
        current_position.z += current_velocity.z * time_step;

        // Perform collision detection using the physics planes
        if (Physics::Raycast(current_position)) {
            valid_hit = true;
            break;
        }

        current_time += time_step;
    }

    result.m_EndPoint = current_position;
    result.m_Time = current_time;
    result.m_ValidHit = valid_hit;

    return result;
}