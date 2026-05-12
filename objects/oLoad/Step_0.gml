if(isLoad){
	var lenght = array_length(data)
	
	if(lenght < load_sequence){
		
		sprite_index = Lock
	} else {
		interactable = true
	}
}

if(global.jumlahSave == textName){
	interactable = true
} else {
	layer_text_blend(layer_text_get_id("loadgame", textName), #ADABB2)
	sprite_index = Lock
}