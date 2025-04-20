draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);

var _healh_pct = hp / max_hp;
var _hp_img = _healh_pct * (sprite_get_number(s_enemy_health) - 1);
if instance_exists(o_player) {
	draw_sprite_ext(s_enemy_health, _hp_img, x - 8, y - sprite_height / 2 - 5, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}