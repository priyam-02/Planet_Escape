var elapsed_time = floor((current_time - global.start_time) / 100);
global.start_time = 0;
if (obj_Timer.timer_running == true){
	obj_Timer.timer_running = false;
	global.seconds = obj_Timer.seconds;
	global.minutes = obj_Timer.minutes;
}
//show_debug_message("elapsed time:")
//show_debug_message(elapsed_time)
var player_score = 100;
if(elapsed_time < 2000) {
	player_score = max(0, 2000 - elapsed_time);	
}


// Add the player's score and name to the list
ds_list_add(global.high_scores, [player_score, global.player_name]);

// Sort the high scores list by score in descending order
ds_list_sort(global.high_scores, true);

// Keep only the top 10 scores
var listSize = ds_list_size(global.high_scores)
if (listSize > 10) {
	ds_list_delete(global.high_scores, listSize);
}

var ini_file = "high_scores.ini";
ini_open(ini_file);
if (file_exists(ini_file)) {
    
	if (ini_key_exists("HighScores", "NumScores")) {
        // The INI file has sections (content)
        //show_debug_message("INI file has content, do erase.");
		ini_key_delete("HighScores", "NumScores");
    }
} else {
    //show_debug_message("INI file does not exist.");
}


ini_write_real("HighScores", "NumScores", ds_list_size(global.high_scores));

for (var i = 0; i < ds_list_size(global.high_scores); i++) {
    var player_score_in_list = ds_list_find_value(global.high_scores, i)[0];
    var player_name_in_list = ds_list_find_value(global.high_scores, i)[1];
    ini_write_real("HighScores", "Score_" + string(i), player_score_in_list);
    ini_write_string("HighScores", "Name_" + string(i), player_name_in_list);
}

ini_close();

room_goto(rm_win);
//obj_Timer.timer = 0;
instance_destroy(obj_player);

audio_stop_sound(snd_backg);
audio_stop_sound(snd_thruster);
//active = false;






