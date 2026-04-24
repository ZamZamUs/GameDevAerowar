if(collision_circle(x, y, radius, oPlayer, false, true))
{
	if(!global.paused){
		
		global.lastXChar = oPlayer.x
		global.lastYChar = oPlayer.y
		
		global.lastXCam = oCam.x
		global.lastYCam = oCam.y
		
		if(function_name == "headquarters"){
			room_goto(Room2)
		}
	}
}