var border_width = 200;
var bar_width = oxygen_level;
var bar_height = 25; 
var border_color = c_black;
var x_pos = camera_get_view_x(view_camera[0]) + 110;
var y_pos = camera_get_view_y(view_camera[0]) + 10;



draw_set_color(border_color);
draw_rectangle(x_pos, y_pos, x_pos+border_width+2, y_pos + bar_height+1, true);



draw_set_color(c_aqua); 
draw_rectangle(x_pos, y_pos, x_pos + bar_width, y_pos + bar_height, false);


draw_set_color(c_white);
draw_text(camera_get_view_x(view_camera[0]), y_pos, "Oxygen: ");





