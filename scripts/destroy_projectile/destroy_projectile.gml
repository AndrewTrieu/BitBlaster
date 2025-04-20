function destroy_projectile(){
	is_exploding = true;
	sprite_index = s_destroy; 
	image_index = 0; // Reset animation
	image_speed = 1; // Play explosion animation
	bullet_spd = 0; // Stop movement
}	