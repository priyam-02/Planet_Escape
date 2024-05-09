var ini_file = "high_scores.ini";
ini_open(ini_file);
if (ini_key_exists("HighScores", "NumScores")) {
        // The INI file has sections (content)
        //show_debug_message("INI file has content, do erase.");
		ini_key_delete("HighScores", "NumScores");
    }
ini_close();

