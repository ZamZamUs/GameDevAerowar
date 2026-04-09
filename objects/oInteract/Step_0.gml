if(show_interact)
{
	Valpha = fade(Valpha, 1, fade_speed);
	layer_text_alpha(text_id, Valpha)
} else {
	Valpha = fade(Valpha, 0, fade_speed);
	layer_text_alpha(text_id, Valpha)
}