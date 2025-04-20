if instance_exists(bullet_inst) && bullet_inst.state == 0 {
	bullet_inst.is_exploding = true;
	bullet_inst.sprite_index = s_arrow_destroy; 
	bullet_inst.image_index = 0; // Reset animation
	bullet_inst.image_speed = 1; // Play explosion animation
	bullet_inst.bullet_spd = 0;
}