if sprite_index == sprites[4] {
	global.kill_count++;
	global.current_score++;
	
	// Drop healing milk
	var _drop_chance = 10;
	
	if global.infinite_mode {
		_drop_chance = 5;
	}
	
	var _chance = irandom(100);
	
	if ((!global.infinite_mode && global.kill_count mod 20 == 0) || _chance <= _drop_chance) {
		instance_create_depth(x, y, -600, o_potion);
	}
	
	instance_destroy();
}