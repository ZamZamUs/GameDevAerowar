global.hp += 2;

if (global.hp > global.max_hp)
{
    global.hp = global.max_hp;
}

instance_destroy();