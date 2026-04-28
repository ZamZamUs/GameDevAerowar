// move left
x += hsp;

// delete when off screen
if (x < -100) {
    instance_destroy();
}