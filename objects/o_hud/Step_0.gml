// Get player's hp
if instance_exists(o_player) {
	player_hp = o_player.hp;
	player_max_hp = o_player.max_hp;
} else {
	player_hp = 0;
}

if (global.weapon_notification_timer > 0) {
    global.weapon_notification_timer--;
    if (global.weapon_notification_timer <= 0) {
        global.weapon_notification = "";
    }
}

if (global.kill_count >= global.enemy_room_max) {
	if (global.current_score >= global.high_score) {
		global.high_score = global.current_score;
		save_high_score();
	}
	instance_create_depth(0, 0, -10000, o_end_screen);
}