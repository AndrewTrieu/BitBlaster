if global.first_start {
	menu_inst = instance_create_depth(0, 0, -10000, o_start_menu)
}

if global.start_key_pressed && instance_exists(menu_inst) {
	instance_destroy(menu_inst);
}

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

if (global.enemyKillCount >= global.enemyRoomMax) {
	instance_create_depth(0, 0, -10000, o_end_screen);
}