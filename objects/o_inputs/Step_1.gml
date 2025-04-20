global.start_key_pressed = keyboard_check_pressed(vk_enter);
global.space_key_pressed = keyboard_check_pressed(vk_space);
global.back_key_pressed = keyboard_check_pressed(vk_backspace)


if instance_exists(o_start_menu) || instance_exists(o_tutorial) {
	exit;
}

global.right_key = keyboard_check(ord("D"));
global.left_key = keyboard_check(ord("A"));
global.up_key = keyboard_check(ord("W"));
global.down_key = keyboard_check(ord("S"));
global.shoot_key = mouse_check_button(mb_left);
global.swap_key_pressed = mouse_check_button_pressed(mb_right);
global.heal_key_pressed = keyboard_check(ord("Q"));
global.pause_key_pressed = keyboard_check_pressed(vk_escape);

