if pause_movement() { exit; }

// Movements	
#region
	if (!is_exploding) {
	    // Calculate movement
	    var x_speed = lengthdir_x(bullet_spd, bullet_dir);
	    var y_speed = lengthdir_y(bullet_spd, bullet_dir);

	    // Move the fireball
	    x += x_speed;
	    y += y_speed;
		
		if hit_confirmed && !pass_through_enemy {
			destroy_projectile()
		}

	    // Check for collision with solid wall
	    if place_meeting(x, y, o_solid_wall) {
	        destroy_projectile();
	    }

	    // Check if fireball has traveled too far
	    if point_distance(start_x, start_y, x, y) > max_distance {
	        destroy_projectile();
	    }
	}
#endregion