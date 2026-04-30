if(variable_global_exists("snd_play")){
	if(mouse_check_button_pressed(mb_left)){
		if(global.snd_play){
			sprite_index = Unsilent
		} else {
			sprite_index = Silent
		}
	}
}