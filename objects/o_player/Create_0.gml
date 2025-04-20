// Vital stats
get_damaged_create(200, true);


// Movement variables
move_dir = 0;
move_spd = 2;
x_speed = 0;
y_speed = 0;

// Aiming variables
center_y_offset = -5;
center_y = y + center_y_offset;
aim_dir = 0;

// Sprite controls
face = 1;
sprites[0] = s_player_idle;
sprites[1] = s_player_walk;
sprites[2] = s_player_attack;
sprites[3] = s_player_hurt;
sprites[4] = s_player_death;
sprites[5] = s_player_heal;

sprite_index = sprites[0];

// Weapon info
shoot_timer = 0;
heal_timer = 0;
heal_cooldown = 30 * 60;
weapon_offset_dist = 5;
weapon_length = sprite_get_bbox_right(s_aimer) - sprite_get_xoffset(s_aimer);

// Add weapon to player's inventory
selected_weapon = 0;
weapon = global.PlayerWeapons[selected_weapon];