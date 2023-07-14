/*For this test, you will be implementing a function that simulates a projectile trajectory based on its initial starting position and velocity.

The function should return a TrajectoryResult struct, which has the following definition:
*/
#include <stdint.h>
#include <math.h>
#include <double.h>
using namespace std;
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

/*TrajectoryResult PredictTrajectory( const Vec3& start_position, 
                                    const Vec3& start_velocity, 
                                    const Vec3& up_vector, 
                                    double gravity_accel, 
                                    double raycast_time_step, 
                                    double max_time ); */
void TrajectoryResult input(){
    Vec3 start_position = {0,0,0};
    Vec3 start_velocity = {0,0,0};
    Vec3 up_vector = {0,0,0};
    double gravity_accel = 0;
    double raycast_time_step = 0;
    double max_time = 0;
    TrajectoryResult result = PredictTrajectory(start_position, start_velocity, up_vector, gravity_accel, raycast_time_step, max_time);
    std::cout << result.m_EndPoint.x << std::endl;
    std::cout << result.m_EndPoint.y << std::endl;
    std::cout << result.m_EndPoint.z << std::endl;
    std::cout << result.m_Time << std::endl;
    std::cout << result.m_ValidHit << std::endl;
}

int main() {
  TrajectoryResult t;
  t = input();
  return 0;
}