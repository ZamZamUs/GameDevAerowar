if(show_saving_icon){
	layer_set_visible(layer_id, true)
	Palpha = fade(Palpha, 1, fade_speed);
	
	layer_text_alpha(saved_id, Palpha)
} else {
	Palpha = fade(Palpha, 0, fade_speed);
	layer_text_alpha(saved_id, Palpha)
	
	layer_set_visible(layer_id, Palpha > 0)
}