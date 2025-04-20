function draw_tutorial_line(y_pos, icon_name, text) {
    // Draw icon if it exists
    if (variable_struct_exists(icons, icon_name)) {
        var icon_sprite = icons[$ icon_name];
        if (sprite_exists(icon_sprite)) {
            var icon_x = _cam_x + 20;
            var icon_y = y_pos + (line_height/2) - (icon_size/2);
            draw_sprite_ext(
                icon_sprite, 
                0, 
                icon_x, 
                icon_y,
                icon_size/sprite_get_width(icon_sprite),
                icon_size/sprite_get_height(icon_sprite),
                0,
                c_white,
                1
            );
        }
    }
    // Draw text
    draw_text(start_x, y_pos, text);
}
