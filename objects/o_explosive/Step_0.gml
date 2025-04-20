get_damaged(o_parent_hurt, false, false);

var _health_pct = 1 - (hp / max_hp);
image_index = _health_pct * (image_number - 1);

if hp <= 0 {
	instance_create_depth(x, y, -1000, o_explosion);
	
	audio_play_sound(explosion, 0, false);
	create_screen_pause(12);
	camera_shake(12);
	
	instance_destroy();
}