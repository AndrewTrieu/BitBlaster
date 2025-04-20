if instance_exists(player_ref) { 
    x = player_ref.x; 
    y = player_ref.y;
}

if image_index >= image_number - 1 {
    instance_destroy();
}