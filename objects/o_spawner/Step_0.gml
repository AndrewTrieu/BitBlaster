if pause_movement() { exit; }

timer++;

// Reset when limit reached
if instance_number(o_parent_enemy) >= global.enemyActiveMax || global.totalEnemiesSpawned >= global.enemyRoomMax {
	timer = 0;
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