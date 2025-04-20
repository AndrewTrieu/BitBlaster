function pause_movement() {
	if instance_exists(o_screen_pause) {
		image_speed = 0;
		return true;
	} else {
		image_speed = 1;
		return false;
	}
}
