// Draw player's weapon
function draw_own_weapon() {
	var _x_offset = lengthdir_x(weapon_offset_dist, aim_dir);
	var _y_offset = lengthdir_y(weapon_offset_dist, aim_dir);
	var _weapon_y_scale = 1;

	if aim_dir > 90 and aim_dir < 270 {
		_weapon_y_scale = -1;
	}

	draw_sprite_ext(s_aimer, 0, x + _x_offset, center_y + _y_offset, 1, _weapon_y_scale, aim_dir, c_white, 0.5);
};