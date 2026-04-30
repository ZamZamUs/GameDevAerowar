if(interactable){
	global.lastXChar = data[load_sequence - 1].posX
	global.lastYChar = data[load_sequence - 1].posY
	
	global.snd_play = false
	audio_stop_sound(snd_mainmenu)
	room_goto(Room1)
	layer_set_visible("loadgame", false)
}