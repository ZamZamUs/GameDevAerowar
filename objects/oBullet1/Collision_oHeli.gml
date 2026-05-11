other.hp -= 1;

if (other.hp <= 0)
{
    instance_create_layer(
        other.x,
        other.y,
        "Instances",
        oExplosion
    );

    // random shield drop
    if (irandom(4) == 0)
    {
        instance_create_layer(
            other.x,
            other.y,
            "Instances",
            obj_shield
        );
    }

    global.score += 72;

    with (other)
    {
        instance_destroy();
    }
}

instance_destroy();