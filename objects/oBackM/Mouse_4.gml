if(layer_name == "loadgame"){
	layer_set_visible(layer_name, false)
	layer_set_visible("homemenu", true)
} else if(layer_name == "settingtab"){
	var data = [
		{
			"movement_controll": global.movement_controll,
			"volume_config": global.volume_config
		}
	]
	scr_save_data(data, "setting.json")
	layer_set_visible(layer_name, false)
}