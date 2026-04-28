if(function_heading == "game"){
	if(isLoad){
		layer_set_visible("homemenu", false)
		layer_set_visible("loadgame", true)
	} else {
		layer_set_visible("homemenu", false)
		layer_set_visible("loadgame", false)
	}
}