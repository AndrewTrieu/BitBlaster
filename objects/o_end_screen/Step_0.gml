alpha += alpha_spd;
alpha = clamp(alpha, 0, 1);

if keyboard_check_pressed(vk_anykey) && alpha >= 1 {
	global.enemy_room_max += 100;
	global.enemy_active_max += 20;
	global.first_start = false;
	
	if (global.current_score >= global.high_score) {
		global.high_score = global.current_score;
		save_high_score();
	}

	room_restart();
}