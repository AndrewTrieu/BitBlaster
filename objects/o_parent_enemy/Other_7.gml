if sprite_index == sprites[4] {
	global.enemyKillCount++;
	
	// Drop healing milk
	var _drop_chance = 10;
	var _chance = irandom(100);
	
	if global.enemyKillCount mod 20 == 0 || _chance <= _drop_chance {
		instance_create_depth(x, y, -600, o_potion);
	}
	
	instance_destroy();
}