alpha += alpha_spd;
alpha = clamp(alpha, 0, 1);

if keyboard_check_pressed(vk_anykey) && alpha >= 1 {
	global.first_start = false;
	room_restart()
}