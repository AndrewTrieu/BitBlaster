if global.back_key_pressed {
	instance_destroy();
	
	instance_create_depth(0, 0, -9000, o_start_menu);
}