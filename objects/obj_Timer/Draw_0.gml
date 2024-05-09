var x_pos = camera_get_view_x(view_camera[0]);
var y_pos = camera_get_view_y(view_camera[0]) + 40;

//var minutes = floor(timer / 60);
//var seconds = timer mod 60;


draw_set_halign(fa_left);
draw_set_font(ft_timer);

//draw_text(x_pos, y_pos, "Timer: " + string(minutes) + ":" + string(seconds));


var draw_seconds;
draw_seconds = floor (seconds);
if (seconds <= 10) && (minutes < 10)
{
	draw_text (x_pos, y_pos, "Timer: " + string (minutes) + ":0" + string (draw_seconds));
}else if (seconds > 10) && (minutes >= 10)
	{
		draw_text (x_pos, y_pos, string (minutes) + ":" + string (draw_seconds));
		}else if (seconds < 10) && (minutes >= 10)
		{
			draw_text (x_pos, y_pos, "Timer: " + string (minutes) + ":0" + string (draw_seconds));
			}
			else if (seconds >= 10) && (minutes < 10)
			{
				draw_text (x_pos, y_pos, "Timer: " + string (minutes) + ":" + string (draw_seconds));
				}
