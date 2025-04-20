var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

draw_rectangle_color(_cam_x, _cam_y, _cam_w + _cam_x, _cam_h + _cam_y, c_black, c_black, c_black, c_black, false);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_Tiny5);
draw_text_transformed(_cam_x + 10, _cam_y, "Credits", 2, 2, 0);
var pulse = 1 + 0.05 * sin(current_time * 0.01);
draw_sprite_ext(s_key_back, image_index, _cam_x + 610, _cam_y + 45, 0.5 + pulse, 0.5 + pulse, 0, c_white, 1);
draw_text_transformed(_cam_x + 225, _cam_y + 20, "-< Press Backspace to return", pulse, pulse, 0);

draw_set_halign(fa_center);
// Credit Text Lines
var credit_lines = [
    "Developed by Andrew Trieu",
    "Character & Item Sprites by Zerie",
    "Tile Set by Butter Milk",
    "Spells & Spawner by BDragon1727",
	"Explosive Crate by Akonolisa",
	"Explosion Animation by Pixel Frog",
	"Keyboard Icons by ansdor",
	"Fonts by Google Fonts",
	"Background Music by David Renda",
	"Hit Sound by Homemade_SFX",
	"Healing & Item Pickup Sound by Freesound Community",
	"Explosion Sound by Ahmed_Abdulaal"
];

// Draw each line spaced vertically
var base_y = _cam_y + 80;
var spacing = 20;

for (var i = 0; i < array_length(credit_lines); i++) {
    draw_text_transformed(_cam_x + (_cam_w / 2), base_y + i * spacing, credit_lines[i], 0.5, 0.5, 1);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);