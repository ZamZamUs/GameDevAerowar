event_inherited()

isLoad = file_exists("save.json")

if(isLoad){
	layer_text_text(layer_text_get_id(layer_id, "game"), "Load Game")
}