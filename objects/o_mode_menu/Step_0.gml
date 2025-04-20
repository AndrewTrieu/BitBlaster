if global.back_key_pressed {
	instance_destroy();
	
	instance_create_depth(0, 0, -9000, o_start_menu);
}

if global.one_key_pressed {
	instance_destroy();
}

if global.two_key_pressed {
	global.infinite_mode = true;
	global.enemy_active_max = 100;
	
	instance_destroy();
}