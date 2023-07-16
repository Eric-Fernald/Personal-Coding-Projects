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
Should a default value be set for the endpoint and time if the hit is not valid?
Is there a desired variable name for the struct?
Is the raycast_time_step defined as seconds or something else?
Are there bounds to the values of x, y, and z?
*/
*/
struct TrajectoryResult {
      Vec3 m_EndPoint; 
      double m_time; 
      bool m_ValidHit;
    };

struct Vec3 {
    double x, y, z;
};

TrajectoryResult PredictTrajectory(const Vec3& start_position,
                                   const Vec3& start_velocity,
                                   const Vec3& up_vector,
                                   double gravity_accel,
                                   double raycast_time_step,
                                   double max_time) {
    TrajectoryResult result;

    Vec3 current_position = start_position;
    Vec3 current_velocity = start_velocity;
    double current_time = 0.0;
    bool valid_hit = false;

    while (current_time <= max_time) {
        // Calculate the new position and velocity based on gravity and current time step
        Vec3 acceleration = up_vector * (-gravity_accel);
        current_velocity = current_velocity + acceleration * raycast_time_step;
        current_position = current_position + current_velocity * raycast_time_step;

        // Perform raycasting or collision detection here to check for hits
        // ...
        // Assume a hit occurs when the position crosses a certain threshold
        if (current_position.z <= 0.0) {
            valid_hit = true;
            break;
        }

        current_time += raycast_time_step;
    }

    result.m_EndPoint = current_position;
    result.m_time = current_time;
    result.m_ValidHit = valid_hit;

    return result;
}


    //Round the endpoint to 2 decimal places
    m_EndPoint = round(m_EndPoint * 100.0) / 100.0;

    //Round time to 3 decimal places
    m_time = round(m_time * 1000.0) / 1000.0;

    //Check if the time is greater than the max time and if so, set the valid hit to false
    if m_time >= max_time{
        m_ValidHit = false;
    };

    struct FinalResult = PredictTrajectory(m_EndPoint, m_time, m_ValidHit);
    //Return the result struct
    return FinalResult;
}