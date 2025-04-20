function get_random_weapon() {
    // Get array of weapon keys
    var weapon_keys = variable_struct_get_names(global.WeaponList);
    var available_weapons = array_create(0);
    
    // Filter out weapons the player already has
    for (var i = 0; i < array_length(weapon_keys); i++) {
        var weapon_key = weapon_keys[i];
        var weapon = variable_struct_get(global.WeaponList, weapon_key); // FIXED THIS LINE
        
        // Check if player already has this weapon
        var already_has = false;
        for (var j = 0; j < array_length(global.PlayerWeapons); j++) {
            if (global.PlayerWeapons[j].name == weapon.name) {
                already_has = true;
                break;
            }
        }
        
        if (!already_has) {
            array_push(available_weapons, weapon);
        }
    }
    
    // If there are available weapons, pick one randomly
    if (array_length(available_weapons) > 0) {
        var random_index = irandom(array_length(available_weapons) - 1);
        var new_weapon = available_weapons[random_index];
        
        // Add to player's inventory
        array_push(global.PlayerWeapons, new_weapon);
        return new_weapon;
    }
    
    return undefined;
}