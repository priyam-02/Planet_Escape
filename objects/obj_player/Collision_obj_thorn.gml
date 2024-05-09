if (obj_oxygenBar.oxygen_depletion_enabled){
	audio_play_sound(snd_damage, 1, false);
	obj_oxygenBar.oxygen_depletion_rate *= 2; 
	instance_destroy(other);
}else{
	audio_stop_sound(snd_damage);
}








