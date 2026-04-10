with(oMenuHandler){
	if(!Home_screen){
		if(keyboard_check_pressed(vk_down)) {
			if(current_select < 2) {
				current_select += 1;
			} else {
				current_select = 1;
			}
			show_debug_message(current_select);
			show_debug_message(layer_id);
		}

		if(keyboard_check_pressed(vk_up)) {
			if(current_select > 1) {
				current_select -= 1;
			} else {
				current_select = 2;
			}
			show_debug_message(current_select);
			show_debug_message(layer_id);
		}

		switch(current_select) {
			case 1:
				layer_text_blend(resume_button_id, c_yellow)
				layer_text_blend(menu_button_id, c_white)
			break;
			case 2:
				layer_text_blend(resume_button_id, c_white)
				layer_text_blend(menu_button_id, c_yellow)
			break;
		}

		if(oPlayer.paused){
			layer_set_visible(layer_id, true)
			Palpha = fade(Palpha, 0.8, fade_speed);
	
			for (var i = 0; i < array_length(ui_text); i++) {
				layer_sprite_alpha(ui_text[i], Palpha);
			}
	
			for (var i = 0; i < array_length(ui_sprites); i++) {
				layer_sprite_alpha(ui_sprites[i], Palpha);
			}
		} else {
			Palpha = fade(Palpha, 0, fade_speed);
	
			for (var i = 0; i < array_length(ui_sprites); i++) {
				layer_sprite_alpha(ui_sprites[i], Palpha);
			}
	
			for (var i = 0; i < array_length(ui_text); i++) {
				layer_sprite_alpha(ui_text[i], Palpha);
			}
			layer_set_visible(layer_id, Palpha > 0)
		}
	}
}