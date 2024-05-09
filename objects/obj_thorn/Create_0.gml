/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)){
	direction = point_direction(x, y, obj_player.x, obj_player.y)
} else { 
	direction = 180;
}

speed = 3;
direction = clamp(direction, 0, 360);









