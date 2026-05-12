event_inherited()
loadSec = load_sequence

isClickable = false

isLoad = file_exists("save.json")
data = scr_load_data("save.json")
interactable = false

if(isLoad){
	var lenght = array_length(data)
	
	if(lenght < load_sequence){
		layer_text_blend(layer_text_get_id("loadgame", textName), #ADABB2)
		sprite_index = Lock
	} else {
		interactable = true
	}
}