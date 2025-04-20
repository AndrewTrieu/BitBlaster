if pause_movement() { exit; }

switch(state) {
	case 0:
		if instance_exists(o_player) {
			bullet_dir = point_direction(x, y, o_player.x, o_player.y);
		}
		
		depth = -y - 50;
	break;
	
	case 1:
		if (!is_exploding) {
			// Calculate movement
			var bullet_x_spd = lengthdir_x(bullet_spd, bullet_dir);
			var bullet_y_spd = lengthdir_y(bullet_spd, bullet_dir);

			// Move the fireball
			x += bullet_x_spd;
			y += bullet_y_spd;
		
			depth = -y;
		
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
			
			if bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height {
				destroy_projectile();
			}
			
		}
	break;
}
