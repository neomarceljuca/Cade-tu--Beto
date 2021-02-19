extends Sprite
var time = 0

func _ready():
	set_global_position(get_parent().get_node("BetoVerde").get_global_position())

func _process(delta):
	time += delta
	var a = sin(time)
	var b = cos(time * 1.3)
	var c = tan(time  * 1.4)
	
	modulate = Color(a, b, c, 1) 
	

func _on_BetoInteractMenu_released():
	get_parent().get_node("SomClick2").play()
	time = time + 1
