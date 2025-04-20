function get_damaged(_dmg_obj, _iframes = false, _hurt_sprite = true){
	var _hit_confirmed = false;
	// Exit iframe timer
	if _iframes && iframes_timer > 0 {
		iframes_timer--;
		
		if iframes_timer mod 5 == 0
		{
			if image_alpha == 1 {
				image_alpha = 0;
			} else {
				image_alpha = 1;
			}
		}
			
		hp = clamp(hp, 0, max_hp);
		return _hit_confirmed;
	}
	
	if _iframes {
		image_alpha = 1;
	}

	if place_meeting(x, y, _dmg_obj) || (_dmg_obj != o_all_hurt && place_meeting(x, y, o_all_hurt)) {
		var _inst_list = ds_list_create();
		
		instance_place_list(x, y, _dmg_obj, _inst_list, false);
		
		if _dmg_obj != o_all_hurt {
			instance_place_list(x, y, o_all_hurt, _inst_list, false);
		}
		
		var _list_size = ds_list_size(_inst_list);
		

		
		for (var i = 0; i < _list_size; i++) {
			var _inst = ds_list_find_value(_inst_list, i);
				
			if _iframes || ds_list_find_index(dmg_list, _inst) == -1 {
				if !_iframes {
					ds_list_add(dmg_list, _inst);
				}
				
				hp -= _inst.damage;
				_hit_confirmed = true;
				_inst.hit_confirmed = true;
			}
		}
		
		if _iframes && _hit_confirmed {
			iframes_timer = iframes_number;
		}
		
		ds_list_destroy( _inst_list);
		
		if _hurt_sprite {
			if hp > 0 && sprite_index != sprites[3] {
				sprite_index = sprites[3];
			}
		}
	}
	
	if !_iframes {
		var _dmg_list_size = ds_list_size(dmg_list);
		for (var i = 0; i < _dmg_list_size; i++) {
			var _inst = ds_list_find_value(dmg_list, i);
		
			if !instance_exists(_inst) || !place_meeting(x, y, _inst) {
				ds_list_delete(dmg_list, i);
				i--;
				_dmg_list_size--;
			}
		}
	}
	
	hp = clamp(hp, 0, max_hp);
	
	return _hit_confirmed;
}