if(function_heading == "game"){
	if(global.isLoad){
		layer_set_visible("homemenu", false)
		layer_set_visible("loadgame", true)
	} else {
		room_goto(Room1)
		var data = [{
			"level":0.0,
		    "tips":false,
		    "posX":128.0,
		    "point":0.0,
		    "posY":64.0,
		    "dialog":0.0
		}]
		global.snd_play = false
		scr_save_data(data, "save.json")
		layer_set_visible("homemenu", false)
		layer_set_visible("loadgame", false)
	}
} else if(function_heading == "setting"){
	layer_set_visible("homemenu", false)
	layer_set_visible("settingtab", true)
} else if(function_heading == "quit"){
	game_end()
}