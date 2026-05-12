isLoad = file_exists("save.json")
data = scr_load_data("save.json")

if(isLoad){
	global.isLoad = true
	layer_text_text(layer_text_get_id(layer_id, "game"), "Load Game")
	global.jumlahSave = "level" + string(array_length(data))
	
} else  {
	global.isLoad = false
}