other.hp -= 1;

// enemy dies
if (other.hp <= 0)
{
    // create explosion
    instance_create_layer(
        other.x,
        other.y,
        "Instances",
        oExplosion
    );

    global.score += 94;

    with (other)
    {
        instance_destroy();
    }
}

// destroy bullet
instance_destroy();