/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)){
	if (distance_to_object(obj_player) < attack_range){
		path_end();
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		speed = attack_speed;
	}
}


// Distance between player and enemy
var playerDist = point_distance(x, y, obj_player.x, obj_player.y);

if (followPlayer) {
    // If the player gets out of range, switch back to following the path
    if (playerDist > followThreshold) {
        followPlayer = false;
        path_start(fly_path, attack_speed, path_action_restart, false);
    }
    else {
        // Follow the player
        move_towards_point(obj_player.x, obj_player.y, attack_speed);
    }
}
else {
    // If the player gets near the enemy, start following the player
    if (playerDist < followThreshold) {
        followPlayer = true;
        path_end();
    }
}

// If not following the player, continue following the path
if (!followPlayer && !path_exists(fly_path)) {
    path_start(fly_path, attack_speed, path_action_restart, true);
}









