extends Sprite
var time = 0
var myAlpha 
func _ready():
	pass 


func _physics_process(delta):
	time += delta
	myAlpha  = sin(time * 1)

	modulate = Color(modulate.r, modulate.g, modulate.b, myAlpha/ 4.0) 
	
