if global.start_key_pressed {
	instance_destroy();
	global.first_start = false;
}

if global.space_key_pressed {
	instance_destroy();
	
	instance_create_depth(0, 0, -10000, o_tutorial);
}