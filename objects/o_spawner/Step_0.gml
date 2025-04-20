if pause_movement() { exit; }

timer++;

// Reset when limit reached
if !global.infinite_mode {
	if instance_number(o_parent_enemy) >= global.enemy_active_max || global.total_enemies_spawned >= global.enemy_room_max {
		timer = 0;
	}
}

// Spawn enemy
if timer >= spawn_time && !place_meeting(x, y, o_archer) {
	var _inst = instance_create_depth(x, y, -500, o_archer);
	with _inst {
		image_alpha = 0;
		state = -1;
	}
	timer = 0;
}