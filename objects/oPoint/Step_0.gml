if (!oPlayer.tips) {
	if (oPlayer.inst != noone and oPlayer.inst.function_name == function_name) {
		show_debug_message("Bebas : " + function_name);
	}
} else {
	if (oPlayer.inst != noone and oPlayer.inst.function_name == function_name) {
		if (oPlayer.inst.function_name == oPlayer.targetName) {
			show_debug_message(oPlayer.targetName)
			oPlayer.currentTips += 1
		}
	}
}