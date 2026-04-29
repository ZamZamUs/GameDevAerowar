if (countLoops >= 3 && countLoading != 4) {
    alpha1 = 1;
    alpha2 = 1;
    alpha3 = 1;
    countLoading = 4;
}

if (countLoading == 0) {
    alpha1 = fade(alpha1, 1, speed);
    if (alpha1 >= 1) countLoading = 1;
}
else if (countLoading == 1) {
    alpha2 = fade(alpha2, 1, speed);
    if (alpha2 >= 1) countLoading = 2;
}
else if (countLoading == 2) {
    alpha3 = fade(alpha3, 1, speed);
    if (alpha3 >= 1) countLoading = 3;
}
else if (countLoading == 3) {
    alpha1 = fade(alpha1, 0, speed);
    alpha2 = fade(alpha2, 0, speed);
    alpha3 = fade(alpha3, 0, speed);

    if (alpha1 <= 0 && alpha2 <= 0 && alpha3 <= 0) {
        countLoading = 0;
        countLoops += 1;
    }
}
else if (countLoading == 4) {
    alpha1 = fade(alpha1, 0, speed);
    alpha2 = fade(alpha2, 0, speed);
    alpha3 = fade(alpha3, 0, speed);

    if (alpha1 <= 0 && alpha2 <= 0 && alpha3 <= 0) {
        layer_set_visible(layer_id, false);
		layer_set_visible("homemenu", true)
		audio_play_sound(snd_mainmenu, 5, true)
        exit;
    }
}

layer_sprite_alpha(bar_1, alpha1);
layer_sprite_alpha(bar_2, alpha2);
layer_sprite_alpha(bar_3, alpha3);