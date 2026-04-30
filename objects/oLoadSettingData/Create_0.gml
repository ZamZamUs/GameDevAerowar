if(file_exists("setting.json")){
	data = scr_load_data("setting.json")
	global.movement_controll = data[0].movement_controll
	global.volume_config = data[0].volume_config
} else {
	global.movement_controll = "WASD"
	global.volume_config = 1
}