// move left
x += scroll_speed;

// when fully off screen → reset
if (x <= -sprite_width) {
    x = 0;
}