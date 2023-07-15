#include <stdint.h>
#include <math.h>
#include <double.h>

/*
Return if a hit is valid or not.
Return max time if no hit is detected.
Return the end point of the trajectory.
Questions to ask:
Will the input always be valid or will I have to check for a valid input?
Should default values be set for the parameters or the return struct if at all?
Should a default value be set for the endpoint and time if the hit is not valid?
Is there a desired variable name for the struct?
Is the raycast_time_step defined as seconds or something else?
*/
struct TrajectoryResult {
      Vec3 m_EndPoint; 
      double m_time; 
      bool m_ValidHit;
    };

TrajectoryResult PredictTrajectory( const Vec3& start_position, 
                                        const Vec3& start_velocity, 
                                        const Vec3& up_vector, 
                                        double gravity_accel, 
                                        double raycast_time_step, 
                                        double max_time ){

    //Calculate the end point of the trajectory
    TrajectoryResult.m_EndPoint = PredictTrajectory.start_position + PredictTrajectory.start_velocity * m_time + 0.5 * PredictTrajectory.gravity_accel * m_time * m_time;




    //Round the endpoint to 2 decimal places
    TrajectoryResult.m_EndPoint = round(m_EndPoint * 100.0) / 100.0;

    //Round time to 3 decimal places
    TrajectoryResult.m_time = round(m_time * 1000.0) / 1000.0;

    //Check if the time is greater than the max time and if so, set the valid hit to false
    if TrajectoryResult.m_time >= PredictTrajectory.max_time{
        TrajectoryResult.m_ValidHit = false;
    };

    //Return the result struct
    return TrajectoryResult;
}