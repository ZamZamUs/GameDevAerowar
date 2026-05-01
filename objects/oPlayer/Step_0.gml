image_angle = point_direction(x, y, mouse_x, mouse_y)

var h = 0
var v = 0

if(global.movement_controll == "WASD"){
	h += keyboard_check(ord("D")) - keyboard_check(ord("A"))
	v += keyboard_check(ord("S")) - keyboard_check(ord("W"))
}

var len = point_distance(0, 0, h, v)

if (len > 0) {
	h /= len
	v /= len
}

x += h * spd
y += v * spd

var hit = collision_circle(x, y, radius, oPoint, false, true)
if(hit){
	inst = hit
}