function is_dying(_sprite){
	if hp <= 0 && sprite_index != _sprite {
		is_stopping = true;
		sprite_index = _sprite; 
	}
}