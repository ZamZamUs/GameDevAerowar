if(global.snd_play){
	global.snd_play = false
	audio_sound_gain(snd_mainmenu, 0, 0)
} else {
	global.snd_play = true
	audio_sound_gain(snd_mainmenu, 1, 0)
}