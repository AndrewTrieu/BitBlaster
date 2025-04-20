var right_key = global.right_key;
var left_key = global.left_key;
var up_key = global.up_key;
var down_key = global.down_key;
var shoot_key = global.shoot_key;
var swap_key_pressed = global.swap_key_pressed;
var heal_key_pressed = global.heal_key_pressed;
var pause_key_pressed = global.pause_key_pressed;

// Pause game
if pause_key_pressed {
	if !instance_exists(o_pause_menu) {
		instance_create_depth(0, 0, -10000, o_pause_menu);
	} else {
		instance_destroy(o_pause_menu);
	}
}

if pause_movement() { exit; }

// Movements
#region
	var _horizontal_key = right_key - left_key;
	var _vertical_key = down_key - up_key;
	move_dir = point_direction(0, 0, _horizontal_key, _vertical_key);

	// Speeds
	var _speed = 0;
	var _input_lvl = point_distance(0, 0, _horizontal_key, _vertical_key);
	_input_lvl = clamp(_input_lvl, 0 , 1);
	_speed = move_spd * _input_lvl;

	x_speed = lengthdir_x(_speed, move_dir);
	y_speed = lengthdir_y(_speed, move_dir);

	// Collision
	if place_meeting(x + x_speed, y, o_wall) {
		x_speed = 0;
	}
	if place_meeting(x, y + y_speed, o_wall) {
		y_speed = 0;
	}

	x += x_speed;
	y += y_speed;
	
	depth = -600;
#endregion

// Sprite controls
#region
	// Determine if the player is moving
	var is_moving = (_horizontal_key != 0 || _vertical_key != 0);

	// Update animation based on movement
	if (is_moving) {
	    sprite_index = sprites[1]; // Walking animation
	} else {
	    sprite_index = sprites[0]; // Idle animation
	}

	// Determine facing direction
	if (_horizontal_key != 0) {
	    face = sign(_horizontal_key);
	} else if (!is_moving) {
	    var _mouse_x_offset = mouse_x - x;
	    face = (_mouse_x_offset > 0) ? 1 : -1;
	}
#endregion

// Get damaged
if get_damaged(o_player_hurt, true) {
	audio_play_sound(hurt_sound, 0, false);
	create_screen_pause(6);
	camera_shake(6);
}

// Aiming
#region
	center_y = y + center_y_offset;
	aim_dir = point_direction(x, center_y, mouse_x, mouse_y)
#endregion

// Shooting
#region
	if shoot_key {
		sprite_index = sprites[2];
	}
	
	if shoot_timer > 0 {
		shoot_timer--;
	}
	
	if shoot_key && shoot_timer <= 0 {
		
		shoot_timer = weapon.cooldown;
		
		var _x_offset = lengthdir_x(weapon_length + weapon_offset_dist, aim_dir);
		var _y_offset = lengthdir_y(weapon_length + weapon_offset_dist, aim_dir);
		
		var _spread = weapon.bullet_spread;
		var _spread_div = _spread / max(weapon.bullet_num - 1, 1);
		
		for (var i = 0; i < weapon.bullet_num; i++) {
			var _bullet_inst = instance_create_depth(x + _x_offset + i*10, center_y + _y_offset, depth-50, weapon.bullet_obj);
			with (_bullet_inst) {
				bullet_dir = other.aim_dir - _spread/2 + _spread_div*i;
				image_angle = bullet_dir;
			}
		}
	}
#endregion

// Heal
#region
	if (heal_timer > 0) {
	    heal_timer--; // Reduce cooldown timer each step
	}

	if (heal_key_pressed && heal_timer <= 0) {
	    instance_create_depth(x, y, depth - 100, o_heal); // Spawn heal effect
	    sprite_index = sprites[5]; // Play heal animation
	    heal_timer = heal_cooldown; // Set cooldown
		audio_play_sound(item_pick, 0, false);
		hp += 20;
	}
#endregion

// Swap weapons
#region
	var _player_weapons = global.PlayerWeapons;
	if swap_key_pressed {
		selected_weapon++;
		if selected_weapon >= array_length(_player_weapons) {
			selected_weapon = 0;
		}
		weapon = _player_weapons[selected_weapon];
	}
#endregion

// Die
is_dying(sprites[4]);

