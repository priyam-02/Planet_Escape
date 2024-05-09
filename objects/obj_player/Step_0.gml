
x = clamp(x, sprite_width / 2, room_width - (sprite_width / 2))
y = clamp(y, sprite_height / 2, room_height - (sprite_height / 2))

	


if (keyboard_check(vk_left) and !instance_place(x-m_speed, y, obj_block)) {
	x += -m_speed;
	sprite_index = spr_running;	
	image_xscale = -1;
}
else if (keyboard_check(vk_right) and !instance_place(x+m_speed, y, obj_block)) {
	sprite_index = spr_running;
	x += m_speed
	image_xscale = 1;
		
		//if (obj_Timer.timer_running == false){
		//	obj_Timer.timer_running = true;
			
		//}
}else{
	sprite_index = spr_player;
	}

if (keyboard_check(vk_space)){
	sprite_index = spr_jumping;
	show_debug_message("jumping...")
	if (instance_place(x, y+1, obj_block)){
			vspeed = jump_height;
			
	}
}
	
if (!instance_place(x, y+1, obj_block)){
	gravity = 0.25;
		
		

} else {
	gravity = 0;
		
	}

if (keyboard_check(vk_space) && !thruster_sound_playing) {

    audio_play_sound(snd_thruster, 1, true);
    thruster_sound_playing = true;
} 

if(keyboard_check_released(vk_space)){
	audio_stop_sound(snd_thruster);
	thruster_sound_playing = false;
}






if (healing_cooldown_timer > 0) {
	shader = (healing_cooldown_timer div 3) mod 2;
    healing_cooldown_timer--;
}
	
