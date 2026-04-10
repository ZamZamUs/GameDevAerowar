switch(current_select) {
	case 1:
		current_layer_name = "Resume"
		oPlayer.paused = false
	break;
	case 2:
		current_layer_name = "Main menu"
	break;
}

show_debug_message("Kwepurusan player " + current_layer_name)