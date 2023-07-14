/*For this test, you will be implementing a function that simulates a projectile trajectory based on its initial starting position and velocity.

The function should return a TrajectoryResult struct, which has the following definition:
*/
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

TrajectoryResult PredictTrajectory( const Vec3& start_position, 
                                    const Vec3& start_velocity, 
                                    const Vec3& up_vector, 
                                    double gravity_accel, 
                                    double raycast_time_step, 
                                    double max_time );