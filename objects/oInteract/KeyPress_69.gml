if(collision_circle(x, y, radius, oPlayer, false, true))
{
	if(!global.paused){
		if(function_name == "headquarters"){
			room_goto(Room2)
		}
	}
}