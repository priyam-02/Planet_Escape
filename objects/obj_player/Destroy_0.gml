global.start_time = 0;
obj_Timer.timer = 0;
instance_destroy();
audio_stop_sound(snd_backg);
audio_stop_sound(snd_thruster);
audio_stop_sound(snd_heal);
audio_stop_sound(snd_lessoxygen);

var dead = instance_create_layer(x,y, "Room_Level_Instances", obj_gameOver);