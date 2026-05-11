function scr_animate_sprites(_sprites, _speed) {
    
    // increase frame
    frame += _speed;

    // loop
    if (frame >= array_length(_sprites)) {
        frame = 0;
    }

    // set sprite
    sprite_index = _sprites[floor(frame)];
}