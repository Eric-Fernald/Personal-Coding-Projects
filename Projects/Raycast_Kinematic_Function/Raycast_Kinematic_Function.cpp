//Define magnitude function which returns the square root of the sum of the squares of the vector components
double magnitude(const Vec3& vec) {
    return Sqrtd(vec.x * vec.x + vec.y * vec.y + vec.z * vec.z);
}

//Main function
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
    double time_to_hit = raycast_time_step;
    double hit_distance = 0.0;
    double total_distance = 0.0;
    bool valid_hit = false;

    // Perform raycast at current position and time step until the max time is reached
    while (current_time <= max_time) {

        Physics::QueryResult raycast_result = Physics::Raycast(current_position, current_position + current_velocity * raycast_time_step);

        // If the raycast hit is valid, calculate the time to hit, set the endpoint to the hit position, set the time to the current time plus the time to hit, and break out of the loop
        if (raycast_result.m_ValidHit) {
            valid_hit = true;
            hit_distance = magnitude(raycast_result.m_HitPos - current_position);
            total_distance = magnitude(current_velocity) * raycast_time_step;
            time_to_hit *= hit_distance / total_distance;
            result.m_EndPoint = raycast_result.m_HitPos;
            result.m_Time = current_time + time_to_hit;
            break;
        }

        // Advance the time based on the adjusted time to hit
        current_time += time_to_hit;

        // Calculate the new position based on velocity and time step
        current_position.x += current_velocity.x * time_to_hit;
        current_position.y += current_velocity.y * time_to_hit + 0.5 * gravity_accel * time_to_hit * time_to_hit;
        current_position.z += current_velocity.z * time_to_hit;

        // Calculate the new velocity based on gravity and time step
        current_velocity.x += up_vector.x * gravity_accel * time_to_hit;
        current_velocity.y += up_vector.y * gravity_accel * time_to_hit;
        current_velocity.z += up_vector.z * gravity_accel * time_to_hit;
        
    }

    // No hit occurred, set the result to the maximum time and the endpoint at the final position
    if (!valid_hit) {
        result.m_EndPoint = current_position;
        result.m_Time = max_time;
        
    }

    result.m_ValidHit = valid_hit;

    return result;
}