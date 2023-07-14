/*For this test, you will be implementing a function that simulates a projectile trajectory based on its initial starting position and velocity.

The function should return a TrajectoryResult struct, which has the following definition:
*/
#include <stdint.h>
#include <math.h>
#include <double.h>
using namespace std;

/*
Return if a hit is valid or not.
Return max time if no hit is detected.
Return the end point of the trajectory.
struct Vec3
{
  double x, y, z;

};

struct TrajectoryResult
{
  Vec3 m_EndPoint;
  double m_Time;
  bool  m_ValidHit;
};
*/

void TrajectoryResult PredictTrajectory(const Vec3& start_position={0,0,0}, 
                                        const Vec3& start_velocity={0,0,0}, 
                                        const Vec3& up_vector={0,0,0}, 
                                        double gravity_accel=0, 
                                        double raycast_time_step=0, 
                                        double max_time=10){
    
    //Initialize the variables
    m_ValidHit = true;
    m_EndPoint = {0,0,0};
    m_time = 0;

    //Calculate the end point of the trajectory
    m_EndPoint = start_position + start_velocity * max_time + 0.5 * gravity_accel * max_time * max_time;

    TrajectoryResult::m_EndPoint = m_EndPoint;




    //Round the endpoint to 2 decimal places
    m_EndPoint = std::ceil(EndPoint * 100.0) / 100.0;

    //Round time to 2 decimal places
    m_time = std::ceil(time * 100.0) / 100.0;

    //Check if the hit is valid and if the time is greater than the max time
    if m_time >= max_time{
        m_ValidHit = false;
    }
    
    //Return the result struct
    return TrajectoryResult;

}

//Execute the function.
int main() {
  TrajectoryResult t;
  t = input();
  return 0;
}