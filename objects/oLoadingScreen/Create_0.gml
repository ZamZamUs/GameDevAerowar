layer_id = layer_get_id("loading")

bar_1 = layer_sprite_get_id(layer_id, "bar1")
bar_2 = layer_sprite_get_id(layer_id, "bar2")
bar_3 = layer_sprite_get_id(layer_id, "bar3")

logo = layer_sprite_get_id(layer_id, "logoicon")

alpha1 = 0
alpha2 = 0
alpha3 = 0

dir1 = 1
dir2 = 1
dir3 = 1

countLoading = 0
countLoops = 0
speed = 0.05

fade = function(current, target, speedto){
    if (current < target) {
        current += speedto;
        if (current > target) current = target;
    }
    else if (current > target) {
        current -= speedto;
        if (current < target) current = target;
    }
    return current;
}