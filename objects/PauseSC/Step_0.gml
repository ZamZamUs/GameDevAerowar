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