/// @description Insert description here
// You can write your code in this editor

// Retrieve the top 10 high scores
var numScores = ds_list_size(global.high_scores);

var numToDisplay = min(10, numScores); // Display a maximum of 10 scores

// Define the starting position for displaying scores
var xPos = 600;
var yPos = 140;
var col = make_color_rgb(183, 224, 31);
// Loop through the top 10 high scores and display them
for (var i = 0; i < numToDisplay; i++) {
    var player_score = ds_list_find_value(global.high_scores, i)[0];
    var player_name = ds_list_find_value(global.high_scores, i)[1];
    var scoreText = string(i + 1) + ". " + player_name + ": " + string(player_score);
    
	
	draw_set_color(col);
	draw_set_font(fnt_highScore);
    draw_text(550, yPos, scoreText);
    yPos += 50; // Adjust the vertical spacing
}

draw_set_color(col);
draw_set_font(fnt_highScoresHead);
draw_text(550, 50, "High Scores");
draw_set_font(fnt_g);
//draw_text(450, 680, "PRESS C TO CLEAR HIGH SCORES")
draw_text(150, 720, "PRESS SPACE TO CONTINUE")
draw_text(750, 720, "PRESS ESC TO GO BACK TO START")











