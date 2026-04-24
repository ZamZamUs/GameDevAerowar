function scr_bomber_behavior(_speed, _hover_spd, _hover_h) {
    
    // move left
    x += _speed;

    // hovering
    hover_timer += _hover_spd;
    y = base_y + sin(hover_timer) * _hover_h;

    // destroy when off screen
    if (x < -100) {
        instance_destroy();
    }
}