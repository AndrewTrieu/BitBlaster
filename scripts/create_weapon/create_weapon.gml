function create_weapon(_name = "Fireball", _sprite = s_fireball, _bullet_obj = o_fireball,  _cooldown = 24, _bullet_num = 1, _bullet_spread = 0) constructor {
	name = _name;
	sprite = _sprite;
	bullet_obj = _bullet_obj;
	cooldown = _cooldown;
	bullet_num = _bullet_num;
	bullet_spread = _bullet_spread;
}


// Player-owned weapons
global.PlayerWeapons = array_create(0);

// All available weapons
global.WeaponList = {
	fireball: new create_weapon("Fireball", s_fireball, o_fireball, 24),
	icebolt: new create_weapon("Ice bolt",s_icebolt, o_icebolt, 48),
	poison: new create_weapon("Poisonous cloud", s_poison, o_poison, 12),
	shards: new create_weapon("Emerald shard", s_shards, o_shards, 20, 3, 45),
	disc: new create_weapon("Sapphire disc", s_disc, o_disc, 16, 5, 90),
}

array_push(global.PlayerWeapons, global.WeaponList.fireball);