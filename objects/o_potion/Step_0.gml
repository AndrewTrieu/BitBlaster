// Pause
if pause_movement() { exit; }

float_dir += float_spd;
y = ystart + dsin(float_dir) * 2;

// Heal player
if place_meeting(x, y, o_player) {
	o_player.hp += heal;
	audio_play_sound(item_pick, 0, false);
	instance_destroy();
}