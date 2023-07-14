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
Questions to ask:
Will the input always be valid or will I have to check for a valid input?
Should default values be set for the parameters?
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

void TrajectoryResult PredictTrajectory(const Vec3& start_position, 
                                        const Vec3& start_velocity, 
                                        const Vec3& up_vector, 
                                        double gravity_accel, 
                                        double raycast_time_step, 
                                        double max_time){
    
    //Initialize the variables
    m_ValidHit = true;
    m_EndPoint = {0,0,0};
    m_time = 0;

    //Calculate the end point of the trajectory
    m_EndPoint = start_position + start_velocity * m_time + 0.5 * gravity_accel * m_time * m_time;




    //Round the endpoint to 2 decimal places
    m_EndPoint = std::ceil(m_EndPoint * 100.0) / 100.0;

    //Round time to 3 decimal places
    m_time = std::ceil(m_time * 1000.0) / 1000.0;

    //Check if the hit is valid and if the time is greater than the max time
    if m_time >= max_time{
        m_ValidHit = false;
    }
    
    TrajectoryResult = {m_EndPoint, m_time, m_ValidHit};
    //Return the result struct
    return TrajectoryResult;

}

//Execute the function.
int main() {
  TrajectoryResult t;
  t = input();
  return 0;
}