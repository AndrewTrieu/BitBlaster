alpha += alpha_spd;
alpha = clamp(alpha, 0, 1);

if keyboard_check_pressed(vk_anykey) && alpha >= 1 {
	global.first_start = false;
	
	if (global.current_score >= global.high_score) {
		global.high_score = global.current_score;
		save_high_score();
	}
	
	global.current_score = 0;

	room_restart()
}