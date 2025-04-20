function create_screen_pause(_timer = 8) {
	var _inst = instance_create_depth(0, 0, -10000, o_screen_pause_timed);
	with _inst {
		_inst.timer = _timer;
	}
}