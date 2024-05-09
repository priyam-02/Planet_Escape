global.high_scores = ds_list_create();

if (file_exists("high_scores.ini")) {
    ini_open("high_scores.ini");
    var num_scores = ini_read_real("HighScores", "NumScores", 0);

    if (num_scores > 0) {
        for (var i = 0; i < num_scores; i++) {
            var player_score = ini_read_real("HighScores", "Score_" + string(i), 0);
            var player_name = ini_read_string("HighScores", "Name_" + string(i), "");
            ds_list_add(global.high_scores, [player_score, player_name]);
        }
    }

    ini_close();
}



