var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

var _padding = 10;
var _hud_x =  _cam_x + _padding;
var _hud_y =  _cam_y + _padding;

if instance_exists(o_player) && !instance_exists(o_screen_pause) {
	draw_sprite(s_player_health, 0, _hud_x, _hud_y);
	for (var i = 0; i < player_max_hp / 10; i++) {
		var _img = 1;
	
		if i + 1 <= player_hp / 10 { _img = 2; };
	
		var _sep = 6;
		draw_sprite(s_player_health, _img, _hud_x + _sep * i, _hud_y);
	}
	
	draw_sprite(s_kill_count, 0, _hud_x, _hud_y + 20);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_Tiny5);
	draw_text_transformed(_hud_x + 28, _hud_y + 23, string(global.enemyKillCount) , 0.5, 0.5, 0);
	draw_text_transformed(_hud_x + 49, _hud_y + 23, " / " + string(global.enemyRoomMax), 0.5, 0.5, 0);
}

// Draw notification if active
if (global.weapon_notification != "") {
    draw_set_font(fnt_Tiny5);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
    
    // Draw at top center of screen
    draw_text_transformed(_hud_x + 23, _hud_y + 40, global.weapon_notification , 0.5, 0.5, 0);
}
