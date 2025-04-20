if sprite_index == sprites[4] {
	if (global.current_score >= global.high_score) {
		global.high_score = global.current_score;
		save_high_score();
	}
	instance_create_depth(0, 0, -10000, o_game_over);
    instance_destroy();
}