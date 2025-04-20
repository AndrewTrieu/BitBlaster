var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

draw_set_alpha(alpha);
draw_rectangle_color(_cam_x, _cam_y, _cam_w + _cam_x, _cam_h + _cam_y, c_black, c_black, c_black, c_black, false);

draw_set_font(fnt_Tiny5);
draw_text_transformed(_cam_x + 10, _cam_y, "Tutorial", 2, 2, 0);

var start_x = _cam_x + 40;
var start_y = _cam_y + 50;
var line_height = 24;

draw_text(start_x, start_y, "");
draw_sprite_ext(s_key_wasd, 0, start_x - 20, start_y + line_height + 23, 0.5, 0.5, 0, c_white, 1);
draw_text(start_x, start_y + line_height, "- WASD: Player's movement");
draw_sprite_ext(s_mouse_left, 0, start_x - 20, start_y + line_height*2 + 23, 1, 1, 0, c_white, 1);
draw_text(start_x, start_y + line_height*2, "- Left Click: Shoot spell");
draw_sprite_ext(s_mouse_right, 0, start_x - 20, start_y + line_height*3 + 23, 1, 1, 0, c_white, 1);
draw_text(start_x, start_y + line_height*3, "- Right Click: Switch spell");
draw_sprite_ext(s_key_q, 0, start_x - 20, start_y + line_height*4 + 23, 1, 1, 0, c_white, 1);
draw_text(start_x, start_y + line_height*4, "- Q: Heal 20 HP (30s cooldown)");
draw_sprite_ext(s_archer_walk, image_index, start_x - 20, start_y + line_height*5 + 16, 1, 1, 0, c_white, 1);
draw_text(start_x, start_y + line_height*5, "- Kill skeletons to reach target");
draw_sprite_ext(s_potion, 0, start_x - 20, start_y + line_height*6 + 23, 1, 1, 0, c_white, 1);
draw_text(start_x, start_y + line_height*6, "- Milk cartons heal 50 HP");
draw_sprite_ext(s_support_spells, 0, start_x - 20, start_y + line_height*7 + 23, 1, 1, 0, c_white, 1);
draw_sprite_ext(s_new_spell, 0, start_x - 20, start_y + line_height*7 + 5, 0.6, 0.6, 0, c_white, 1);
draw_text(start_x, start_y + line_height*7, "- Find dead wizards for new spells (4 total)");
draw_sprite_ext(s_blocker, 0, start_x - 20, start_y + line_height*8 + 23, 0.5, 0.5, 0, c_white, 1);
draw_text(start_x, start_y + line_height*8, "- Trees block arrows (until stumps)");
draw_sprite_ext(s_blocker_stump, 0, start_x - 20, start_y + line_height*9 + 16, 1, 1, 0, c_white, 1);
draw_text(start_x, start_y + line_height*9, "- Stumps block movement only (can be destroyed)");
draw_sprite_ext(s_explosive, image_index, start_x - 20, start_y + line_height*10 + 16, 1, 1, 0, c_white, 1);
draw_text(start_x, start_y + line_height*10, "- Coal crate explodes when too damaged");

var pulse = 1 + 0.05 * sin(current_time * 0.01);
draw_sprite_ext(s_key_back, image_index, _cam_x + 610, _cam_y + 45, 0.5 + pulse, 0.5 + pulse, 0, c_white, 1);
draw_text_transformed(_cam_x + 225, _cam_y + 20, "-< Press Backspace to return", pulse, pulse, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);