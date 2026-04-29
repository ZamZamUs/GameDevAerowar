if(collision_circle(x, y, radius, oPlayer, false, true))
{
	if(!global.paused){
		
		global.lastXChar = oPlayer.x
		global.lastYChar = oPlayer.y
		
		if(function_name == "headquarters"){
			room_goto(Dialog)
		} else if(function_name == "start"){
			show_debug_message("Start ?")
		}
	}
}