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
Are there bounds to the values of x, y, and z?
Does a collision box need to be defined?
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

//Define struct for Axis-Aligned Bounding Box
struct AABB {
    Vec3 min;
    Vec3 max;
};

//Function to check for collision
bool CheckCollision(const Vec3& position, const Sphere& sphere) {
    double distanceSquared = (position.x - sphere.center.x) * (position.x - sphere.center.x) +
                             (position.y - sphere.center.y) * (position.y - sphere.center.y) +
                             (position.z - sphere.center.z) * (position.z - sphere.center.z);

    double radiusSquared = sphere.radius * sphere.radius;

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
    double current_time = 0.0;
    bool valid_hit = false;

    //Define a collision sphere
    Sphere collision_sphere = { { 1.0, 2.0, 3.0 }, 1.0 };

    //Perform raycast until the max time is reached
    while (current_time <= max_time) {

        //Calculate the new position and velocity based on gravity and current time step
        Vec3 acceleration = up_vector * (-gravity_accel);
        current_velocity = current_velocity + acceleration * raycast_time_step;
        current_position = current_position + current_velocity * raycast_time_step;

        //Collision detection here to check for hits
        if (CheckCollision(current_position, collision_box)) {
            valid_hit = true;
            break;
        }

        //Increment the current time by the time step
        current_time += raycast_time_step;
    }

    //Set the values of the struct and round EndPoint to the nearest hundredth and time to the nearest thousandth.
    result.m_EndPoint = round(current_position * 100.0) / 100.0;
    result.m_time = round(current_time * 1000.0) / 1000.0;
    result.m_ValidHit = valid_hit;

    return result;
}