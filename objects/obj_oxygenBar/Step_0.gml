x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]); 


if (oxygen_depletion_enabled) {
    oxygen_level -= oxygen_depletion_rate;
}


if (oxygen_level < 0) {
    oxygen_level = 0;
	instance_destroy(obj_player);
	audio_stop_sound(snd_lessoxygen);
	room_goto(rm_gameOver);
}

if (oxygen_level < 50 && !oxygen_sound_playing) {

    audio_play_sound(snd_lessoxygen, 1, true);
    oxygen_sound_playing = true;
}

if (oxygen_level >= 50 && oxygen_sound_playing) {
    audio_stop_sound(snd_lessoxygen);
    oxygen_sound_playing = false;
}