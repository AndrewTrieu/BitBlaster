function get_damaged_create(_hp, _iframes = false){
	max_hp = _hp;
	hp = _hp;
	is_stopping = false;
	
	if _iframes {
		iframes_timer = 0;
		iframes_number = 90;
	}
	
	if !_iframes {
		dmg_list = ds_list_create();
	}
}