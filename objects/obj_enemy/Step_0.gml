/// @description Insert description here
// You can write your code in this editor

/*if (x > view_xview && x < view_xview + view_wview &&
    y > view_yview && y < view_yview + view_hview) {
    // The object is within the viewport.
	
	if(alarm[0] == -1) {
		
		alarm[0] = 120;
	}
} else {
    // The object is outside the viewport.
	//show_debug_message("in else block")
	alarm[0] = -1;
}
*/
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
// Check if the player is in the viewport
if (vx <= x && x <= vx + vw &&
    vy <= y && y <= vy + vh) {
    // Play the timeline
	//show_debug_message(view_xview)
	//show_debug_message(view_yview)
    if (!timeline_running) {
		//show_debug_message("in thos this?")
        timeline_index = timeline_enemy_thorns;
		timeline_running = true;
        timeline_position = 0; // Start the timeline from the beginning
        timeline_speed = 1;   // You can adjust the speed as needed
		//instance_create_layer(x, y - sprite_yoffset, "Room_Level_Instances", obj_thorn);
	} else {
		//show_debug_message("in here running:")
		//show_debug_message(timeline_position)
		if(timeline_position == 300) {
			instance_create_layer(x, y - sprite_yoffset, "Room_Level_Instances", obj_thorn);
			timeline_position = 0;
		}
	}

} else {
	//show_debug_message("not in this viewport")
    // Stop the timeline if the player is not in the viewport
    if (timeline_running) {
        timeline_index = noone;
		timeline_running = false;
    }
}










