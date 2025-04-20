// Pause
if pause_movement() { exit; }

var _wall_collisions = true;
var _get_damaged = true;

// State machine
switch(state) {
	case -1: 
		// Spawn from spawner
		if image_alpha < 1 {
			move_spd = 0;
			image_alpha += fade_spd;
		}
		_wall_collisions = false;
		_get_damaged = false;
		
		if image_alpha >= 1 {
			move_spd = spawn_spd;
			if instance_exists(o_player) {
				move_dir = point_direction(x, y, o_player.x, o_player.y);
			}
		}
		
		if !place_meeting(x, y, o_wall) {
			state = 0;
		}
	break;

	case 0:
		if instance_exists(o_player) {
			move_dir = point_direction(x, y, o_player.x, o_player.y);
		}
		move_spd = chase_spd;
		
		var _cam_left = camera_get_view_x(view_camera[0]);
		var _cam_right =  _cam_left + camera_get_view_width(view_camera[0]);
		var _cam_top = camera_get_view_y(view_camera[0]);
		var _cam_bottom =  _cam_top + camera_get_view_height(view_camera[0]);
	
		
		if bbox_right > _cam_left && bbox_left < _cam_right && bbox_bottom > _cam_top && bbox_top < _cam_bottom {
			shoot_timer++
		}
		
		if shoot_timer > cooldown_time {
			state = 1;
			shoot_timer = 0;
		}
	break;
	
	case 1:
		if instance_exists(o_player) {
			move_dir = point_direction(x, y, o_player.x, o_player.y);
		}
		move_spd = 0;
		
		shoot_timer++;
				
		if shoot_timer == 1 && hp > 0 {
			// Create arrow
			bullet_inst = instance_create_depth(x, y, depth, o_arrow);
		}
		
		if shoot_timer == charge_time && instance_exists(bullet_inst) && hp > 0 {
			bullet_inst.image_angle = move_dir;
			bullet_inst.state = 1;
		}
		
		if shoot_timer > charge_time + recover_time {
			state = 0;
			shoot_timer = 0;
		}
		
	break;
}

// Chasing
#region


	x_speed = lengthdir_x(move_spd, move_dir);
	y_speed = lengthdir_y(move_spd, move_dir);
	
	// Wall collisons
	if _wall_collisions == true {
		if place_meeting(x + x_speed, y, o_wall) {
			x_speed = 0;
		}
		if place_meeting(x, y + y_speed, o_wall) {
			y_speed = 0;
		}
	}
		
	if place_meeting(x + x_speed, y, o_parent_enemy) {
		x_speed = 0;
	}
	if place_meeting(x, y + y_speed, o_parent_enemy) {
		y_speed = 0;
	}
	
	if (!is_stopping) {
		x += x_speed;
		y += y_speed;
	}
	
	depth = -y;

#endregion

// Sprite controls
#region
	// Check if the enemy is moving
	var is_moving = (x_speed != 0 || y_speed != 0);

	// Update animation based on movement
	if state == 1 {
		sprite_index = sprites[2];
	} else if is_moving {
	    sprite_index = sprites[1]; // Walking animation
	} else {
	    sprite_index = sprites[0]; // Idle animation
	}

	// Determine facing direction
	if x_speed != 0 {
	    face = sign(x_speed);
	} else {
		if instance_exists(o_player) {
			var _player_offset_x = o_player.x - x;
			face = (_player_offset_x > 0) ? 1 : -1;
		}
	}
#endregion

is_dying(sprites[4]);

// Inherit the parent event
if _get_damaged {
	event_inherited();
}

