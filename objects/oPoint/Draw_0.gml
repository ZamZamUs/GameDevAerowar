draw_self();

if(debug_mode){
	draw_set_colour(c_yellow);
	draw_circle(x, y, radius, true);
}

if(oPlayer.tips){
	show_debug_message(oPlayer.targetName)
	if(function_name == oPlayer.targetName){
		draw_set_colour(c_yellow);
		draw_circle(x, y, radius, true);
	}
}

if(variable_global_exists("missionActive")){
	if(global.missionActive){
		if(function_name == "start"){
			draw_set_colour(c_yellow);
			draw_circle(x, y, radius, true);
		}
	}
}