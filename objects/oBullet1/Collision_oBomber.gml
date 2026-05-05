// deal damage
other.hp -= damage;

// destroy bullet
instance_destroy();

other.hp -= 1;

// add score if heli dies
if (other.hp <= 0) {
    global.score += 40;
    with (other) instance_destroy();
}

instance_destroy(); // destroy bullet