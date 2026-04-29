interact_radius = 10

inst = noone
target_name = noone
tips = false
currentTips = 3

level = 1
point = 100
dialog = 2

show_interact = false

money = 0
upgrade = 0

if(variable_global_exists("lastXChar")){
	x = global.lastXChar
	y = global.lastYChar
	
	oCam.x = global.lastXChar
	oCam.y = global.lastYChar
}

global.paused = false	