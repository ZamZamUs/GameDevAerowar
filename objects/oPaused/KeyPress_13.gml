switch(current_select) {
	case 1:
		current_layer_name = "Resume"
		global.paused = false
	break;
	case 2:
		current_layer_name = "Main menu"
		global.paused = true
		room_goto(Mainmenu)
		layer_set_visible("homemenu", true)
	break;
}