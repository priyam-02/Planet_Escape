/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_heal, 1, false);
healing_cooldown_timer = healing_cooldown_duration;
obj_oxygenBar.oxygen_level = 200; 
instance_destroy(other);







