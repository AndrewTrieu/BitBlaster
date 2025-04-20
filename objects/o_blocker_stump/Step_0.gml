get_damaged(o_parent_hurt, false, false);

if hp <= 0 {
	instance_destroy();
	
	instance_create_depth(x, y, -100, o_blocker_destroyed);
}