global.start_key_pressed = keyboard_check_pressed(vk_enter);
global.space_key_pressed = keyboard_check_pressed(vk_space);
global.back_key_pressed = keyboard_check_pressed(vk_backspace);
global.shift_key_pressed = keyboard_check_pressed(vk_shift);

if (!instance_exists(o_start_menu) && !instance_exists(o_tutorial) && !instance_exists(o_credits) && !instance_exists(o_mode_menu)) {
    global.pause_key_pressed = keyboard_check_pressed(vk_escape);
} else {
    global.pause_key_pressed = false;
}

global.one_key_pressed = keyboard_check_pressed(ord("1"));
global.two_key_pressed = keyboard_check_pressed(ord("2"));

if instance_exists(o_start_menu) || instance_exists(o_tutorial) || instance_exists(o_credits) || instance_exists(o_mode_menu) {
    exit;
}

global.right_key = keyboard_check(ord("D"));
global.left_key = keyboard_check(ord("A"));
global.up_key = keyboard_check(ord("W"));
global.down_key = keyboard_check(ord("S"));
global.shoot_key = mouse_check_button(mb_left);
global.swap_key_pressed = mouse_check_button_pressed(mb_right);
global.heal_key_pressed = keyboard_check(ord("Q"));