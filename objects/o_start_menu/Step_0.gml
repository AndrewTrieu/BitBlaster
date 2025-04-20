if global.start_key_pressed {
	instance_destroy();
	
	instance_create_depth(0, 0, -10000, o_mode_menu);
}

if global.space_key_pressed {
	instance_destroy();
	
	instance_create_depth(0, 0, -10000, o_tutorial);
}

if global.shift_key_pressed {
	instance_destroy();
	
	instance_create_depth(0, 0, -10000, o_credits);
}

if global.pause_key_pressed {
	game_end();
}

