depth = -9000;

player_hp = 0;
player_max_hp = 0;

global.enemy_room_max = 100;
global.enemy_active_max = 20;
global.total_enemies_spawned = 0;
global.kill_count = 0;

global.first_start = true;
global.current_score = 0;
load_high_score();

global.infinite_mode = false;

// Weapon pickup
global.weapon_notification = "";
global.weapon_notification_timer = 0;

menu_inst = noone;