switch(iconType){
	case 1:
		iconType = 2
		audio_stop_sound(snd_mainmenu)
		sprite_index = Silent
		break
	case 2:
		iconType = 1
		audio_play_sound(snd_mainmenu, 5, true)
		sprite_index = Unsilent
}