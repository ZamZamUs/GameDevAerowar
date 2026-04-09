if(show_interact)
{
	layer_set_visible(layer_id, true)
	Valpha = fade(Valpha, 1, fade_speed)
	layer_text_alpha(text_id, Valpha)
} else {
	Valpha = fade(Valpha, 0, fade_speed)
	layer_text_alpha(text_id, Valpha)
	layer_set_visible(layer_id, Valpha > 0)
}