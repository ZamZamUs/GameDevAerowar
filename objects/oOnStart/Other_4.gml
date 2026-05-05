isLoad = file_exists("save.json")

if(isLoad){
	global.isLoad = true
	layer_text_text(layer_text_get_id(layer_id, "game"), "Load Game")
}