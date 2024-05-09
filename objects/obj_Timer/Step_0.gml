x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]); 


//if (timer_running) {
//    timer += 1; 
//}

if (timer_running == true){
	seconds += 1/room_speed;
}

if (seconds < 60) && (seconds > 59.9){
	seconds = 0;
	minutes +=1;
}
