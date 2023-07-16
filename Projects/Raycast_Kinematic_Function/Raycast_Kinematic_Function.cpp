#include <stdint.h>
#include <math.h>
#include <double.h>

/*
Questions to ask:
Will the input always be valid or will I have to check for a valid input?
Should a default value be set for the endpoint and time if the hit is never valid?
Are there bounds to the values of x, y, and z?
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
                                   double raycast_time_step,
                                   double max_time) {
    TrajectoryResult result;
    double max_distance = start_velocity.x * max_time;

    Vec3 current_position = start_position;
    Vec3 current_velocity = start_velocity;
    double current_time = 0.0;
    bool valid_hit = false;

    while (current_time <= max_time) {
        // Perform raycast at current position
        Physics::QueryResult raycast_result = Physics::Raycast(current_position, current_position + current_velocity * raycast_time_step);
        //Check if the raycast hit and if so, set the result to the hit position and time
        if (raycast_result.m_ValidHit && (raycast_result.m_HitPos.x <= current_position.x)){
            valid_hit = true;
            result.m_EndPoint = raycast_result.m_HitPos;

            // Calculate the time ratio based on the distance traveled along the raycast
            double distance_ratio = (raycast_result.m_HitPos.x - current_position.x) / (current_velocity.x * raycast_time_step);
            result.m_Time = current_time + distance_ratio * raycast_time_step;

            break;
        }

        // Calculate the new position based on velocity and current time step
        current_position.x += current_velocity.x * raycast_time_step;
        current_position.y += current_velocity.y * raycast_time_step + 0.5 * gravity_accel * raycast_time_step * raycast_time_step;
        current_position.z += current_velocity.z * raycast_time_step;

        // Calculate the new velocity based on gravity and current time step
        current_velocity.x += up_vector.x * gravity_accel * raycast_time_step;
        current_velocity.y += up_vector.y * gravity_accel * raycast_time_step;
        current_velocity.z += up_vector.z * gravity_accel * raycast_time_step;

        // Check if the current position is beyond the maximum distance
        if (current_position.x >= max_distance) {
            break;
        }

        current_time += raycast_time_step;
    }

    if (!valid_hit) {
        // No hit occurred, set the result to the maximum time and the endpoint at the final position
        result.m_EndPoint = current_position;
        result.m_Time = max_time;
    }

    result.m_ValidHit = valid_hit;

    return result;
}