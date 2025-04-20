// Pause
if pause_movement() { exit; }

// Floating animation
float_dir += float_spd;
y = ystart + dsin(float_dir) * 2;

// Check player collision
if place_meeting(x, y, o_player) {
    var obtained_weapon = get_random_weapon();
    if (obtained_weapon != undefined) {
        audio_play_sound(item_pick, 0, false);
        // Set global notification
        global.weapon_notification = "Got " + obtained_weapon.name + "!";
        global.weapon_notification_timer = 90; // 1.5 seconds at 60FPS
        instance_destroy();
    }
}
