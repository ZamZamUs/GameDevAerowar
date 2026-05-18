if(variable_global_exists("mission")){
	if(global.mission != noone){
		global.missionActive = true
	} else {
		global.missionActive = false
	}
}

if (!oPlayer.tips) {
	if (oPlayer.inst != noone and oPlayer.inst.function_name == function_name) {
	}
} else {
	if (oPlayer.inst != noone and oPlayer.inst.function_name == function_name) {
		if (oPlayer.inst.function_name == oPlayer.targetName) {
			oPlayer.currentTips += 1
		}
	}
}