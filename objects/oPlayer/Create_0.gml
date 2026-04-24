interact_radius = 10

inst = noone
target_name = noone
tips = false
currentTips = 3

show_interact = false

money = 0
upgrade = 0

if(variable_global_exists("lastXChar")){
	x = global.lastXChar
	y = global.lastYChar
	
	oCam.x = global.lastXCam
	oCam.y = global.lastYCam
}

global.paused = false	