if aim_dir >= 0 && aim_dir < 180 {
	draw_own_weapon();
}


draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);

if aim_dir >= 180 && aim_dir < 360 {
	draw_own_weapon();
}
