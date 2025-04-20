var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

draw_set_alpha(alpha * alpha_mul);
draw_rectangle_color(_cam_x, _cam_y, _cam_w + _cam_x, _cam_h + _cam_y, c_red, c_red, c_black, c_black, false);

draw_set_alpha(alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_Special_Elite);
draw_text_transformed(_cam_x + (_cam_w / 2), _cam_y + (_cam_h / 2) - 20, "YOU DIED", 4, 4, 0);
draw_set_font(fnt_Tiny5);
draw_text_transformed(_cam_x + (_cam_w / 2),  _cam_y + (_cam_h / 2) + 50, "-< Press any key to resurrect >-", 1, 1, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
