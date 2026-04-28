layer_id = layer_get_id("homemenu")

button_id = layer_text_get_id(layer_id, function_heading)

isLoad = file_exists("save.json")
if(isLoad){
	layer_text_text(layer_text_get_id(layer_id, "game"), "Load Game")
}