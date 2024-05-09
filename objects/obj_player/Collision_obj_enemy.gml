if(!is_immune){
	audio_play_sound(snd_dead, 1, false);
	instance_destroy();
	global.start_time = 0;
	obj_Timer.timer = 0;
	room_goto(rm_gameOver);
}else{
	audio_stop_sound(snd_dead);

}