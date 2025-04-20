var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

draw_set_alpha(alpha);
draw_rectangle_color(_cam_x, _cam_y, _cam_w + _cam_x, _cam_h + _cam_y,  c_black,  c_black, c_black, c_black, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_Tiny5);
draw_text_transformed(_cam_x + (_cam_w / 2), _cam_y + (_cam_h / 2) - 20, "PAUSED", 4, 4, 0);
draw_sprite_ext(s_key_esc, image_index, _cam_x + (_cam_w / 2) + 160,  _cam_y + (_cam_h / 2) + 60, 1.5, 1.5, 0, c_white, alpha);
draw_text_transformed(_cam_x + (_cam_w / 2),  _cam_y + (_cam_h / 2) + 50, "-< Press ESC to resume", 1, 1, 0);

draw_set_valign(fa_bottom);
draw_text_transformed(_cam_x + (_cam_w / 2) - 120,  _cam_y + _cam_h - 30, "Current Score: " + string(global.current_score), 0.5, 0.5, 0);
draw_text_transformed(_cam_x + (_cam_w / 2) + 120,  _cam_y + _cam_h - 30, "High Score: " + string(global.high_score), 0.5, 0.5, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
