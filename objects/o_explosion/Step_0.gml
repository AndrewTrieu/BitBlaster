if pause_movement() { exit; }

if !created_damage_objects {
	hurt_instance = instance_create_depth(x, y, 0, o_all_hurt);
	with(hurt_instance) {
		damage = other.damage;
		mask_index = other.sprite_index;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
	
	created_damage_objects = true;
}

// When done, stop damage
if floor(image_index) >= 3 {
	if instance_exists(hurt_instance) {
		instance_destroy(hurt_instance);
	}
}
	