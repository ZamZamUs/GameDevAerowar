image_angle = point_direction(x, y, mouse_x, mouse_y)

var forward = 0
var strafe = 0

if(global.movement_controll == "WASD"){
	forward = keyboard_check(ord("W")) - keyboard_check(ord("S"))
	strafe  = keyboard_check(ord("A")) - keyboard_check(ord("D"))
} else {
	forward = keyboard_check(vk_up) - keyboard_check(vk_down)
	strafe  = keyboard_check(vk_left) - keyboard_check(vk_right)
}

var mx = lengthdir_x(forward * spd, image_angle) + lengthdir_x(strafe * spd, image_angle + 90)
var my = lengthdir_y(forward * spd, image_angle) + lengthdir_y(strafe * spd, image_angle + 90)

x += mx
y += my

var hit = collision_circle(x, y, radius, oPoint, false, true)
if(hit){
	oInteract.show_interact = true
	inst = hit
} else {
	oInteract.show_interact = false
}