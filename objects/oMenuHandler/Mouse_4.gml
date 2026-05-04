if(function_heading == "game"){
	if(isLoad){
		layer_set_visible("homemenu", false)
		layer_set_visible("loadgame", true)
	} else {
		room_goto(Room1)
		layer_set_visible("homemenu", false)
		layer_set_visible("loadgame", false)
	}
} else if(function_heading == "setting"){
	layer_set_visible("homemenu", false)
	layer_set_visible("settingtab", true)
} else if(function_heading == "quit"){
	game_end()
}