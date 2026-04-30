// deal damage
other.hp -= damage;

// destroy bullet
instance_destroy();

// destroy enemy if dead
if (other.hp <= 0) {
    instance_destroy(other);
}