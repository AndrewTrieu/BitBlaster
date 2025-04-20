var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

draw_rectangle_color(_cam_x, _cam_y, _cam_w + _cam_x, _cam_h + _cam_y, c_black, c_black, c_black, c_black, false);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_Tiny5);
draw_text_transformed(_cam_x + 10, _cam_y, "Modes", 2, 2, 0);
draw_sprite_ext(s_key_back, image_index, _cam_x + 610, _cam_y + 45, 1.5, 1.5, 0, c_white, 1);
draw_text_transformed(_cam_x + 240, _cam_y + 20, "-< Press Backspace to return", 1, 1, 0);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(_cam_x + (_cam_w / 2), _cam_y + (_cam_h / 2) - 70, "Gauntlet Rush", 1.5, 1.5, 0);
draw_sprite_ext(s_key_one, image_index, _cam_x + (_cam_w / 2) + 150, _cam_y + (_cam_h / 2) - 55, 2, 2, 0, c_white, 1);
draw_text_transformed(_cam_x + (_cam_w / 2), _cam_y + (_cam_h / 2) + 50, "Endless Swarm", 1.5, 1.5, 0);
draw_sprite_ext(s_key_two, image_index, _cam_x + (_cam_w / 2) + 160, _cam_y + (_cam_h / 2) + 65, 2, 2, 0, c_white, 1);

draw_set_alpha(0.7);
draw_set_valign(fa_top);
draw_text_transformed(
    _cam_x + (_cam_w / 2),
    _cam_y + (_cam_h / 2) - 40,
    "Start with 40 enemies and fight through 100 kills.\nEach round increases difficulty. How long can you survive?",
    0.8, 0.8, 0
);

draw_text_transformed(
    _cam_x + (_cam_w / 2),
    _cam_y + (_cam_h / 2) + 80,
    "Face as many enemies at once as you can in an endless battle.\nNo kill limit. Healing is rare. Just survive.",
    0.8, 0.8, 0
);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);