// gerak ke kanan
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// hapus kalau keluar layar
if (x > room_width)
{
    instance_destroy();
}