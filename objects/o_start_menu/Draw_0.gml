var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

draw_set_alpha(alpha);
draw_rectangle_color(_cam_x, _cam_y, _cam_w + _cam_x, _cam_h + _cam_y,  c_green,  c_green, c_green, c_green, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_Tiny5);
draw_text_transformed(_cam_x + (_cam_w / 2), _cam_y + (_cam_h / 2) - 40, "Bit Blaster", 4, 4, 0);
var pulse = 1 + 0.05 * sin(current_time * 0.01);
if global.first_start {
	draw_sprite_ext(s_key_enter, image_index, _cam_x + (_cam_w / 2) + 160, _cam_y + (_cam_h / 2) + 40, 0.5 + pulse, 0.5 + pulse, 0, c_white, 1);
	draw_text_transformed(_cam_x + (_cam_w / 2),  _cam_y + (_cam_h / 2) + 30, "-< Press Enter to start", pulse, pulse, 0);
} else {
	draw_sprite_ext(s_key_enter, image_index, _cam_x + (_cam_w / 2) + 180, _cam_y + (_cam_h / 2) + 40, 0.5 + pulse, 0.5 + pulse, 0, c_white, 1);
	draw_text_transformed(_cam_x + (_cam_w / 2),  _cam_y + (_cam_h / 2) + 30, "-< Press Enter to continue", pulse, pulse, 0);
}
draw_sprite_ext(s_key_space, image_index, _cam_x + (_cam_w / 2) + 180, _cam_y + (_cam_h / 2) + 80, 1.5, 1.5, 0, c_white, 1);
draw_text_transformed(_cam_x + (_cam_w / 2),  _cam_y + (_cam_h / 2) + 70, "-< Press Space for tutorial", 1, 1, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
