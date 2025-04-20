// Inherit the parent event
event_inherited();

move_dir = 0;
move_spd = 0;
chase_spd = 0.5
x_speed = 0;
y_speed = 0;
face = 1;

sprites[0] = s_archer_idle;
sprites[1] = s_archer_walk;
sprites[2] = s_archer_attack;
sprites[3] = s_archer_hurt;
sprites[4] = s_archer_death;

// State machine
state = 0;
shoot_timer = 0;
charge_time = 30;
recover_time = 60;
cooldown_time = 5*60;
bullet_inst = noone;
has_started_shooting = false;

// Spawn
fade_spd = 1/30;
spawn_spd = .25;